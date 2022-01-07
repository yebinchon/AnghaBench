; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32, i64 }
%struct.in_addr = type { i32 }
%struct.wps_er_ap = type { i32*, i32, %struct.TYPE_2__, i32, i32, i64, %struct.wps_er*, i32 }
%struct.TYPE_2__ = type { i32 }

@wps_er_ap_timeout = common dso_local global i32 0, align 4
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WPS ER: Added AP entry for %s (%s)\00", align 1
@wps_er_http_dev_desc_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_er_ap_add(%struct.wps_er* %0, i32* %1, %struct.in_addr* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.wps_er*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.in_addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wps_er_ap*, align 8
  store %struct.wps_er* %0, %struct.wps_er** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.in_addr* %2, %struct.in_addr** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %13 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er* %12, %struct.in_addr* %13, i32* %14, i32* null)
  store %struct.wps_er_ap* %15, %struct.wps_er_ap** %11, align 8
  %16 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %17 = icmp ne %struct.wps_er_ap* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i32, i32* @wps_er_ap_timeout, align 4
  %20 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %21 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %22 = call i32 @eloop_cancel_timeout(i32 %19, %struct.wps_er* %20, %struct.wps_er_ap* %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @wps_er_ap_timeout, align 4
  %25 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %26 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %27 = call i32 @eloop_register_timeout(i32 %23, i32 0, i32 %24, %struct.wps_er* %25, %struct.wps_er_ap* %26)
  br label %98

28:                                               ; preds = %5
  %29 = call %struct.wps_er_ap* @os_zalloc(i32 48)
  store %struct.wps_er_ap* %29, %struct.wps_er_ap** %11, align 8
  %30 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %31 = icmp eq %struct.wps_er_ap* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %98

33:                                               ; preds = %28
  %34 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %35 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %34, i32 0, i32 7
  %36 = call i32 @dl_list_init(i32* %35)
  %37 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %38 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %39 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %38, i32 0, i32 6
  store %struct.wps_er* %37, %struct.wps_er** %39, align 8
  %40 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %41 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %45 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i32* @os_strdup(i8* %46)
  %48 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %49 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %51 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %33
  %55 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %56 = call i32 @os_free(%struct.wps_er_ap* %55)
  br label %98

57:                                               ; preds = %33
  %58 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %59 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %58, i32 0, i32 0
  %60 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %61 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %60, i32 0, i32 4
  %62 = call i32 @dl_list_add(i32* %59, i32* %61)
  %63 = load %struct.in_addr*, %struct.in_addr** %8, align 8
  %64 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %67 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %70 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @WPS_UUID_LEN, align 4
  %74 = call i32 @os_memcpy(i32 %71, i32* %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @wps_er_ap_timeout, align 4
  %77 = load %struct.wps_er*, %struct.wps_er** %6, align 8
  %78 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %79 = call i32 @eloop_register_timeout(i32 %75, i32 0, i32 %76, %struct.wps_er* %77, %struct.wps_er_ap* %78)
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %82 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @inet_ntoa(i32 %84)
  %86 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %87 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @wpa_printf(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %85, i32* %88)
  %90 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %91 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* @wps_er_http_dev_desc_cb, align 4
  %94 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %95 = call i32 @http_client_url(i32* %92, i32* null, i32 10000, i32 %93, %struct.wps_er_ap* %94)
  %96 = load %struct.wps_er_ap*, %struct.wps_er_ap** %11, align 8
  %97 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %57, %54, %32, %18
  ret void
}

declare dso_local %struct.wps_er_ap* @wps_er_ap_get(%struct.wps_er*, %struct.in_addr*, i32*, i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wps_er*, %struct.wps_er_ap*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wps_er*, %struct.wps_er_ap*) #1

declare dso_local %struct.wps_er_ap* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_init(i32*) #1

declare dso_local i32* @os_strdup(i8*) #1

declare dso_local i32 @os_free(%struct.wps_er_ap*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @http_client_url(i32*, i32*, i32, i32, %struct.wps_er_ap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
