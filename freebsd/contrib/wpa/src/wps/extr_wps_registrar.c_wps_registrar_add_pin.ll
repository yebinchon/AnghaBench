; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_add_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_add_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32, i64, i32 }
%struct.wps_uuid_pin = type { i32, i64, i32, %struct.TYPE_2__, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@PIN_EXPIRES = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WPS: A new PIN configured (timeout=%d)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"WPS: UUID\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"WPS: PIN\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\FF\FF\FF\FF\FF\FF\00", align 1
@wps_registrar_set_selected_timeout = common dso_local global i32 0, align 4
@WPS_PBC_WALK_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_registrar_add_pin(%struct.wps_registrar* %0, i32* %1, i32* %2, i32* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wps_registrar*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wps_uuid_pin*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = call %struct.wps_uuid_pin* @os_zalloc(i32 48)
  store %struct.wps_uuid_pin* %15, %struct.wps_uuid_pin** %14, align 8
  %16 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %17 = icmp eq %struct.wps_uuid_pin* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %124

19:                                               ; preds = %6
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %24 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @os_memcpy(i32 %25, i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32*, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %34 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %42

35:                                               ; preds = %29
  %36 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %37 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @WPS_UUID_LEN, align 4
  %41 = call i32 @os_memcpy(i32 %38, i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32* @os_memdup(i32* %43, i64 %44)
  %46 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %47 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %46, i32 0, i32 5
  store i32* %45, i32** %47, align 8
  %48 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %49 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %54 = call i32 @os_free(%struct.wps_uuid_pin* %53)
  store i32 -1, i32* %7, align 4
  br label %124

55:                                               ; preds = %42
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %58 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load i32, i32* @PIN_EXPIRES, align 4
  %63 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %64 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %68 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %67, i32 0, i32 3
  %69 = call i32 @os_get_reltime(%struct.TYPE_2__* %68)
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %72 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %70
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %61, %55
  %77 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %78 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %83 = call i32 @wps_registrar_invalidate_unused(%struct.wps_registrar* %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %86 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %85, i32 0, i32 2
  %87 = load %struct.wps_uuid_pin*, %struct.wps_uuid_pin** %14, align 8
  %88 = getelementptr inbounds %struct.wps_uuid_pin, %struct.wps_uuid_pin* %87, i32 0, i32 2
  %89 = call i32 @dl_list_add(i32* %86, i32* %88)
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @wpa_printf(i32 %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* @WPS_UUID_LEN, align 4
  %96 = call i32 @wpa_hexdump(i32 %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %94, i32 %95)
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @wpa_hexdump_ascii_key(i32 %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %98, i64 %99)
  %101 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %102 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %104 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %84
  %108 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @wps_registrar_add_authorized_mac(%struct.wps_registrar* %108, i32* %109)
  br label %114

111:                                              ; preds = %84
  %112 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %113 = call i32 @wps_registrar_add_authorized_mac(%struct.wps_registrar* %112, i32* bitcast ([7 x i8]* @.str.3 to i32*))
  br label %114

114:                                              ; preds = %111, %107
  %115 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %116 = call i32 @wps_registrar_selected_registrar_changed(%struct.wps_registrar* %115, i32 0)
  %117 = load i32, i32* @wps_registrar_set_selected_timeout, align 4
  %118 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %119 = call i32 @eloop_cancel_timeout(i32 %117, %struct.wps_registrar* %118, i32* null)
  %120 = load i32, i32* @WPS_PBC_WALK_TIME, align 4
  %121 = load i32, i32* @wps_registrar_set_selected_timeout, align 4
  %122 = load %struct.wps_registrar*, %struct.wps_registrar** %8, align 8
  %123 = call i32 @eloop_register_timeout(i32 %120, i32 0, i32 %121, %struct.wps_registrar* %122, i32* null)
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %114, %52, %18
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.wps_uuid_pin* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

declare dso_local i32 @os_free(%struct.wps_uuid_pin*) #1

declare dso_local i32 @os_get_reltime(%struct.TYPE_2__*) #1

declare dso_local i32 @wps_registrar_invalidate_unused(%struct.wps_registrar*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @wps_registrar_add_authorized_mac(%struct.wps_registrar*, i32*) #1

declare dso_local i32 @wps_registrar_selected_registrar_changed(%struct.wps_registrar*, i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wps_registrar*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wps_registrar*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
