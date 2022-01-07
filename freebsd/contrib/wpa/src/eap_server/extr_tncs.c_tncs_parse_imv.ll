; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_parse_imv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_parse_imv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imv = type { i32, i8*, i8* }

@TNC_MAX_IMV_ID = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TNC: Too many IMVs\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TNC: Configured IMV: %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"TNC: Ignoring invalid IMV line '%s' (no starting quotation mark)\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"TNC: Ignoring invalid IMV line '%s' (no ending quotation mark)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"TNC: Name: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"TNC: Ignoring invalid IMV line '%s' (no space after name)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"TNC: IMV file: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tnc_if_imv* (i32, i8*, i8*, i32*)* @tncs_parse_imv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tnc_if_imv* @tncs_parse_imv(i32 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.tnc_if_imv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tnc_if_imv*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TNC_MAX_IMV_ID, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** %5, align 8
  br label %112

19:                                               ; preds = %4
  %20 = call %struct.tnc_if_imv* @os_zalloc(i32 24)
  store %struct.tnc_if_imv* %20, %struct.tnc_if_imv** %10, align 8
  %21 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %22 = icmp eq %struct.tnc_if_imv* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32*, i32** %9, align 8
  store i32 1, i32* %24, align 4
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** %5, align 8
  br label %112

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %28 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %11, align 8
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8*, i8** %8, align 8
  %36 = icmp uge i8* %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %25
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 34
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %25
  %43 = load i32, i32* @MSG_ERROR, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %47 = call i32 @os_free(%struct.tnc_if_imv* %46)
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** %5, align 8
  br label %112

48:                                               ; preds = %37
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %63, %48
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 34
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ]
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %12, align 8
  br label %52

66:                                               ; preds = %61
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = icmp uge i8* %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @MSG_ERROR, align 4
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  %74 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %75 = call i32 @os_free(%struct.tnc_if_imv* %74)
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** %5, align 8
  br label %112

76:                                               ; preds = %66
  %77 = load i8*, i8** %12, align 8
  store i8 0, i8* %77, align 1
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** %11, align 8
  %82 = call i8* @os_strdup(i8* %81)
  %83 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %84 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %11, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp uge i8* %87, %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %76
  %91 = load i8*, i8** %11, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 32
  br i1 %94, label %95, label %101

95:                                               ; preds = %90, %76
  %96 = load i32, i32* @MSG_ERROR, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  %99 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %100 = call i32 @os_free(%struct.tnc_if_imv* %99)
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** %5, align 8
  br label %112

101:                                              ; preds = %90
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %11, align 8
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %105)
  %107 = load i8*, i8** %11, align 8
  %108 = call i8* @os_strdup(i8* %107)
  %109 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %110 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  store %struct.tnc_if_imv* %111, %struct.tnc_if_imv** %5, align 8
  br label %112

112:                                              ; preds = %101, %95, %70, %42, %23, %16
  %113 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  ret %struct.tnc_if_imv* %113
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.tnc_if_imv* @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.tnc_if_imv*) #1

declare dso_local i8* @os_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
