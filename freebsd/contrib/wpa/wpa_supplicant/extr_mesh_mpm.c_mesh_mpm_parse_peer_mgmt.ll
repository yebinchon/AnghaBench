; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_parse_peer_mgmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_parse_peer_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.mesh_peer_mgmt_ie = type { i64*, i64*, i64*, i64*, i64* }

@SAE_PMKID_LEN = common dso_local global i64 0, align 8
@PLINK_OPEN = common dso_local global i64 0, align 8
@PLINK_CONFIRM = common dso_local global i64 0, align 8
@PLINK_CLOSE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"MPM: Invalid peer mgmt ie\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i64, i64*, i64, %struct.mesh_peer_mgmt_ie*)* @mesh_mpm_parse_peer_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_mpm_parse_peer_mgmt(%struct.wpa_supplicant* %0, i64 %1, i64* %2, i64 %3, %struct.mesh_peer_mgmt_ie* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mesh_peer_mgmt_ie*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.mesh_peer_mgmt_ie* %4, %struct.mesh_peer_mgmt_ie** %11, align 8
  %12 = load %struct.mesh_peer_mgmt_ie*, %struct.mesh_peer_mgmt_ie** %11, align 8
  %13 = call i32 @os_memset(%struct.mesh_peer_mgmt_ie* %12, i32 0, i32 40)
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @SAE_PMKID_LEN, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %5
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* @SAE_PMKID_LEN, align 8
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load %struct.mesh_peer_mgmt_ie*, %struct.mesh_peer_mgmt_ie** %11, align 8
  %25 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %24, i32 0, i32 0
  store i64* %23, i64** %25, align 8
  %26 = load i64, i64* @SAE_PMKID_LEN, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %17, %5
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @PLINK_OPEN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 4
  br i1 %35, label %53, label %36

36:                                               ; preds = %33, %29
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @PLINK_CONFIRM, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 6
  br i1 %42, label %53, label %43

43:                                               ; preds = %40, %36
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @PLINK_CLOSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 6
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i64, i64* %10, align 8
  %52 = icmp ne i64 %51, 8
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %40, %33
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 @wpa_msg(%struct.wpa_supplicant* %54, i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %97

57:                                               ; preds = %50, %47, %43
  %58 = load i64, i64* %10, align 8
  %59 = icmp ult i64 %58, 4
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %97

61:                                               ; preds = %57
  %62 = load i64*, i64** %9, align 8
  %63 = load %struct.mesh_peer_mgmt_ie*, %struct.mesh_peer_mgmt_ie** %11, align 8
  %64 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %63, i32 0, i32 1
  store i64* %62, i64** %64, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load %struct.mesh_peer_mgmt_ie*, %struct.mesh_peer_mgmt_ie** %11, align 8
  %68 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %67, i32 0, i32 2
  store i64* %66, i64** %68, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 4
  store i64* %70, i64** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %71, 4
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @PLINK_CLOSE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %61
  %77 = load i64, i64* %10, align 8
  %78 = icmp ult i64 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 -1, i32* %6, align 4
  br label %97

80:                                               ; preds = %76
  %81 = load i64*, i64** %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = getelementptr inbounds i64, i64* %83, i64 -2
  %85 = load %struct.mesh_peer_mgmt_ie*, %struct.mesh_peer_mgmt_ie** %11, align 8
  %86 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %85, i32 0, i32 3
  store i64* %84, i64** %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %87, 2
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %80, %61
  %90 = load i64, i64* %10, align 8
  %91 = icmp uge i64 %90, 2
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i64*, i64** %9, align 8
  %94 = load %struct.mesh_peer_mgmt_ie*, %struct.mesh_peer_mgmt_ie** %11, align 8
  %95 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %94, i32 0, i32 4
  store i64* %93, i64** %95, align 8
  br label %96

96:                                               ; preds = %92, %89
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %79, %60, %53
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @os_memset(%struct.mesh_peer_mgmt_ie*, i32, i32) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
