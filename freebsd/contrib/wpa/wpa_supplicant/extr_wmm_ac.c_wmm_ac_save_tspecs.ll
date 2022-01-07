; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_save_tspecs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_save_tspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32***, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WMM AC: Save last configured tspecs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"WMM AC: No configured TSPECs\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"WMM AC: Saving tspecs\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"WMM AC: Failed to save tspecs!\00", align 1
@WMM_AC_NUM = common dso_local global i32 0, align 4
@TS_DIR_IDX_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"WMM AC: Successfully saved %d TSPECs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wmm_ac_save_tspecs(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = call i32 (i32, i8*, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %96

13:                                               ; preds = %1
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %15 = call i32 @wmm_ac_get_tspecs_count(%struct.wpa_supplicant* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %96

21:                                               ; preds = %13
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %25 = call i32 @wmm_ac_clear_saved_tspecs(%struct.wpa_supplicant* %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @os_calloc(i32 %26, i32 4)
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @MSG_ERROR, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %96

37:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %87, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @WMM_AC_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @TS_DIR_IDX_COUNT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 1
  %50 = load i32***, i32**** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32**, i32*** %50, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  br label %83

61:                                               ; preds = %47
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 1
  %64 = load i32***, i32**** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32**, i32*** %64, i64 %66
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32 %73, i32* %82, align 4
  br label %83

83:                                               ; preds = %61, %60
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %43

86:                                               ; preds = %43
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %38

90:                                               ; preds = %38
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %34, %18, %12
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wmm_ac_get_tspecs_count(%struct.wpa_supplicant*) #1

declare dso_local i32 @wmm_ac_clear_saved_tspecs(%struct.wpa_supplicant*) #1

declare dso_local i32* @os_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
