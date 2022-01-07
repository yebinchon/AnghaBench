; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuinit_bsp2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuinit_bsp2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_xsave = common dso_local global i64 0, align 8
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@cpu_feature2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fpuinit_bsp2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpuinit_bsp2() #0 {
  %1 = alloca [4 x i8*], align 16
  %2 = load i64, i64* @use_xsave, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %6 = call i32 @cpuid_count(i32 13, i32 0, i8** %5)
  %7 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 1
  %8 = load i8*, i8** %7, align 8
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* @cpu_max_ext_state_size, align 4
  %10 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 0
  %11 = call i32 @do_cpuid(i32 1, i8** %10)
  %12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %1, i64 0, i64 2
  %13 = load i8*, i8** %12, align 16
  store i8* %13, i8** @cpu_feature2, align 8
  br label %15

14:                                               ; preds = %0
  store i32 4, i32* @cpu_max_ext_state_size, align 4
  br label %15

15:                                               ; preds = %14, %4
  ret void
}

declare dso_local i32 @cpuid_count(i32, i32, i8**) #1

declare dso_local i32 @do_cpuid(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
