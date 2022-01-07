; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/aarch64/sys/extr___vdso_gettc.c___vdso_gettc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/aarch64/sys/extr___vdso_gettc.c___vdso_gettc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdso_timehands = type { i64, i64 }

@VDSO_TH_ALGO_ARM_GENTIM = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vdso_gettc(%struct.vdso_timehands* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vdso_timehands*, align 8
  %5 = alloca i32*, align 8
  store %struct.vdso_timehands* %0, %struct.vdso_timehands** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.vdso_timehands*, %struct.vdso_timehands** %4, align 8
  %7 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VDSO_TH_ALGO_ARM_GENTIM, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOSYS, align 4
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  call void asm sideeffect "isb", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %14 = load %struct.vdso_timehands*, %struct.vdso_timehands** %4, align 8
  %15 = getelementptr inbounds %struct.vdso_timehands, %struct.vdso_timehands* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 (...) @cp15_cntvct_get()
  br label %22

20:                                               ; preds = %13
  %21 = call i32 (...) @cp15_cntpct_get()
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @cp15_cntvct_get(...) #1

declare dso_local i32 @cp15_cntpct_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 483}
