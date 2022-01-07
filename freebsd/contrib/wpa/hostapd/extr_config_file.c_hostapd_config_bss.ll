; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_config_file.c_hostapd_config_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_config = type { %struct.hostapd_bss_config*, i64, %struct.hostapd_bss_config** }
%struct.hostapd_bss_config = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Failed to allocate memory for multi-BSS entry\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Failed to allocate memory for multi-BSS RADIUS data\00", align 1
@IFNAMSIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_config*, i8*)* @hostapd_config_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_config_bss(%struct.hostapd_config* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_config*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostapd_bss_config**, align 8
  %7 = alloca %struct.hostapd_bss_config*, align 8
  store %struct.hostapd_config* %0, %struct.hostapd_config** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %80

13:                                               ; preds = %2
  %14 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %15 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %14, i32 0, i32 2
  %16 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %15, align 8
  %17 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %18 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = call %struct.hostapd_bss_config** @os_realloc_array(%struct.hostapd_bss_config** %16, i64 %20, i32 8)
  store %struct.hostapd_bss_config** %21, %struct.hostapd_bss_config*** %6, align 8
  %22 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %6, align 8
  %23 = icmp eq %struct.hostapd_bss_config** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @MSG_ERROR, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %80

27:                                               ; preds = %13
  %28 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %6, align 8
  %29 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %29, i32 0, i32 2
  store %struct.hostapd_bss_config** %28, %struct.hostapd_bss_config*** %30, align 8
  %31 = call i8* @os_zalloc(i32 16)
  %32 = bitcast i8* %31 to %struct.hostapd_bss_config*
  store %struct.hostapd_bss_config* %32, %struct.hostapd_bss_config** %7, align 8
  %33 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %34 = icmp eq %struct.hostapd_bss_config* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %80

36:                                               ; preds = %27
  %37 = call i8* @os_zalloc(i32 4)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %40 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %42 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @MSG_ERROR, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %49 = call i32 @os_free(%struct.hostapd_bss_config* %48)
  store i32 -1, i32* %3, align 4
  br label %80

50:                                               ; preds = %36
  %51 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %52 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %53 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %52, i32 0, i32 2
  %54 = load %struct.hostapd_bss_config**, %struct.hostapd_bss_config*** %53, align 8
  %55 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %56 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = getelementptr inbounds %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %54, i64 %57
  store %struct.hostapd_bss_config* %51, %struct.hostapd_bss_config** %59, align 8
  %60 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %61 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %62 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %61, i32 0, i32 0
  store %struct.hostapd_bss_config* %60, %struct.hostapd_bss_config** %62, align 8
  %63 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %64 = call i32 @hostapd_config_defaults_bss(%struct.hostapd_bss_config* %63)
  %65 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %66 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @os_strlcpy(i32 %67, i8* %68, i32 4)
  %70 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %71 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  %75 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @IFNAMSIZ, align 8
  %78 = add nsw i64 %77, 1
  %79 = call i32 @os_memcpy(i32 %73, i32 %76, i64 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %50, %45, %35, %24, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.hostapd_bss_config** @os_realloc_array(%struct.hostapd_bss_config**, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.hostapd_bss_config*) #1

declare dso_local i32 @hostapd_config_defaults_bss(%struct.hostapd_bss_config*) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
