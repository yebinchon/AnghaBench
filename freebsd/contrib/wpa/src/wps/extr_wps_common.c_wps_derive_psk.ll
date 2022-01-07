; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_derive_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_derive_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, i32, i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@WPS_PSK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WPS: Device Password\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"WPS: PSK1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"WPS: PSK2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_derive_psk(%struct.wps_data* %0, i32* %1, i64 %2) #0 {
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
  %11 = load i32, i32* @SHA256_MAC_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 1
  %22 = udiv i64 %21, 2
  %23 = call i64 @hmac_sha256(i32 %17, i32 %18, i32* %19, i64 %22, i32* %14)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %68

26:                                               ; preds = %3
  %27 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %28 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WPS_PSK_LEN, align 4
  %31 = call i32 @os_memcpy(i32 %29, i32* %14, i32 %30)
  %32 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %33 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  %39 = udiv i64 %38, 2
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i64, i64* %7, align 8
  %42 = udiv i64 %41, 2
  %43 = call i64 @hmac_sha256(i32 %34, i32 %35, i32* %40, i64 %42, i32* %14)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %68

46:                                               ; preds = %26
  %47 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %48 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WPS_PSK_LEN, align 4
  %51 = call i32 @os_memcpy(i32 %49, i32* %14, i32 %50)
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @wpa_hexdump_ascii_key(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %53, i64 %54)
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %58 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WPS_PSK_LEN, align 4
  %61 = call i32 @wpa_hexdump_key(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %64 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @WPS_PSK_LEN, align 4
  %67 = call i32 @wpa_hexdump_key(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %46, %45, %25
  %69 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hmac_sha256(i32, i32, i32*, i64, i32*) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
