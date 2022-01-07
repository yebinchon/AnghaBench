; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_capa = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"RSN WPA\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%sRSN\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%sWPA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.wpa_driver_capa*, i8*, i64)* @ctrl_iface_get_capability_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_iface_get_capability_proto(i32 %0, i8* %1, %struct.wpa_driver_capa* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wpa_driver_capa*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.wpa_driver_capa* %2, %struct.wpa_driver_capa** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = load i64, i64* %11, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %14, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %132

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @os_strlcpy(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %132

34:                                               ; preds = %26
  %35 = load i64, i64* %15, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %132

37:                                               ; preds = %5
  %38 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %39 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2, align 4
  %42 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %37
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = load i8*, i8** %13, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = icmp eq i8* %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 @os_snprintf(i8* %47, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @os_snprintf_error(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %46
  %70 = load i8*, i8** %13, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %132

76:                                               ; preds = %46
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %13, align 8
  br label %81

81:                                               ; preds = %76, %37
  %82 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %83 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA, align 4
  %86 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %81
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = icmp eq i8* %98, %99
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %103 = call i32 @os_snprintf(i8* %91, i32 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  store i32 %103, i32* %12, align 4
  %104 = load i8*, i8** %14, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %12, align 4
  %111 = call i64 @os_snprintf_error(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %90
  %114 = load i8*, i8** %13, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %6, align 4
  br label %132

120:                                              ; preds = %90
  %121 = load i32, i32* %12, align 4
  %122 = load i8*, i8** %13, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %13, align 8
  br label %125

125:                                              ; preds = %120, %81
  %126 = load i8*, i8** %13, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %125, %113, %69, %34, %33, %25
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i64 @os_strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
