; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_getKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_mschapv2.c_eap_mschapv2_getKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_mschapv2_data = type { i64, i32, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@MSCHAPV2_KEY_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-MSCHAPV2: Derived key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_mschapv2_getKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_mschapv2_getKey(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_mschapv2_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_mschapv2_data*
  store %struct.eap_mschapv2_data* %11, %struct.eap_mschapv2_data** %8, align 8
  %12 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %19 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  store i32* null, i32** %4, align 8
  br label %63

23:                                               ; preds = %17
  %24 = load i32, i32* @MSCHAPV2_KEY_LEN, align 4
  %25 = mul nsw i32 2, %24
  %26 = sext i32 %25 to i64
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = call i32* @os_malloc(i64 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %63

34:                                               ; preds = %23
  %35 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %36 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @MSCHAPV2_KEY_LEN, align 4
  %40 = call i64 @get_asymetric_start_key(i32 %37, i32* %38, i32 %39, i32 0, i32 1)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = load %struct.eap_mschapv2_data*, %struct.eap_mschapv2_data** %8, align 8
  %44 = getelementptr inbounds %struct.eap_mschapv2_data, %struct.eap_mschapv2_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @MSCHAPV2_KEY_LEN, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* @MSCHAPV2_KEY_LEN, align 4
  %51 = call i64 @get_asymetric_start_key(i32 %45, i32* %49, i32 %50, i32 1, i32 1)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42, %34
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @os_free(i32* %54)
  store i32* null, i32** %4, align 8
  br label %63

56:                                               ; preds = %42
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @wpa_hexdump_key(i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %58, i64 %60)
  %62 = load i32*, i32** %9, align 8
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %56, %53, %33, %22
  %64 = load i32*, i32** %4, align 8
  ret i32* %64
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @get_asymetric_start_key(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
