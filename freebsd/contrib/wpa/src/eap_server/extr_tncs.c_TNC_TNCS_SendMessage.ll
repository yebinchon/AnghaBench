; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_TNC_TNCS_SendMessage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_TNC_TNCS_SendMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"TNC: TNC_TNCS_SendMessage(imvID=%lu connectionID=%lu messageType=%lu)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"TNC: TNC_TNCS_SendMessage\00", align 1
@TNC_RESULT_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TNC_RESULT_FATAL = common dso_local global i32 0, align 4
@TNC_RESULT_OTHER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"<IMC-IMV-Message><Type>%08X</Type><Base64>%s</Base64></IMC-IMV-Message>\00", align 1
@TNC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32, i64)* @TNC_TNCS_SendMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TNC_TNCS_SendMessage(i64 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.tncs_data*, align 8
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
  %25 = call i32* @tncs_get_imv(i64 %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %28, i32* %6, align 4
  br label %103

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.tncs_data* @tncs_get_conn(i32 %30)
  store %struct.tncs_data* %31, %struct.tncs_data** %12, align 8
  %32 = load %struct.tncs_data*, %struct.tncs_data** %12, align 8
  %33 = icmp eq %struct.tncs_data* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @TNC_RESULT_INVALID_PARAMETER, align 4
  store i32 %35, i32* %6, align 4
  br label %103

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i8* @base64_encode(i32 %37, i32 %38, i64* %14)
  store i8* %39, i8** %13, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @TNC_RESULT_FATAL, align 4
  store i32 %43, i32* %6, align 4
  br label %103

44:                                               ; preds = %36
  %45 = load %struct.tncs_data*, %struct.tncs_data** %12, align 8
  %46 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @os_free(i8* %51)
  %53 = load %struct.tncs_data*, %struct.tncs_data** %12, align 8
  %54 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %14, align 8
  %60 = add i64 %59, 100
  %61 = call i8* @os_zalloc(i64 %60)
  %62 = load %struct.tncs_data*, %struct.tncs_data** %12, align 8
  %63 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %61, i8** %67, align 8
  %68 = load %struct.tncs_data*, %struct.tncs_data** %12, align 8
  %69 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %44
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @os_free(i8* %77)
  %79 = load i32, i32* @TNC_RESULT_OTHER, align 4
  store i32 %79, i32* %6, align 4
  br label %103

80:                                               ; preds = %44
  %81 = load %struct.tncs_data*, %struct.tncs_data** %12, align 8
  %82 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %14, align 8
  %89 = add i64 %88, 100
  %90 = load i64, i64* %11, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i8*, i8** %13, align 8
  %93 = call i64 @os_snprintf(i8* %87, i64 %89, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %91, i8* %92)
  %94 = load %struct.tncs_data*, %struct.tncs_data** %12, align 8
  %95 = getelementptr inbounds %struct.tncs_data, %struct.tncs_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i64 %93, i64* %99, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @os_free(i8* %100)
  %102 = load i32, i32* @TNC_RESULT_SUCCESS, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %80, %76, %42, %34, %27
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i32, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32* @tncs_get_imv(i64) #1

declare dso_local %struct.tncs_data* @tncs_get_conn(i32) #1

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
