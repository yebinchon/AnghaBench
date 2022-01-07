; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_TNC_TNCC_ReportMessageTypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_TNC_TNCC_ReportMessageTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imc = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"TNC: TNC_TNCC_ReportMessageTypes(imcID=%lu typeCount=%lu)\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"TNC: supportedTypes[%lu] = %lu\00", align 1
@TNC_MAX_IMC_ID = common dso_local global i64 0, align 8
@tnc_imc = common dso_local global %struct.tnc_if_imc** null, align 8
@TNC_RESULT_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TNC_RESULT_FATAL = common dso_local global i32 0, align 4
@TNC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64)* @TNC_TNCC_ReportMessageTypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TNC_TNCC_ReportMessageTypes(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tnc_if_imc*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12)
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %20, i64 %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  br label %14

29:                                               ; preds = %14
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @TNC_MAX_IMC_ID, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.tnc_if_imc**, %struct.tnc_if_imc*** @tnc_imc, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.tnc_if_imc*, %struct.tnc_if_imc** %34, i64 %35
  %37 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %36, align 8
  %38 = icmp eq %struct.tnc_if_imc* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33, %29
  %40 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %33
  %42 = load %struct.tnc_if_imc**, %struct.tnc_if_imc*** @tnc_imc, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.tnc_if_imc*, %struct.tnc_if_imc** %42, i64 %43
  %45 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %44, align 8
  store %struct.tnc_if_imc* %45, %struct.tnc_if_imc** %9, align 8
  %46 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %47 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @os_free(i32* %48)
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = mul i64 %51, 4
  %53 = call i32* @os_memdup(i64* %50, i64 %52)
  %54 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %55 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %57 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %41
  %61 = load i32, i32* @TNC_RESULT_FATAL, align 4
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %41
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %9, align 8
  %65 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @TNC_RESULT_SUCCESS, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %62, %60, %39
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_memdup(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
