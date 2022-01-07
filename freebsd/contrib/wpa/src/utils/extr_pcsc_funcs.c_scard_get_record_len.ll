; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_get_record_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_get_record_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scard_data = type { i64 }

@SIM_CMD_READ_RECORD = common dso_local global i8 0, align 1
@SCARD_USIM = common dso_local global i64 0, align 8
@USIM_CLA = common dso_local global i8 0, align 1
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"SCARD: failed to determine file length for record %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"SCARD: file length determination response\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"SCARD: unexpected response to file length determination\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scard_data*, i8, i8)* @scard_get_record_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scard_get_record_len(%struct.scard_data* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scard_data*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [255 x i8], align 16
  %9 = alloca [5 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.scard_data* %0, %struct.scard_data** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %12 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %13 = load i8, i8* @SIM_CMD_READ_RECORD, align 1
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds i8, i8* %12, i64 1
  %15 = getelementptr inbounds i8, i8* %12, i64 5
  br label %16

16:                                               ; preds = %16, %3
  %17 = phi i8* [ %14, %3 ], [ %18, %16 ]
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = icmp eq i8* %18, %15
  br i1 %19, label %20, label %16

20:                                               ; preds = %16
  %21 = load %struct.scard_data*, %struct.scard_data** %5, align 8
  %22 = getelementptr inbounds %struct.scard_data, %struct.scard_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SCARD_USIM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8, i8* @USIM_CLA, align 1
  %28 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %27, i8* %28, align 1
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i8, i8* %6, align 1
  %31 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 %30, i8* %31, align 1
  %32 = load i8, i8* %7, align 1
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 4
  store i8 -1, i8* %34, align 1
  store i64 255, i64* %10, align 8
  %35 = load %struct.scard_data*, %struct.scard_data** %5, align 8
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %37 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %38 = call i64 @scard_transmit(%struct.scard_data* %35, i8* %36, i32 5, i8* %37, i64* %10)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %29
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %4, align 4
  br label %71

47:                                               ; preds = %29
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @wpa_hexdump(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %49, i64 %50)
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %52, 2
  br i1 %53, label %64, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 108
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %61 = load i8, i8* %60, align 16
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 103
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %47
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %71

67:                                               ; preds = %59, %54
  %68 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %64, %42
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @scard_transmit(%struct.scard_data*, i8*, i32, i8*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
