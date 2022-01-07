; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_e_snonce2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_process_e_snonce2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, %struct.TYPE_2__*, i64, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPS: No E-SNonce2 received\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"WPS: E-SNonce2\00", align 1
@WPS_SECRET_NONCE_LEN = common dso_local global i64 0, align 8
@WPS_PSK_LEN = common dso_local global i64 0, align 8
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@WPS_HASH_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"WPS: E-Hash2 derived from E-S2 does not match with the pre-committed value\00", align 1
@WPS_CFG_DEV_PASSWORD_AUTH_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"WPS: Enrollee proved knowledge of the second half of the device password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, i32*)* @wps_process_e_snonce2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_e_snonce2(%struct.wps_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32*], align 16
  %9 = alloca [4 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @SHA256_MAC_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %113

20:                                               ; preds = %2
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* @WPS_SECRET_NONCE_LEN, align 8
  %24 = call i32 @wpa_hexdump_key(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %22, i64 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 0
  store i32* %25, i32** %26, align 16
  %27 = load i64, i64* @WPS_SECRET_NONCE_LEN, align 8
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %30 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 1
  store i32* %31, i32** %32, align 8
  %33 = load i64, i64* @WPS_PSK_LEN, align 8
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 1
  store i64 %33, i64* %34, align 8
  %35 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %36 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @wpabuf_head(i32 %37)
  %39 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 2
  store i32* %38, i32** %39, align 16
  %40 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %41 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @wpabuf_len(i32 %42)
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 2
  store i64 %43, i64* %44, align 16
  %45 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %46 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @wpabuf_head(i32 %47)
  %49 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 3
  store i32* %48, i32** %49, align 8
  %50 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %51 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @wpabuf_len(i32 %52)
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 3
  store i64 %53, i64* %54, align 8
  %55 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %56 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %59 = getelementptr inbounds [4 x i32*], [4 x i32*]* %8, i64 0, i64 0
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %61 = call i32 @hmac_sha256_vector(i32 %57, i32 %58, i32 4, i32** %59, i64* %60, i32* %14)
  %62 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %63 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @WPS_HASH_LEN, align 4
  %66 = call i64 @os_memcmp_const(i32 %64, i32* %14, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %20
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 @wpa_printf(i32 %69, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %72 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %77 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @wps_registrar_invalidate_pin(i32 %75, i32 %78)
  %80 = load i32, i32* @WPS_CFG_DEV_PASSWORD_AUTH_FAILURE, align 4
  %81 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %82 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %84 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %87 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @wps_pwd_auth_fail_event(%struct.TYPE_2__* %85, i32 0, i32 2, i32 %88)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %113

90:                                               ; preds = %20
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %93 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %94 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %96 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %101 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @wps_registrar_unlock_pin(i32 %99, i32 %102)
  %104 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %105 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %110 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @wps_registrar_invalidate_pin(i32 %108, i32 %111)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %113

113:                                              ; preds = %90, %68, %17
  %114 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %114)
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #2

declare dso_local i32* @wpabuf_head(i32) #2

declare dso_local i64 @wpabuf_len(i32) #2

declare dso_local i32 @hmac_sha256_vector(i32, i32, i32, i32**, i64*, i32*) #2

declare dso_local i64 @os_memcmp_const(i32, i32*, i32) #2

declare dso_local i32 @wps_registrar_invalidate_pin(i32, i32) #2

declare dso_local i32 @wps_pwd_auth_fail_event(%struct.TYPE_2__*, i32, i32, i32) #2

declare dso_local i32 @wps_registrar_unlock_pin(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
