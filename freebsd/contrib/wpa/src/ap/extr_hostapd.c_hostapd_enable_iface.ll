; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_enable_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_enable_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.TYPE_6__**, %struct.TYPE_5__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i64 (%struct.hostapd_iface*)* }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Interface %s already enabled\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Enable interface %s\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid configuration - cannot enable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_enable_iface(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i64, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %5 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %7, i64 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @MSG_ERROR, align 4
  %15 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %16 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %19, i64 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %2, align 4
  br label %109

25:                                               ; preds = %1
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %27, i32 0, i32 3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %31, i64 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i64 0, i64* %4, align 8
  br label %37

37:                                               ; preds = %53, %25
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %40 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %45 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = call i32 @hostapd_set_security_params(%struct.TYPE_7__* %51, i32 1)
  br label %53

53:                                               ; preds = %43
  %54 = load i64, i64* %4, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %4, align 8
  br label %37

56:                                               ; preds = %37
  %57 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %58 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = call i64 @hostapd_config_check(%struct.TYPE_8__* %59, i32 1)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %109

65:                                               ; preds = %56
  %66 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %67 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp eq %struct.TYPE_5__* %68, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %65
  %71 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %72 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64 (%struct.hostapd_iface*)*, i64 (%struct.hostapd_iface*)** %74, align 8
  %76 = icmp eq i64 (%struct.hostapd_iface*)* %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %70
  %78 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %79 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64 (%struct.hostapd_iface*)*, i64 (%struct.hostapd_iface*)** %81, align 8
  %83 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %84 = call i64 %82(%struct.hostapd_iface* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77, %70, %65
  store i32 -1, i32* %2, align 4
  br label %109

87:                                               ; preds = %77
  %88 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %89 = call i64 @hostapd_setup_interface(%struct.hostapd_iface* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %93 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %94, i64 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %100 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %107 = call i32 @hostapd_deinit_driver(i32 %98, i32* %105, %struct.hostapd_iface* %106)
  store i32 -1, i32* %2, align 4
  br label %109

108:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %91, %86, %62, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_set_security_params(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @hostapd_config_check(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @hostapd_setup_interface(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_deinit_driver(i32, i32*, %struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
