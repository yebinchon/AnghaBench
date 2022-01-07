; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_upnp_wps_device_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_upnp_wps_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32, i32, i32 }
%struct.upnp_wps_device_ctx = type { i32, %struct.upnp_wps_device_ctx*, i8*, %struct.wps_context*, %struct.upnp_wps_device_ctx*, i32 }
%struct.wps_context = type { i32 }
%struct.upnp_wps_device_interface = type { i32, %struct.upnp_wps_device_interface*, i8*, %struct.wps_context*, %struct.upnp_wps_device_interface*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WPS UPnP: Init interface instance %p\00", align 1
@shared_upnp_device = common dso_local global %struct.upnp_wps_device_sm* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"WPS UPnP: Share existing device context\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"WPS UPnP: Initialize device context\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"WPS UPnP: upnp_wps_device_init failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.upnp_wps_device_sm* @upnp_wps_device_init(%struct.upnp_wps_device_ctx* %0, %struct.wps_context* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.upnp_wps_device_sm*, align 8
  %6 = alloca %struct.upnp_wps_device_ctx*, align 8
  %7 = alloca %struct.wps_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.upnp_wps_device_sm*, align 8
  %11 = alloca %struct.upnp_wps_device_interface*, align 8
  %12 = alloca i32, align 4
  store %struct.upnp_wps_device_ctx* %0, %struct.upnp_wps_device_ctx** %6, align 8
  store %struct.wps_context* %1, %struct.wps_context** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = call i8* @os_zalloc(i32 48)
  %14 = bitcast i8* %13 to %struct.upnp_wps_device_interface*
  store %struct.upnp_wps_device_interface* %14, %struct.upnp_wps_device_interface** %11, align 8
  %15 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %11, align 8
  %16 = icmp eq %struct.upnp_wps_device_interface* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.upnp_wps_device_ctx*, %struct.upnp_wps_device_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.upnp_wps_device_ctx, %struct.upnp_wps_device_ctx* %18, i32 0, i32 1
  %20 = load %struct.upnp_wps_device_ctx*, %struct.upnp_wps_device_ctx** %19, align 8
  %21 = bitcast %struct.upnp_wps_device_ctx* %20 to %struct.upnp_wps_device_interface*
  %22 = call i32 @os_free(%struct.upnp_wps_device_interface* %21)
  %23 = load %struct.upnp_wps_device_ctx*, %struct.upnp_wps_device_ctx** %6, align 8
  %24 = bitcast %struct.upnp_wps_device_ctx* %23 to %struct.upnp_wps_device_interface*
  %25 = call i32 @os_free(%struct.upnp_wps_device_interface* %24)
  store %struct.upnp_wps_device_sm* null, %struct.upnp_wps_device_sm** %5, align 8
  br label %99

26:                                               ; preds = %4
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %11, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.upnp_wps_device_interface* %28)
  %30 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %11, align 8
  %31 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %30, i32 0, i32 5
  %32 = call i32 @dl_list_init(i32* %31)
  %33 = load %struct.upnp_wps_device_ctx*, %struct.upnp_wps_device_ctx** %6, align 8
  %34 = bitcast %struct.upnp_wps_device_ctx* %33 to %struct.upnp_wps_device_interface*
  %35 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %11, align 8
  %36 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %35, i32 0, i32 4
  store %struct.upnp_wps_device_interface* %34, %struct.upnp_wps_device_interface** %36, align 8
  %37 = load %struct.wps_context*, %struct.wps_context** %7, align 8
  %38 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %11, align 8
  %39 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %38, i32 0, i32 3
  store %struct.wps_context* %37, %struct.wps_context** %39, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %11, align 8
  %42 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** @shared_upnp_device, align 8
  %44 = icmp ne %struct.upnp_wps_device_sm* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %26
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** @shared_upnp_device, align 8
  store %struct.upnp_wps_device_sm* %48, %struct.upnp_wps_device_sm** %10, align 8
  br label %80

49:                                               ; preds = %26
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i8* @os_zalloc(i32 12)
  %53 = bitcast i8* %52 to %struct.upnp_wps_device_sm*
  store %struct.upnp_wps_device_sm* %53, %struct.upnp_wps_device_sm** %10, align 8
  %54 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  %55 = icmp ne %struct.upnp_wps_device_sm* %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @MSG_ERROR, align 4
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %11, align 8
  %60 = call i32 @os_free(%struct.upnp_wps_device_interface* %59)
  %61 = load %struct.upnp_wps_device_ctx*, %struct.upnp_wps_device_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.upnp_wps_device_ctx, %struct.upnp_wps_device_ctx* %61, i32 0, i32 1
  %63 = load %struct.upnp_wps_device_ctx*, %struct.upnp_wps_device_ctx** %62, align 8
  %64 = bitcast %struct.upnp_wps_device_ctx* %63 to %struct.upnp_wps_device_interface*
  %65 = call i32 @os_free(%struct.upnp_wps_device_interface* %64)
  %66 = load %struct.upnp_wps_device_ctx*, %struct.upnp_wps_device_ctx** %6, align 8
  %67 = bitcast %struct.upnp_wps_device_ctx* %66 to %struct.upnp_wps_device_interface*
  %68 = call i32 @os_free(%struct.upnp_wps_device_interface* %67)
  store %struct.upnp_wps_device_sm* null, %struct.upnp_wps_device_sm** %5, align 8
  br label %99

69:                                               ; preds = %49
  %70 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  store %struct.upnp_wps_device_sm* %70, %struct.upnp_wps_device_sm** @shared_upnp_device, align 8
  %71 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  %72 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %71, i32 0, i32 2
  %73 = call i32 @dl_list_init(i32* %72)
  %74 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  %75 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %74, i32 0, i32 1
  %76 = call i32 @dl_list_init(i32* %75)
  %77 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  %78 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %77, i32 0, i32 0
  %79 = call i32 @dl_list_init(i32* %78)
  store i32 1, i32* %12, align 4
  br label %80

80:                                               ; preds = %69, %45
  %81 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  %82 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %81, i32 0, i32 0
  %83 = load %struct.upnp_wps_device_interface*, %struct.upnp_wps_device_interface** %11, align 8
  %84 = getelementptr inbounds %struct.upnp_wps_device_interface, %struct.upnp_wps_device_interface* %83, i32 0, i32 0
  %85 = call i32 @dl_list_add(i32* %82, i32* %84)
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i64 @upnp_wps_device_start(%struct.upnp_wps_device_sm* %89, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = call i32 @upnp_wps_device_deinit(%struct.upnp_wps_device_sm* %94, i8* %95)
  store %struct.upnp_wps_device_sm* null, %struct.upnp_wps_device_sm** %5, align 8
  br label %99

97:                                               ; preds = %88, %80
  %98 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %10, align 8
  store %struct.upnp_wps_device_sm* %98, %struct.upnp_wps_device_sm** %5, align 8
  br label %99

99:                                               ; preds = %97, %93, %56, %17
  %100 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  ret %struct.upnp_wps_device_sm* %100
}

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.upnp_wps_device_interface*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i64 @upnp_wps_device_start(%struct.upnp_wps_device_sm*, i8*) #1

declare dso_local i32 @upnp_wps_device_deinit(%struct.upnp_wps_device_sm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
