; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_remove_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_remove_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hapd_interfaces = type { i64, %struct.hostapd_iface** }
%struct.hostapd_iface = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Remove interface '%s'\00", align 1
@WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_remove_iface(%struct.hapd_interfaces* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hapd_interfaces*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostapd_iface*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hapd_interfaces* %0, %struct.hapd_interfaces** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %126, %2
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %13 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %129

16:                                               ; preds = %10
  %17 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %18 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %17, i32 0, i32 1
  %19 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %19, i64 %20
  %22 = load %struct.hostapd_iface*, %struct.hostapd_iface** %21, align 8
  store %struct.hostapd_iface* %22, %struct.hostapd_iface** %6, align 8
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %24 = icmp eq %struct.hostapd_iface* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %130

26:                                               ; preds = %16
  %27 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %28 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @os_strcmp(i32 %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %84, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %44 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %53 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %55 = call i32 @hostapd_interface_deinit_free(%struct.hostapd_iface* %54)
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %64, %39
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %60 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, 1
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %66 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %65, i32 0, i32 1
  %67 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  %70 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %67, i64 %69
  %71 = load %struct.hostapd_iface*, %struct.hostapd_iface** %70, align 8
  %72 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %73 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %72, i32 0, i32 1
  %74 = load %struct.hostapd_iface**, %struct.hostapd_iface*** %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.hostapd_iface*, %struct.hostapd_iface** %74, i64 %75
  store %struct.hostapd_iface* %71, %struct.hostapd_iface** %76, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %4, align 8
  %81 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %81, align 8
  store i32 0, i32* %3, align 4
  br label %130

84:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %85

85:                                               ; preds = %122, %84
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %88 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %86, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %85
  %94 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %95 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %98, i64 %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @os_strcmp(i32 %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %93
  %108 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %109 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %117 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @hostapd_remove_bss(%struct.hostapd_iface* %118, i64 %119)
  store i32 %120, i32* %3, align 4
  br label %130

121:                                              ; preds = %93
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %8, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %8, align 8
  br label %85

125:                                              ; preds = %85
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %7, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %7, align 8
  br label %10

129:                                              ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %107, %79, %25
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @os_strcmp(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i32 @hostapd_interface_deinit_free(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_remove_bss(%struct.hostapd_iface*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
