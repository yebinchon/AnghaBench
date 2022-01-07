; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_vendor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wpabuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Vendor command: wrong parameter format\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*, i8*, i64)* @hostapd_ctrl_iface_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_vendor(%struct.hostapd_data* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
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
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
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
  br label %108

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
  br label %108

42:                                               ; preds = %33
  %43 = load i8*, i8** %11, align 8
  %44 = call i64 @os_strlen(i8* %43)
  store i64 %44, i64* %16, align 8
  br label %45

45:                                               ; preds = %42, %26
  %46 = load i64, i64* %16, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = load i64, i64* %16, align 8
  %50 = udiv i64 %49, 2
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call i32* @os_malloc(i64 %51)
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOBUFS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %108

58:                                               ; preds = %48
  %59 = load i8*, i8** %11, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i64, i64* %16, align 8
  %62 = call i64 @hexstr2bin(i8* %59, i32* %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = call i32 @wpa_printf(i32 %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @os_free(i32* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %108

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %45
  %73 = load i64, i64* %9, align 8
  %74 = sub i64 %73, 1
  %75 = udiv i64 %74, 2
  %76 = call %struct.wpabuf* @wpabuf_alloc(i64 %75)
  store %struct.wpabuf* %76, %struct.wpabuf** %15, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %78 = icmp ne %struct.wpabuf* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @os_free(i32* %80)
  %82 = load i32, i32* @ENOBUFS, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %108

84:                                               ; preds = %72
  %85 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %91 = call i32 @hostapd_drv_vendor_cmd(%struct.hostapd_data* %85, i32 %86, i32 %87, i32* %88, i64 %89, %struct.wpabuf* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %98 = call i32 @wpabuf_head_u8(%struct.wpabuf* %97)
  %99 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %100 = call i32 @wpabuf_len(%struct.wpabuf* %99)
  %101 = call i32 @wpa_snprintf_hex(i8* %95, i64 %96, i32 %98, i32 %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %94, %84
  %103 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %104 = call i32 @wpabuf_free(%struct.wpabuf* %103)
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @os_free(i32* %105)
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %79, %64, %55, %39, %23
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isblank(i8 zeroext) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @hostapd_drv_vendor_cmd(%struct.hostapd_data*, i32, i32, i32*, i64, %struct.wpabuf*) #1

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
