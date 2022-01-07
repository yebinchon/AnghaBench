; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_build_sae_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_rsn.c_mesh_rsn_build_sae_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i8*, i8*, i32 }
%struct.sta_info = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"SAE: No password available\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SAE: Failed to select group\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.sta_info*)* @mesh_rsn_build_sae_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_rsn_build_sae_commit(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.sta_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store %struct.sta_info* %2, %struct.sta_info** %7, align 8
  %9 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %10 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %16 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_msg(%struct.wpa_supplicant* %22, i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %96

25:                                               ; preds = %18
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %28 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i64 @mesh_rsn_sae_group(%struct.wpa_supplicant* %26, %struct.TYPE_5__* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_msg(%struct.wpa_supplicant* %33, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %96

36:                                               ; preds = %25
  %37 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %38 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %78

43:                                               ; preds = %36
  %44 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %78, label %52

52:                                               ; preds = %43
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %54 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %59 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @os_strdup(i32 %60)
  %62 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 %61, i64* %67, align 8
  %68 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %96

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %52, %43, %36
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %83 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @os_strlen(i8* %87)
  %89 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %90 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %93 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = call i32 @sae_prepare_commit(i32 %81, i32 %84, i32* %86, i32 %88, i32 %91, %struct.TYPE_5__* %94)
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %78, %76, %32, %21
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i64 @mesh_rsn_sae_group(%struct.wpa_supplicant*, %struct.TYPE_5__*) #1

declare dso_local i64 @os_strdup(i32) #1

declare dso_local i32 @sae_prepare_commit(i32, i32, i32*, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @os_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
