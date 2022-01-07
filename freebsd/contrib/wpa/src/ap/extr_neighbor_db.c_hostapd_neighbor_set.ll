; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_neighbor_db.c_hostapd_neighbor_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_neighbor_db.c_hostapd_neighbor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.wpa_ssid_value = type { i32 }
%struct.wpabuf = type { i32 }
%struct.hostapd_neighbor_entry = type { i32, i8*, i32, i8*, i8*, i32, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_neighbor_set(%struct.hostapd_data* %0, %struct.wpa_ssid_value* %1, %struct.wpa_ssid_value* %2, %struct.wpabuf* %3, %struct.wpabuf* %4, %struct.wpabuf* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostapd_data*, align 8
  %10 = alloca %struct.wpa_ssid_value*, align 8
  %11 = alloca %struct.wpa_ssid_value*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.hostapd_neighbor_entry*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %9, align 8
  store %struct.wpa_ssid_value* %1, %struct.wpa_ssid_value** %10, align 8
  store %struct.wpa_ssid_value* %2, %struct.wpa_ssid_value** %11, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %4, %struct.wpabuf** %13, align 8
  store %struct.wpabuf* %5, %struct.wpabuf** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %18 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %10, align 8
  %19 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %20 = call %struct.hostapd_neighbor_entry* @hostapd_neighbor_get(%struct.hostapd_data* %17, %struct.wpa_ssid_value* %18, %struct.wpa_ssid_value* %19)
  store %struct.hostapd_neighbor_entry* %20, %struct.hostapd_neighbor_entry** %16, align 8
  %21 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %22 = icmp ne %struct.hostapd_neighbor_entry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %25 = call %struct.hostapd_neighbor_entry* @hostapd_neighbor_add(%struct.hostapd_data* %24)
  store %struct.hostapd_neighbor_entry* %25, %struct.hostapd_neighbor_entry** %16, align 8
  br label %26

26:                                               ; preds = %23, %7
  %27 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %28 = icmp ne %struct.hostapd_neighbor_entry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 -1, i32* %8, align 4
  br label %102

30:                                               ; preds = %26
  %31 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %32 = call i32 @hostapd_neighbor_clear_entry(%struct.hostapd_neighbor_entry* %31)
  %33 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %34 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %10, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @os_memcpy(i32* %35, %struct.wpa_ssid_value* %36, i32 %37)
  %39 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %40 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %39, i32 0, i32 5
  %41 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %42 = call i32 @os_memcpy(i32* %40, %struct.wpa_ssid_value* %41, i32 4)
  %43 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %44 = call i8* @wpabuf_dup(%struct.wpabuf* %43)
  %45 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %46 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %48 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %47, i32 0, i32 4
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %30
  br label %97

52:                                               ; preds = %30
  %53 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %54 = icmp ne %struct.wpabuf* %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %57 = call i64 @wpabuf_len(%struct.wpabuf* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %61 = call i8* @wpabuf_dup(%struct.wpabuf* %60)
  %62 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %63 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %65 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %70 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %69, i32 0, i32 2
  %71 = call i64 @os_get_time(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %59
  br label %97

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %55, %52
  %76 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %77 = icmp ne %struct.wpabuf* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %80 = call i64 @wpabuf_len(%struct.wpabuf* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %84 = call i8* @wpabuf_dup(%struct.wpabuf* %83)
  %85 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %86 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %88 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %97

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %78, %75
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.hostapd_neighbor_entry*, %struct.hostapd_neighbor_entry** %16, align 8
  %96 = getelementptr inbounds %struct.hostapd_neighbor_entry, %struct.hostapd_neighbor_entry* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %8, align 4
  br label %102

97:                                               ; preds = %91, %73, %51
  %98 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %99 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %10, align 8
  %100 = load %struct.wpa_ssid_value*, %struct.wpa_ssid_value** %11, align 8
  %101 = call i32 @hostapd_neighbor_remove(%struct.hostapd_data* %98, %struct.wpa_ssid_value* %99, %struct.wpa_ssid_value* %100)
  store i32 -1, i32* %8, align 4
  br label %102

102:                                              ; preds = %97, %93, %29
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local %struct.hostapd_neighbor_entry* @hostapd_neighbor_get(%struct.hostapd_data*, %struct.wpa_ssid_value*, %struct.wpa_ssid_value*) #1

declare dso_local %struct.hostapd_neighbor_entry* @hostapd_neighbor_add(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_neighbor_clear_entry(%struct.hostapd_neighbor_entry*) #1

declare dso_local i32 @os_memcpy(i32*, %struct.wpa_ssid_value*, i32) #1

declare dso_local i8* @wpabuf_dup(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @os_get_time(i32*) #1

declare dso_local i32 @hostapd_neighbor_remove(%struct.hostapd_data*, %struct.wpa_ssid_value*, %struct.wpa_ssid_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
