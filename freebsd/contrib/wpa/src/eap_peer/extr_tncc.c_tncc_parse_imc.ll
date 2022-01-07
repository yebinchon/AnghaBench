; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_parse_imc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_parse_imc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imc = type { i32, i8*, %struct.tnc_if_imc* }

@TNC_MAX_IMC_ID = common dso_local global i32 0, align 4
@tnc_imc = common dso_local global %struct.tnc_if_imc** null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"TNC: Too many IMCs\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TNC: Configured IMC: %s\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"TNC: Ignoring invalid IMC line '%s' (no starting quotation mark)\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"TNC: Ignoring invalid IMC line '%s' (no ending quotation mark)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"TNC: Name: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"TNC: Ignoring invalid IMC line '%s' (no space after name)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"TNC: IMC file: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tnc_if_imc* (i8*, i8*, i32*)* @tncc_parse_imc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tnc_if_imc* @tncc_parse_imc(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.tnc_if_imc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tnc_if_imc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %25, %3
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @TNC_MAX_IMC_ID, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.tnc_if_imc**, %struct.tnc_if_imc*** @tnc_imc, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tnc_if_imc*, %struct.tnc_if_imc** %17, i64 %19
  %21 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %20, align 8
  %22 = icmp eq %struct.tnc_if_imc* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @TNC_MAX_IMC_ID, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.tnc_if_imc* null, %struct.tnc_if_imc** %4, align 8
  br label %140

35:                                               ; preds = %28
  %36 = call %struct.tnc_if_imc* @os_zalloc(i32 24)
  store %struct.tnc_if_imc* %36, %struct.tnc_if_imc** %8, align 8
  %37 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %38 = icmp eq %struct.tnc_if_imc* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  store i32 1, i32* %40, align 4
  store %struct.tnc_if_imc* null, %struct.tnc_if_imc** %4, align 8
  br label %140

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %44 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %5, align 8
  store i8* %45, i8** %9, align 8
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8*, i8** %6, align 8
  %52 = icmp uge i8* %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %41
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 34
  br i1 %57, label %58, label %64

58:                                               ; preds = %53, %41
  %59 = load i32, i32* @MSG_ERROR, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %63 = call i32 @os_free(%struct.tnc_if_imc* %62)
  store %struct.tnc_if_imc* null, %struct.tnc_if_imc** %4, align 8
  br label %140

64:                                               ; preds = %53
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  store i8* %67, i8** %10, align 8
  br label %68

68:                                               ; preds = %79, %64
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = icmp ult i8* %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 34
  br label %77

77:                                               ; preds = %72, %68
  %78 = phi i1 [ false, %68 ], [ %76, %72 ]
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %10, align 8
  br label %68

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = icmp uge i8* %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* @MSG_ERROR, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  %90 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %91 = call i32 @os_free(%struct.tnc_if_imc* %90)
  store %struct.tnc_if_imc* null, %struct.tnc_if_imc** %4, align 8
  br label %140

92:                                               ; preds = %82
  %93 = load i8*, i8** %10, align 8
  store i8 0, i8* %93, align 1
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  %97 = load i8*, i8** %9, align 8
  %98 = call i8* @os_strdup(i8* %97)
  %99 = bitcast i8* %98 to %struct.tnc_if_imc*
  %100 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %101 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %100, i32 0, i32 2
  store %struct.tnc_if_imc* %99, %struct.tnc_if_imc** %101, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %103, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = icmp uge i8* %104, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %92
  %108 = load i8*, i8** %9, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 32
  br i1 %111, label %112, label %122

112:                                              ; preds = %107, %92
  %113 = load i32, i32* @MSG_ERROR, align 4
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %117 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %116, i32 0, i32 2
  %118 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %117, align 8
  %119 = call i32 @os_free(%struct.tnc_if_imc* %118)
  %120 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %121 = call i32 @os_free(%struct.tnc_if_imc* %120)
  store %struct.tnc_if_imc* null, %struct.tnc_if_imc** %4, align 8
  br label %140

122:                                              ; preds = %107
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %9, align 8
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 (i32, i8*, ...) @wpa_printf(i32 %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %126)
  %128 = load i8*, i8** %9, align 8
  %129 = call i8* @os_strdup(i8* %128)
  %130 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %131 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %133 = load %struct.tnc_if_imc**, %struct.tnc_if_imc*** @tnc_imc, align 8
  %134 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  %135 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.tnc_if_imc*, %struct.tnc_if_imc** %133, i64 %137
  store %struct.tnc_if_imc* %132, %struct.tnc_if_imc** %138, align 8
  %139 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %8, align 8
  store %struct.tnc_if_imc* %139, %struct.tnc_if_imc** %4, align 8
  br label %140

140:                                              ; preds = %122, %112, %86, %58, %39, %32
  %141 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %4, align 8
  ret %struct.tnc_if_imc* %141
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.tnc_if_imc* @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.tnc_if_imc*) #1

declare dso_local i8* @os_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
