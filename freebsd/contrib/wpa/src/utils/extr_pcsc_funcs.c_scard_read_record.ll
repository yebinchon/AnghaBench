; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_read_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_read_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scard_data = type { i64 }

@SIM_CMD_READ_RECORD = common dso_local global i8 0, align 1
@SCARD_USIM = common dso_local global i64 0, align 8
@USIM_CLA = common dso_local global i8 0, align 1
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"SCARD: record read returned unexpected length %ld (expected %ld)\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"SCARD: record read returned unexpected status %02x %02x (expected 90 00)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scard_data*, i8*, i64, i8, i8)* @scard_read_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scard_read_record(%struct.scard_data* %0, i8* %1, i64 %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scard_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [5 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.scard_data* %0, %struct.scard_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %17 = load i8, i8* @SIM_CMD_READ_RECORD, align 1
  store i8 %17, i8* %16, align 1
  %18 = getelementptr inbounds i8, i8* %16, i64 1
  %19 = getelementptr inbounds i8, i8* %16, i64 5
  br label %20

20:                                               ; preds = %20, %5
  %21 = phi i8* [ %18, %5 ], [ %22, %20 ]
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = icmp eq i8* %22, %19
  br i1 %23, label %24, label %20

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 3
  store i64 %26, i64* %13, align 8
  %27 = load %struct.scard_data*, %struct.scard_data** %7, align 8
  %28 = getelementptr inbounds %struct.scard_data, %struct.scard_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SCARD_USIM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i8, i8* @USIM_CLA, align 1
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i8, i8* %10, align 1
  %37 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 2
  store i8 %36, i8* %37, align 1
  %38 = load i8, i8* %11, align 1
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 3
  store i8 %38, i8* %39, align 1
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 4
  store i8 %41, i8* %42, align 1
  %43 = load i64, i64* %13, align 8
  %44 = call i8* @os_malloc(i64 %43)
  store i8* %44, i8** %14, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %110

48:                                               ; preds = %35
  %49 = load %struct.scard_data*, %struct.scard_data** %7, align 8
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %51 = load i8*, i8** %14, align 8
  %52 = call i64 @scard_transmit(%struct.scard_data* %49, i8* %50, i32 5, i8* %51, i64* %13)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @os_free(i8* %57)
  store i32 -2, i32* %6, align 4
  br label %110

59:                                               ; preds = %48
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 2
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load i64, i64* %13, align 8
  %67 = trunc i64 %66 to i8
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 2
  %70 = trunc i64 %69 to i8
  %71 = call i32 @wpa_printf(i32 %65, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8 zeroext %67, i8 zeroext %70)
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @os_free(i8* %72)
  store i32 -3, i32* %6, align 4
  br label %110

74:                                               ; preds = %59
  %75 = load i8*, i8** %14, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %79, 144
  br i1 %80, label %89, label %81

81:                                               ; preds = %74
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %81, %74
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %14, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @wpa_printf(i32 %90, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %94, i8 zeroext %99)
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @os_free(i8* %101)
  store i32 -4, i32* %6, align 4
  br label %110

103:                                              ; preds = %81
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @os_memcpy(i8* %104, i8* %105, i64 %106)
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @os_free(i8* %108)
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %103, %89, %64, %56, %47
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i64 @scard_transmit(%struct.scard_data*, i8*, i32, i8*, i64*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
