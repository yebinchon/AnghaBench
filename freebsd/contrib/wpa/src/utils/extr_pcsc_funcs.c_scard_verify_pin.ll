; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_verify_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_pcsc_funcs.c_scard_verify_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scard_data = type { i64 }

@SIM_CMD_VERIFY_CHV1 = common dso_local global i8 0, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SCARD: verifying PIN\00", align 1
@SCARD_USIM = common dso_local global i64 0, align 8
@USIM_CLA = common dso_local global i8 0, align 1
@SCARD_S_SUCCESS = common dso_local global i64 0, align 8
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SCARD: PIN verification failed\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"SCARD: PIN verified successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scard_data*, i8*)* @scard_verify_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scard_verify_pin(%struct.scard_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scard_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca [13 x i8], align 1
  %9 = alloca i64, align 8
  store %struct.scard_data* %0, %struct.scard_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %11 = load i8, i8* @SIM_CMD_VERIFY_CHV1, align 1
  store i8 %11, i8* %10, align 1
  %12 = getelementptr inbounds i8, i8* %10, i64 1
  %13 = getelementptr inbounds i8, i8* %10, i64 13
  br label %14

14:                                               ; preds = %14, %2
  %15 = phi i8* [ %12, %2 ], [ %16, %14 ]
  store i8 0, i8* %15, align 1
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = icmp eq i8* %16, %13
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %5, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @os_strlen(i8* %24)
  %26 = icmp sgt i32 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  store i32 -1, i32* %3, align 4
  br label %81

28:                                               ; preds = %23
  %29 = load %struct.scard_data*, %struct.scard_data** %4, align 8
  %30 = getelementptr inbounds %struct.scard_data, %struct.scard_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SCARD_USIM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8, i8* @USIM_CLA, align 1
  %36 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  store i8 %35, i8* %36, align 1
  br label %37

37:                                               ; preds = %34, %28
  %38 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @os_strlen(i8* %41)
  %43 = call i32 @os_memcpy(i8* %39, i8* %40, i32 %42)
  %44 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 5
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @os_strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @os_strlen(i8* %50)
  %52 = sub nsw i32 8, %51
  %53 = call i32 @os_memset(i8* %49, i32 255, i32 %52)
  store i64 3, i64* %9, align 8
  %54 = load %struct.scard_data*, %struct.scard_data** %4, align 8
  %55 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %57 = call i64 @scard_transmit(%struct.scard_data* %54, i8* %55, i32 13, i8* %56, i64* %9)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @SCARD_S_SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %37
  store i32 -2, i32* %3, align 4
  br label %81

62:                                               ; preds = %37
  %63 = load i64, i64* %9, align 8
  %64 = icmp ne i64 %63, 2
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 144
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %65, %62
  %76 = load i32, i32* @MSG_WARNING, align 4
  %77 = call i32 @wpa_printf(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 @wpa_printf(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %75, %61, %27
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i64 @scard_transmit(%struct.scard_data*, i8*, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
