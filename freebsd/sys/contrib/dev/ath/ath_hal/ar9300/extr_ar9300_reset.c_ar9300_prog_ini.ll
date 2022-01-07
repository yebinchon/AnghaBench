; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_prog_ini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_prog_ini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ar9300_ini_array = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, %struct.ar9300_ini_array*, i32)* @ar9300_prog_ini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_prog_ini(%struct.ath_hal* %0, %struct.ar9300_ini_array* %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca %struct.ar9300_ini_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store %struct.ar9300_ini_array* %1, %struct.ar9300_ini_array** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.ar9300_ini_array*, %struct.ar9300_ini_array** %5, align 8
  %12 = getelementptr inbounds %struct.ar9300_ini_array, %struct.ar9300_ini_array* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ar9300_ini_array*, %struct.ar9300_ini_array** %5, align 8
  %19 = getelementptr inbounds %struct.ar9300_ini_array, %struct.ar9300_ini_array* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %16
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %44, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ar9300_ini_array*, %struct.ar9300_ini_array** %5, align 8
  %27 = getelementptr inbounds %struct.ar9300_ini_array, %struct.ar9300_ini_array* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load %struct.ar9300_ini_array*, %struct.ar9300_ini_array** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @INI_RA(%struct.ar9300_ini_array* %31, i32 %32, i32 0)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ar9300_ini_array*, %struct.ar9300_ini_array** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @INI_RA(%struct.ar9300_ini_array* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @OS_REG_WRITE(%struct.ath_hal* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @WAR_6773(i32 %42)
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %24

47:                                               ; preds = %15, %24
  ret void
}

declare dso_local i32 @INI_RA(%struct.ar9300_ini_array*, i32, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @WAR_6773(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
