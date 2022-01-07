; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_getKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_leap.c_eap_leap_getKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_leap_data = type { i64, i32*, i32*, i32*, i32* }

@LEAP_DONE = common dso_local global i64 0, align 8
@LEAP_KEY_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-LEAP: pw_hash_hash\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"EAP-LEAP: peer_challenge\00", align 1
@LEAP_CHALLENGE_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"EAP-LEAP: peer_response\00", align 1
@LEAP_RESPONSE_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"EAP-LEAP: ap_challenge\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"EAP-LEAP: ap_response\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"EAP-LEAP: master key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_leap_getKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_leap_getKey(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_leap_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca [16 x i32], align 16
  %12 = alloca [5 x i32*], align 16
  %13 = alloca i32*, align 8
  %14 = alloca [5 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.eap_leap_data*
  store %struct.eap_leap_data* %18, %struct.eap_leap_data** %8, align 8
  %19 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %20 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LEAP_DONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %135

25:                                               ; preds = %3
  %26 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %27 = call i32* @eap_get_config_password2(%struct.eap_sm* %26, i64* %15, i32* %16)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32* null, i32** %4, align 8
  br label %135

31:                                               ; preds = %25
  %32 = load i32, i32* @LEAP_KEY_LEN, align 4
  %33 = call i32* @os_malloc(i32 %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32* null, i32** %4, align 8
  br label %135

37:                                               ; preds = %31
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %43 = call i64 @hash_nt_password_hash(i32* %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @os_free(i32* %46)
  store i32* null, i32** %4, align 8
  br label %135

48:                                               ; preds = %40
  br label %64

49:                                               ; preds = %37
  %50 = load i32*, i32** %13, align 8
  %51 = load i64, i64* %15, align 8
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %53 = call i64 @nt_password_hash(i32* %50, i64 %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %58 = call i64 @hash_nt_password_hash(i32* %56, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %49
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @os_free(i32* %61)
  store i32* null, i32** %4, align 8
  br label %135

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %67 = call i32 @wpa_hexdump_key(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %66, i32 16)
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %70 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %73 = call i32 @wpa_hexdump(i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %71, i64 %72)
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %76 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %79 = call i32 @wpa_hexdump(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %77, i64 %78)
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %82 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %85 = call i32 @wpa_hexdump(i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %83, i64 %84)
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %88 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %91 = call i32 @wpa_hexdump(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %89, i64 %90)
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %93 = getelementptr inbounds [5 x i32*], [5 x i32*]* %12, i64 0, i64 0
  store i32* %92, i32** %93, align 16
  %94 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0
  store i64 16, i64* %94, align 16
  %95 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %96 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds [5 x i32*], [5 x i32*]* %12, i64 0, i64 1
  store i32* %97, i32** %98, align 8
  %99 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %100 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 1
  store i64 %99, i64* %100, align 8
  %101 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %102 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds [5 x i32*], [5 x i32*]* %12, i64 0, i64 2
  store i32* %103, i32** %104, align 16
  %105 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %106 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 2
  store i64 %105, i64* %106, align 16
  %107 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %108 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds [5 x i32*], [5 x i32*]* %12, i64 0, i64 3
  store i32* %109, i32** %110, align 8
  %111 = load i64, i64* @LEAP_CHALLENGE_LEN, align 8
  %112 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 3
  store i64 %111, i64* %112, align 8
  %113 = load %struct.eap_leap_data*, %struct.eap_leap_data** %8, align 8
  %114 = getelementptr inbounds %struct.eap_leap_data, %struct.eap_leap_data* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds [5 x i32*], [5 x i32*]* %12, i64 0, i64 4
  store i32* %115, i32** %116, align 16
  %117 = load i64, i64* @LEAP_RESPONSE_LEN, align 8
  %118 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 4
  store i64 %117, i64* %118, align 16
  %119 = getelementptr inbounds [5 x i32*], [5 x i32*]* %12, i64 0, i64 0
  %120 = getelementptr inbounds [5 x i64], [5 x i64]* %14, i64 0, i64 0
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @md5_vector(i32 5, i32** %119, i64* %120, i32* %121)
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* @LEAP_KEY_LEN, align 4
  %126 = call i32 @wpa_hexdump_key(i32 %123, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %124, i32 %125)
  %127 = load i32, i32* @LEAP_KEY_LEN, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64*, i64** %7, align 8
  store i64 %128, i64* %129, align 8
  %130 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %131 = call i32 @forced_memzero(i32* %130, i32 64)
  %132 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %133 = call i32 @forced_memzero(i32* %132, i32 64)
  %134 = load i32*, i32** %9, align 8
  store i32* %134, i32** %4, align 8
  br label %135

135:                                              ; preds = %64, %60, %45, %36, %30, %24
  %136 = load i32*, i32** %4, align 8
  ret i32* %136
}

declare dso_local i32* @eap_get_config_password2(%struct.eap_sm*, i64*, i32*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i64 @hash_nt_password_hash(i32*, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @nt_password_hash(i32*, i64, i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @md5_vector(i32, i32**, i64*, i32*) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
