; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_interface_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_main.c_hostapd_interface_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_8__**, %struct.TYPE_7__*, %struct.hapd_interfaces* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i8* }
%struct.hapd_interfaces = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Configuration file: %s\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Interface name not specified in %s, nor by '-i' parameter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hostapd_iface* (%struct.hapd_interfaces*, i8*, i8*, i32)* @hostapd_interface_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hostapd_iface* @hostapd_interface_init(%struct.hapd_interfaces* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.hostapd_iface*, align 8
  %6 = alloca %struct.hapd_interfaces*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_iface*, align 8
  %11 = alloca i32, align 4
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @MSG_ERROR, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call %struct.hostapd_iface* @hostapd_init(%struct.hapd_interfaces* %15, i8* %16)
  store %struct.hostapd_iface* %17, %struct.hostapd_iface** %10, align 8
  %18 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %19 = icmp ne %struct.hostapd_iface* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %100

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %26 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @os_strlcpy(i8* %33, i8* %34, i32 8)
  br label %36

36:                                               ; preds = %24, %21
  %37 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %6, align 8
  %38 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %39 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %38, i32 0, i32 2
  store %struct.hapd_interfaces* %37, %struct.hapd_interfaces** %39, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %67, %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %46 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %57 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %55, %44
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %40

70:                                               ; preds = %40
  %71 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %72 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %75, i64 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %70
  %85 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %86 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %87, i64 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = call i32 @hostapd_drv_none(%struct.TYPE_8__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @MSG_ERROR, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @wpa_printf(i32 %93, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  %97 = call i32 @hostapd_interface_deinit_free(%struct.hostapd_iface* %96)
  store %struct.hostapd_iface* null, %struct.hostapd_iface** %5, align 8
  br label %100

98:                                               ; preds = %84, %70
  %99 = load %struct.hostapd_iface*, %struct.hostapd_iface** %10, align 8
  store %struct.hostapd_iface* %99, %struct.hostapd_iface** %5, align 8
  br label %100

100:                                              ; preds = %98, %92, %20
  %101 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  ret %struct.hostapd_iface* %101
}

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local %struct.hostapd_iface* @hostapd_init(%struct.hapd_interfaces*, i8*) #1

declare dso_local i32 @os_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @hostapd_drv_none(%struct.TYPE_8__*) #1

declare dso_local i32 @hostapd_interface_deinit_free(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
