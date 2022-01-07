; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_vendor_elem_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpas_ctrl_vendor_elem_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32** }
%struct.ieee802_11_elems = type { i32 }

@NUM_VENDOR_ELEM_FRAMES = common dso_local global i32 0, align 4
@ParseFailed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpas_ctrl_vendor_elem_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_ctrl_vendor_elem_remove(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee802_11_elems, align 4
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @atoi(i8* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NUM_VENDOR_ELEM_FRAMES, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  store i32 -1, i32* %3, align 4
  br label %111

22:                                               ; preds = %17
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant* %23, i32 %24)
  store %struct.wpa_supplicant* %25, %struct.wpa_supplicant** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @os_strchr(i8* %26, i8 signext 32)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %111

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 42
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %40 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @wpabuf_free(i32* %45)
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* null, i32** %52, align 8
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %54 = call i32 @wpas_vendor_elem_update(%struct.wpa_supplicant* %53)
  store i32 0, i32* %3, align 4
  br label %111

55:                                               ; preds = %31
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %111

65:                                               ; preds = %55
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @os_strlen(i8* %66)
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %111

71:                                               ; preds = %65
  %72 = load i64, i64* %8, align 8
  %73 = and i64 %72, 1
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %111

76:                                               ; preds = %71
  %77 = load i64, i64* %8, align 8
  %78 = udiv i64 %77, 2
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32* @os_malloc(i64 %79)
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 -1, i32* %3, align 4
  br label %111

84:                                               ; preds = %76
  %85 = load i8*, i8** %6, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i64 @hexstr2bin(i8* %85, i32* %86, i64 %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @os_free(i32* %91)
  store i32 -1, i32* %3, align 4
  br label %111

93:                                               ; preds = %84
  %94 = load i32*, i32** %9, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @ieee802_11_parse_elems(i32* %94, i64 %95, %struct.ieee802_11_elems* %10, i32 0)
  %97 = load i64, i64* @ParseFailed, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @os_free(i32* %100)
  store i32 -1, i32* %3, align 4
  br label %111

102:                                              ; preds = %93
  %103 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @wpas_vendor_elem_remove(%struct.wpa_supplicant* %103, i32 %104, i32* %105, i64 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @os_free(i32* %108)
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %102, %99, %90, %83, %75, %70, %64, %38, %30, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.wpa_supplicant* @wpas_vendor_elem(%struct.wpa_supplicant*, i32) #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32 @wpas_vendor_elem_update(%struct.wpa_supplicant*) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @hexstr2bin(i8*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @ieee802_11_parse_elems(i32*, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i32 @wpas_vendor_elem_remove(%struct.wpa_supplicant*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
