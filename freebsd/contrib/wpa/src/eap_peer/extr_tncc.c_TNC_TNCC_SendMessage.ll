; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_TNC_TNCC_SendMessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_TNC_TNCC_SendMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imc = type { i8*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"TNC: TNC_TNCC_SendMessage(imcID=%lu connectionID=%lu messageType=%lu)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"TNC: TNC_TNCC_SendMessage\00", align 1
@TNC_MAX_IMC_ID = common dso_local global i64 0, align 8
@tnc_imc = common dso_local global %struct.tnc_if_imc** null, align 8
@TNC_RESULT_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TNC_RESULT_FATAL = common dso_local global i32 0, align 4
@TNC_RESULT_OTHER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"<IMC-IMV-Message><Type>%08X</Type><Base64>%s</Base64></IMC-IMV-Message>\00", align 1
@TNC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32, i64)* @TNC_TNCC_SendMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TNC_TNCC_SendMessage(i64 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tnc_if_imc*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17, i64 %18)
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @wpa_hexdump_ascii(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @TNC_MAX_IMC_ID, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %5
  %28 = load %struct.tnc_if_imc**, %struct.tnc_if_imc*** @tnc_imc, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.tnc_if_imc*, %struct.tnc_if_imc** %28, i64 %29
  %31 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %30, align 8
  %32 = icmp eq %struct.tnc_if_imc* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %5
  %34 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %34, i32* %6, align 4
  br label %82

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @base64_encode(i32 %36, i32 %37, i64* %14)
  store i8* %38, i8** %13, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @TNC_RESULT_FATAL, align 4
  store i32 %42, i32* %6, align 4
  br label %82

43:                                               ; preds = %35
  %44 = load %struct.tnc_if_imc**, %struct.tnc_if_imc*** @tnc_imc, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.tnc_if_imc*, %struct.tnc_if_imc** %44, i64 %45
  %47 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %46, align 8
  store %struct.tnc_if_imc* %47, %struct.tnc_if_imc** %12, align 8
  %48 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %12, align 8
  %49 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @os_free(i8* %50)
  %52 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %12, align 8
  %53 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, 100
  %56 = call i8* @os_zalloc(i64 %55)
  %57 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %12, align 8
  %58 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %12, align 8
  %60 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %43
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @os_free(i8* %64)
  %66 = load i32, i32* @TNC_RESULT_OTHER, align 4
  store i32 %66, i32* %6, align 4
  br label %82

67:                                               ; preds = %43
  %68 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %12, align 8
  %69 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, 100
  %73 = load i64, i64* %11, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i8*, i8** %13, align 8
  %76 = call i64 @os_snprintf(i8* %70, i64 %72, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %74, i8* %75)
  %77 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %12, align 8
  %78 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @os_free(i8* %79)
  %81 = load i32, i32* @TNC_RESULT_SUCCESS, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %67, %63, %41, %33
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i32, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i8* @base64_encode(i32, i32, i64*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_zalloc(i64) #1

declare dso_local i64 @os_snprintf(i8*, i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
