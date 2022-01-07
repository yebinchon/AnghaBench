; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_standalone.c_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_standalone.c_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@PUSH_FRAME_PTR = common dso_local global i32 0, align 4
@saved_regs = common dso_local global i32 0, align 4
@POP_REGISTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resume() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @NUM_REGS, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i32, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  %8 = load i32, i32* @PUSH_FRAME_PTR, align 4
  %9 = call i32 (...) @save_frame_pointer()
  %10 = load i32, i32* @saved_regs, align 4
  %11 = mul nuw i64 4, %5
  %12 = trunc i64 %11 to i32
  %13 = call i32 @memcpy(i32* %7, i32 %10, i32 %12)
  %14 = load i32, i32* @POP_REGISTERS, align 4
  %15 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %15)
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @save_frame_pointer(...) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
