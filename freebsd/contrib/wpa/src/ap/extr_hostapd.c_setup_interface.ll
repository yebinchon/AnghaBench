; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_setup_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_setup_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, i32, %struct.hostapd_data**, i32*, i64 }
%struct.hostapd_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"phy: %s\00", align 1
@HAPD_IFACE_COUNTRY_UPDATE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to set country code\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Previous country code %s, new country code %s\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Continue interface setup after channel list update\00", align 1
@channel_list_update_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*)* @setup_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_interface(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %10 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %9, i32 0, i32 2
  %11 = load %struct.hostapd_data**, %struct.hostapd_data*** %10, align 8
  %12 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %11, i64 0
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %12, align 8
  store %struct.hostapd_data* %13, %struct.hostapd_data** %4, align 8
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %17 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %24 = call i8* @hostapd_drv_get_radio_name(%struct.hostapd_data* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %32 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @os_strlcpy(i32* %33, i8* %34, i32 8)
  br label %36

36:                                               ; preds = %27, %22
  br label %37

37:                                               ; preds = %36, %1
  store i64 1, i64* %5, align 8
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %41 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %38
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %49 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %48, i32 0, i32 2
  %50 = load %struct.hostapd_data**, %struct.hostapd_data*** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %50, i64 %51
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %52, align 8
  %54 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %53, i32 0, i32 2
  store i32 %47, i32* %54, align 4
  %55 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %56 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %59 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %58, i32 0, i32 2
  %60 = load %struct.hostapd_data**, %struct.hostapd_data*** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %60, i64 %61
  %63 = load %struct.hostapd_data*, %struct.hostapd_data** %62, align 8
  %64 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %63, i32 0, i32 1
  store i32 %57, i32* %64, align 8
  br label %65

65:                                               ; preds = %44
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %38

68:                                               ; preds = %38
  %69 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %70 = call i64 @hostapd_validate_bssid_configuration(%struct.hostapd_iface* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %2, align 4
  br label %143

73:                                               ; preds = %68
  %74 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %75 = call i64 @start_ctrl_iface(%struct.hostapd_iface* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 -1, i32* %2, align 4
  br label %143

78:                                               ; preds = %73
  %79 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %80 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %140

87:                                               ; preds = %78
  %88 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %89 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %140

96:                                               ; preds = %87
  %97 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %98 = load i32, i32* @HAPD_IFACE_COUNTRY_UPDATE, align 4
  %99 = call i32 @hostapd_set_state(%struct.hostapd_iface* %97, i32 %98)
  %100 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %102 = call i64 @hostapd_get_country(%struct.hostapd_data* %100, i8* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %104, %96
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %108 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %109 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = call i32 @os_memcpy(i8* %107, i64* %112, i32 3)
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  store i8 0, i8* %114, align 1
  %115 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %117 = call i64 @hostapd_set_country(%struct.hostapd_data* %115, i8* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load i32, i32* @MSG_ERROR, align 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %143

122:                                              ; preds = %106
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %125 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %124, i8* %125)
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %129 = call i64 @os_strncmp(i8* %127, i8* %128, i32 2)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %122
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = call i32 (i32, i8*, ...) @wpa_printf(i32 %132, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %135 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %134, i32 0, i32 1
  store i32 1, i32* %135, align 8
  %136 = load i32, i32* @channel_list_update_timeout, align 4
  %137 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %138 = call i32 @eloop_register_timeout(i32 5, i32 0, i32 %136, %struct.hostapd_iface* %137, i32* null)
  store i32 0, i32* %2, align 4
  br label %143

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %87, %78
  %141 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %142 = call i32 @setup_interface2(%struct.hostapd_iface* %141)
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %140, %131, %119, %77, %72
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i8* @hostapd_drv_get_radio_name(%struct.hostapd_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_strlcpy(i32*, i8*, i32) #1

declare dso_local i64 @hostapd_validate_bssid_configuration(%struct.hostapd_iface*) #1

declare dso_local i64 @start_ctrl_iface(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_set_state(%struct.hostapd_iface*, i32) #1

declare dso_local i64 @hostapd_get_country(%struct.hostapd_data*, i8*) #1

declare dso_local i32 @os_memcpy(i8*, i64*, i32) #1

declare dso_local i64 @hostapd_set_country(%struct.hostapd_data*, i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.hostapd_iface*, i32*) #1

declare dso_local i32 @setup_interface2(%struct.hostapd_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
