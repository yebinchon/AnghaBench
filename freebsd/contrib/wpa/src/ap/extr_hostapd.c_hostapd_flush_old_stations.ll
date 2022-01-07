; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_flush_old_stations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_flush_old_stations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Flushing old station entries\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not connect to kernel driver\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Deauthenticate all stations\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32)* @hostapd_flush_old_stations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_flush_old_stations(%struct.hostapd_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %15 = call i64 @hostapd_drv_none(%struct.hostapd_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %19 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %73

23:                                               ; preds = %17
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %23
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_dbg(i32 %33, i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %37 = call i64 @hostapd_flush(%struct.hostapd_data* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %41 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MSG_WARNING, align 4
  %44 = call i32 @wpa_msg(i32 %42, i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %45

45:                                               ; preds = %39, %30
  br label %46

46:                                               ; preds = %45, %23
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %48 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %53 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %60 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = call i32 @wpa_dbg(i32 %61, i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @os_memset(i32* %13, i32 255, i32 %64)
  %66 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @hostapd_drv_sta_deauth(%struct.hostapd_data* %66, i32* %13, i32 %67)
  br label %69

69:                                               ; preds = %58, %51, %46
  %70 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %71 = call i32 @hostapd_free_stas(%struct.hostapd_data* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %69, %22
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hostapd_drv_none(%struct.hostapd_data*) #2

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #2

declare dso_local i64 @hostapd_flush(%struct.hostapd_data*) #2

declare dso_local i32 @wpa_msg(i32, i32, i8*) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @hostapd_drv_sta_deauth(%struct.hostapd_data*, i32*, i32) #2

declare dso_local i32 @hostapd_free_stas(%struct.hostapd_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
