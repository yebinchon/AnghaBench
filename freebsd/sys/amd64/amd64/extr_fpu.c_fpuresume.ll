; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuresume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_xsave = common dso_local global i64 0, align 8
@XCR0 = common dso_local global i32 0, align 4
@xsave_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpuresume(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @rcr0()
  store i32 %4, i32* %3, align 4
  %5 = call i32 (...) @stop_emulating()
  %6 = call i32 (...) @fninit()
  %7 = load i64, i64* @use_xsave, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @XCR0, align 4
  %11 = load i32, i32* @xsave_mask, align 4
  %12 = call i32 @load_xcr(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @fpurestore(i8* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @load_cr0(i32 %16)
  ret void
}

declare dso_local i32 @rcr0(...) #1

declare dso_local i32 @stop_emulating(...) #1

declare dso_local i32 @fninit(...) #1

declare dso_local i32 @load_xcr(i32, i32) #1

declare dso_local i32 @fpurestore(i8*) #1

declare dso_local i32 @load_cr0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
