; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_get_diag_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_get_diag_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8* }
%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_10__, i8*, %struct.TYPE_6__, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ar9300_ani_state = type opaque

@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global i8* null, align 8
@HAL_ANI_ALL = common dso_local global i32 0, align 4
@pe = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_get_diag_state(%struct.ath_hal* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ath_hal_9300*, align 8
  %15 = alloca %struct.ar9300_ani_state*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %17 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %16)
  store %struct.ath_hal_9300* %17, %struct.ath_hal_9300** %14, align 8
  %18 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %14, align 8
  %19 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i8**, i8*** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i64 @ath_hal_getdiagstate(%struct.ath_hal* %19, i32 %20, i8* %21, i32 %22, i8** %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @AH_TRUE, align 4
  store i32 %28, i32* %7, align 4
  br label %36

29:                                               ; preds = %6
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %33 [
    i32 137, label %31
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @AH_TRUE, align 4
  store i32 %32, i32* %7, align 4
  br label %36

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* @AH_FALSE, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %34, %31, %27
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i64 @ath_hal_getdiagstate(%struct.ath_hal*, i32, i8*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
