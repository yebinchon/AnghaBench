; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_get_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_psk.c_eap_psk_get_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_psk_data = type { i64, i32, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@EAP_PSK_RAND_LEN = common dso_local global i32 0, align 4
@EAP_TYPE_PSK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-PSK: Derived Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_psk_get_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_psk_get_session_id(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_psk_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_psk_data*
  store %struct.eap_psk_data* %11, %struct.eap_psk_data** %8, align 8
  %12 = load %struct.eap_psk_data*, %struct.eap_psk_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %57

18:                                               ; preds = %3
  %19 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %20 = mul nsw i32 2, %19
  %21 = add nsw i32 1, %20
  %22 = sext i32 %21 to i64
  %23 = load i64*, i64** %7, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = call i32* @os_malloc(i64 %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32* null, i32** %4, align 8
  br label %57

30:                                               ; preds = %18
  %31 = load i32, i32* @EAP_TYPE_PSK, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load %struct.eap_psk_data*, %struct.eap_psk_data** %8, align 8
  %37 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %40 = call i32 @os_memcpy(i32* %35, i32 %38, i32 %39)
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.eap_psk_data*, %struct.eap_psk_data** %8, align 8
  %47 = getelementptr inbounds %struct.eap_psk_data, %struct.eap_psk_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @EAP_PSK_RAND_LEN, align 4
  %50 = call i32 @os_memcpy(i32* %45, i32 %48, i32 %49)
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @wpa_hexdump(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %52, i64 %54)
  %56 = load i32*, i32** %9, align 8
  store i32* %56, i32** %4, align 8
  br label %57

57:                                               ; preds = %30, %29, %17
  %58 = load i32*, i32** %4, align 8
  ret i32* %58
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
