; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_interfaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_global_ctrl_iface_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i64, %struct.hostapd_iface** }
%struct.hostapd_iface = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hostapd_bss_config** }
%struct.hostapd_bss_config = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s ctrl_iface=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hapd_interfaces*, i8*, i8*, i32)* @hostapd_global_ctrl_iface_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_global_ctrl_iface_interfaces(%struct.hapd_interfaces* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hapd_interfaces*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.hostapd_iface*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.hostapd_bss_config*, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @os_strstr(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %16, align 4
  br label %27

27:                                               ; preds = %20, %4
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %14, align 8
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %125, %27
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %36 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %128

39:                                               ; preds = %33
  %40 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %41 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %40, i32 0, i32 1
  %42 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %42, i64 %43
  %45 = load %struct.hostapd_iface*, %struct.hostapd_iface** %44, align 8
  store %struct.hostapd_iface* %45, %struct.hostapd_iface** %15, align 8
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %121, %39
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.hostapd_iface*, %struct.hostapd_iface** %15, align 8
  %49 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %46
  %53 = load %struct.hostapd_iface*, %struct.hostapd_iface** %15, align 8
  %54 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %56, align 8
  %58 = load i64, i64* %11, align 8
  %59 = getelementptr inbounds %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %57, i64 %58
  %60 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %59, align 8
  store %struct.hostapd_bss_config* %60, %struct.hostapd_bss_config** %17, align 8
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %52
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %17, align 8
  %72 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %17, align 8
  %75 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %17, align 8
  %80 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  br label %83

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %78
  %84 = phi i8* [ %81, %78 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %82 ]
  %85 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %64, i32 %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %73, i8* %84)
  store i32 %85, i32* %12, align 4
  br label %98

86:                                               ; preds = %52
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %17, align 8
  %95 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i8*, i32, i8*, i32, ...) @os_snprintf(i8* %87, i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %86, %83
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %12, align 4
  %106 = call i64 @os_snprintf_error(i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %98
  %109 = load i8*, i8** %13, align 8
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** %13, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %135

116:                                              ; preds = %98
  %117 = load i32, i32* %12, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %13, align 8
  br label %121

121:                                              ; preds = %116
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %11, align 8
  br label %46

124:                                              ; preds = %46
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %10, align 8
  br label %33

128:                                              ; preds = %33
  %129 = load i8*, i8** %13, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %128, %108
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @os_strstr(i8*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
