; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_pubkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32*, i32, i32*, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"WPS: No Public Key received\00", align 1
@WPS_HASH_LEN = common dso_local global i32 0, align 4
@WPS_OOB_PUBKEY_HASH_LEN = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"WPS: Public Key hash mismatch\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"WPS: Received public key\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"WPS: Calculated public key hash\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"WPS: Expected public key hash\00", align 1
@WPS_CFG_PUBLIC_KEY_HASH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, i32*, i64)* @wps_process_pubkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_pubkey(%struct.wps_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %81

19:                                               ; preds = %13
  %20 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %21 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load i32, i32* @WPS_HASH_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %8, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %29 = call i32 @sha256_vector(i32 1, i32** %6, i64* %7, i32* %28)
  %30 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %31 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @WPS_OOB_PUBKEY_HASH_LEN, align 8
  %34 = call i64 @os_memcmp_const(i32* %28, i32* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %24
  %37 = load i32, i32* @MSG_ERROR, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @wpa_hexdump(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %40, i64 %41)
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i64, i64* @WPS_OOB_PUBKEY_HASH_LEN, align 8
  %45 = call i32 @wpa_hexdump(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %28, i64 %44)
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %48 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @WPS_OOB_PUBKEY_HASH_LEN, align 8
  %51 = call i32 @wpa_hexdump(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %49, i64 %50)
  %52 = load i32, i32* @WPS_CFG_PUBLIC_KEY_HASH_MISMATCH, align 4
  %53 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %54 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %56

55:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %83 [
    i32 0, label %59
    i32 1, label %81
  ]

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %19
  %61 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %62 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @wpabuf_free(i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32* @wpabuf_alloc_copy(i32* %65, i64 %66)
  %68 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %69 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %71 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %81

75:                                               ; preds = %60
  %76 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %77 = call i64 @wps_derive_keys(%struct.wps_data* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 -1, i32* %4, align 4
  br label %81

80:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %79, %74, %56, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82

83:                                               ; preds = %56
  unreachable
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sha256_vector(i32, i32**, i64*, i32*) #1

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32* @wpabuf_alloc_copy(i32*, i64) #1

declare dso_local i64 @wps_derive_keys(%struct.wps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
