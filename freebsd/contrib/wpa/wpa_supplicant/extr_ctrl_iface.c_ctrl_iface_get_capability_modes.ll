; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_ctrl_iface_get_capability_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_capa = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"IBSS AP\00", align 1
@WPA_DRIVER_FLAGS_IBSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%sIBSS\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@WPA_DRIVER_FLAGS_AP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"%sAP\00", align 1
@WPA_DRIVER_FLAGS_MESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.wpa_driver_capa*, i8*, i64)* @ctrl_iface_get_capability_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_iface_get_capability_modes(i32 %0, i8* %1, %struct.wpa_driver_capa* %2, i8* %3, i64 %4) #0 {
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
  br label %128

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
  br label %128

34:                                               ; preds = %26
  %35 = load i64, i64* %15, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %128

37:                                               ; preds = %5
  %38 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %39 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WPA_DRIVER_FLAGS_IBSS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %37
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = icmp eq i8* %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %57 = call i32 @os_snprintf(i8* %45, i32 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @os_snprintf_error(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %44
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  br label %128

74:                                               ; preds = %44
  %75 = load i32, i32* %12, align 4
  %76 = load i8*, i8** %13, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %13, align 8
  br label %79

79:                                               ; preds = %74, %37
  %80 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %9, align 8
  %81 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WPA_DRIVER_FLAGS_AP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %79
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load i8*, i8** %13, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp eq i8* %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %99 = call i32 @os_snprintf(i8* %87, i32 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %12, align 4
  %107 = call i64 @os_snprintf_error(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %86
  %110 = load i8*, i8** %13, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %6, align 4
  br label %128

116:                                              ; preds = %86
  %117 = load i32, i32* %12, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %13, align 8
  br label %121

121:                                              ; preds = %116, %79
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %121, %109, %67, %34, %33, %25
  %129 = load i32, i32* %6, align 4
  ret i32 %129
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
