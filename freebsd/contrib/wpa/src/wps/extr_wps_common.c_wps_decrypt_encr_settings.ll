; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_decrypt_encr_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_decrypt_encr_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i64 }
%struct.wps_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WPS: No Encrypted Settings received\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"WPS: Encrypted Settings\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"WPS: Decrypted Encrypted Settings\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"WPS: Invalid PKCS#5 v2.0 pad value\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"WPS: Invalid PKCS#5 v2.0 pad string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 16, i64* %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 32
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = urem i64 %19, 16
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15, %3
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %104

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, 16
  %28 = call %struct.wpabuf* @wpabuf_alloc(i64 %27)
  store %struct.wpabuf* %28, %struct.wpabuf** %8, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %30 = icmp eq %struct.wpabuf* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %104

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_MSGDUMP, align 4
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @wpa_hexdump(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64* %34, i64 %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 16
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 16
  %42 = call i32 @wpabuf_put_data(%struct.wpabuf* %37, i64* %39, i64 %41)
  %43 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %44 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64*, i64** %6, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %48 = call i32 @wpabuf_mhead(%struct.wpabuf* %47)
  %49 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %50 = call i64 @wpabuf_len(%struct.wpabuf* %49)
  %51 = call i64 @aes_128_cbc_decrypt(i32 %45, i64* %46, i32 %48, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %55 = call i32 @wpabuf_clear_free(%struct.wpabuf* %54)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %104

56:                                               ; preds = %32
  %57 = load i32, i32* @MSG_MSGDUMP, align 4
  %58 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %59 = call i32 @wpa_hexdump_buf_key(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %58)
  %60 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %61 = call i64* @wpabuf_head_u8(%struct.wpabuf* %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %63 = call i64 @wpabuf_len(%struct.wpabuf* %62)
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = getelementptr inbounds i64, i64* %64, i64 -1
  store i64* %65, i64** %12, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %70 = call i64 @wpabuf_len(%struct.wpabuf* %69)
  %71 = icmp ugt i64 %68, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %56
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 @wpa_printf(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %76 = call i32 @wpabuf_clear_free(%struct.wpabuf* %75)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %104

77:                                               ; preds = %56
  store i64 0, i64* %10, align 8
  br label %78

78:                                               ; preds = %94, %77
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load i64*, i64** %12, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 -1
  store i64* %84, i64** %12, align 8
  %85 = load i64, i64* %83, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %91 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %92 = call i32 @wpabuf_clear_free(%struct.wpabuf* %91)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %104

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %10, align 8
  br label %78

97:                                               ; preds = %78
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %100 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %103, %struct.wpabuf** %4, align 8
  br label %104

104:                                              ; preds = %97, %88, %72, %53, %31, %22
  %105 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %105
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64*, i64) #1

declare dso_local i64 @aes_128_cbc_decrypt(i32, i64*, i32, i64) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64* @wpabuf_head_u8(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
