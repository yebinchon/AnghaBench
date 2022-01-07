; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_print_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_print_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_params = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Relative addr: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Card features: <\00", align 1
@CARD_FEATURE_MMC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"MMC \00", align 1
@CARD_FEATURE_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Memory \00", align 1
@CARD_FEATURE_SDHC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"High-Capacity \00", align 1
@CARD_FEATURE_SD20 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"SD2.0-Conditions \00", align 1
@CARD_FEATURE_SDIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"SDIO \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Card memory OCR: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Card IO OCR: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Number of funcitions: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_print_ident(%struct.mmc_params* %0) #0 {
  %2 = alloca %struct.mmc_params*, align 8
  store %struct.mmc_params* %0, %struct.mmc_params** %2, align 8
  %3 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %4 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %9 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CARD_FEATURE_MMC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %18 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CARD_FEATURE_MEMORY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %16
  %26 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CARD_FEATURE_SDHC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  %35 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %36 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CARD_FEATURE_SD20, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  %44 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %45 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CARD_FEATURE_SDIO, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %54 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %55 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @CARD_FEATURE_MEMORY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %62 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %52
  %66 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %67 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @CARD_FEATURE_SDIO, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %74 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load %struct.mmc_params*, %struct.mmc_params** %2, align 8
  %78 = getelementptr inbounds %struct.mmc_params, %struct.mmc_params* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %72, %65
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
