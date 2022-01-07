; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_group_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_group = type { i32 }
%struct.wpa_supplicant = type { i64, %struct.p2p_group*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i32*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.wpa_ssid = type { i64, i32, i32, i32, i64, i32 }
%struct.p2p_group_config = type { i32, i64, i32, i32, i32, %struct.wpa_supplicant*, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@wpas_p2p_ie_update = common dso_local global i32 0, align 4
@wpas_p2p_idle_update = common dso_local global i32 0, align 4
@WPAS_MODE_P2P_GROUP_FORMATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p2p_group* @wpas_p2p_group_init(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.p2p_group*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.p2p_group*, align 8
  %7 = alloca %struct.p2p_group_config*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %14, %2
  store %struct.p2p_group* null, %struct.p2p_group** %3, align 8
  br label %161

27:                                               ; preds = %21
  %28 = call %struct.p2p_group_config* @os_zalloc(i32 56)
  store %struct.p2p_group_config* %28, %struct.p2p_group_config** %7, align 8
  %29 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %30 = icmp eq %struct.p2p_group_config* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store %struct.p2p_group* null, %struct.p2p_group** %3, align 8
  br label %161

32:                                               ; preds = %27
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %34 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %46 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  br label %56

47:                                               ; preds = %37, %32
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %54 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %47
  br label %56

56:                                               ; preds = %55, %44
  %57 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %58 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @os_memcpy(i32 %59, i32 %62, i32 %63)
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %56
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %72, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %84 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %93

85:                                               ; preds = %69, %56
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %92 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %85, %79
  %94 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %95 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %98 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %101 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @os_memcpy(i32 %96, i32 %99, i32 %102)
  %104 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %105 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %108 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %107, i32 0, i32 7
  store i32 %106, i32* %108, align 4
  %109 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %110 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %113 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %115 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %116 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %115, i32 0, i32 5
  store %struct.wpa_supplicant* %114, %struct.wpa_supplicant** %116, align 8
  %117 = load i32, i32* @wpas_p2p_ie_update, align 4
  %118 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %119 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @wpas_p2p_idle_update, align 4
  %121 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %122 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %124 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @WPA_GET_BE32(i32 %129)
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %134 = getelementptr inbounds %struct.p2p_group_config, %struct.p2p_group_config* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %136 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %135, i32 0, i32 2
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %141 = call %struct.p2p_group* @p2p_group_init(i32* %139, %struct.p2p_group_config* %140)
  store %struct.p2p_group* %141, %struct.p2p_group** %6, align 8
  %142 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %143 = icmp eq %struct.p2p_group* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %93
  %145 = load %struct.p2p_group_config*, %struct.p2p_group_config** %7, align 8
  %146 = call i32 @os_free(%struct.p2p_group_config* %145)
  br label %147

147:                                              ; preds = %144, %93
  %148 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %149 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @WPAS_MODE_P2P_GROUP_FORMATION, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %155 = call i32 @p2p_group_notif_formation_done(%struct.p2p_group* %154)
  br label %156

156:                                              ; preds = %153, %147
  %157 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  %158 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %159 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %158, i32 0, i32 1
  store %struct.p2p_group* %157, %struct.p2p_group** %159, align 8
  %160 = load %struct.p2p_group*, %struct.p2p_group** %6, align 8
  store %struct.p2p_group* %160, %struct.p2p_group** %3, align 8
  br label %161

161:                                              ; preds = %156, %31, %26
  %162 = load %struct.p2p_group*, %struct.p2p_group** %3, align 8
  ret %struct.p2p_group* %162
}

declare dso_local %struct.p2p_group_config* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i64 @WPA_GET_BE32(i32) #1

declare dso_local %struct.p2p_group* @p2p_group_init(i32*, %struct.p2p_group_config*) #1

declare dso_local i32 @os_free(%struct.p2p_group_config*) #1

declare dso_local i32 @p2p_group_notif_formation_done(%struct.p2p_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
