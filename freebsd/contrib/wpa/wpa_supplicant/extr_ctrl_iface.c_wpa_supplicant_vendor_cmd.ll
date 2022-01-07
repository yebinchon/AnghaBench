; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_vendor_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_vendor_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpabuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Vendor command: wrong parameter format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*, i8*, i64)* @wpa_supplicant_vendor_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_vendor_cmd(%struct.wpa_supplicant* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wpabuf*, align 8
  %16 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strtoul(i8* %17, i8** %11, i32 16)
  store i32 %18, i32* %13, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @isblank(i8 zeroext %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %104

26:                                               ; preds = %4
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @strtoul(i8* %27, i8** %11, i32 10)
  store i32 %28, i32* %14, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %11, align 8
  %36 = load i8, i8* %34, align 1
  %37 = call i32 @isblank(i8 zeroext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %104

42:                                               ; preds = %33
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @os_strlen(i8* %43)
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %42, %26
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i64, i64* %16, align 8
  %50 = udiv i64 %49, 2
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call i32* @os_malloc(i64 %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %104

56:                                               ; preds = %48
  %57 = load i8*, i8** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i64, i64* %16, align 8
  %60 = call i64 @hexstr2bin(i8* %57, i32* %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @os_free(i32* %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %104

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i64, i64* %9, align 8
  %72 = sub i64 %71, 1
  %73 = udiv i64 %72, 2
  %74 = call %struct.wpabuf* @wpabuf_alloc(i64 %73)
  store %struct.wpabuf* %74, %struct.wpabuf** %15, align 8
  %75 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %76 = icmp ne %struct.wpabuf* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @os_free(i32* %78)
  store i32 -1, i32* %5, align 4
  br label %104

80:                                               ; preds = %70
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %87 = call i32 @wpa_drv_vendor_cmd(%struct.wpa_supplicant* %81, i32 %82, i32 %83, i32* %84, i64 %85, %struct.wpabuf* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %80
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %94 = call i32 @wpabuf_head_u8(%struct.wpabuf* %93)
  %95 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %96 = call i32 @wpabuf_len(%struct.wpabuf* %95)
  %97 = call i32 @wpa_snprintf_hex(i8* %91, i64 %92, i32 %94, i32 %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %90, %80
  %99 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %100 = call i32 @wpabuf_free(%struct.wpabuf* %99)
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @os_free(i32* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %98, %77, %62, %55, %39, %23
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isblank(i8 zeroext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpa_drv_vendor_cmd(%struct.wpa_supplicant*, i32, i32, i32*, i64, %struct.wpabuf*) #1

declare dso_local i32 @wpa_snprintf_hex(i8*, i64, i32, i32) #1

declare dso_local i32 @wpabuf_head_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
