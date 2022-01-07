; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_vlan_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_vlan_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_vlan = type { i64, %struct.hostapd_vlan*, i32 }
%struct.vlan_description = type { i64, i64*, i32 }

@MAX_VLAN_ID = common dso_local global i64 0, align 8
@MAX_NUM_TAGGED_VLAN = common dso_local global i32 0, align 4
@VLAN_ID_WILDCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_vlan_valid(%struct.hostapd_vlan* %0, %struct.vlan_description* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_vlan*, align 8
  %5 = alloca %struct.vlan_description*, align 8
  %6 = alloca %struct.hostapd_vlan*, align 8
  %7 = alloca i32, align 4
  store %struct.hostapd_vlan* %0, %struct.hostapd_vlan** %4, align 8
  store %struct.vlan_description* %1, %struct.vlan_description** %5, align 8
  %8 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %4, align 8
  store %struct.hostapd_vlan* %8, %struct.hostapd_vlan** %6, align 8
  %9 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %10 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %15 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %20 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAX_VLAN_ID, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %13, %2
  store i32 0, i32* %3, align 4
  br label %89

25:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MAX_NUM_TAGGED_VLAN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %32 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %30
  %40 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %41 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAX_VLAN_ID, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39, %30
  store i32 0, i32* %3, align 4
  br label %89

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %56 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %61 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %89

67:                                               ; preds = %59, %54
  br label %68

68:                                               ; preds = %84, %67
  %69 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %70 = icmp ne %struct.hostapd_vlan* %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %73 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %72, i32 0, i32 2
  %74 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %75 = call i32 @vlan_compare(i32* %73, %struct.vlan_description* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %79 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VLAN_ID_WILDCARD, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %71
  store i32 1, i32* %3, align 4
  br label %89

84:                                               ; preds = %77
  %85 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %86 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %85, i32 0, i32 1
  %87 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %86, align 8
  store %struct.hostapd_vlan* %87, %struct.hostapd_vlan** %6, align 8
  br label %68

88:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %83, %66, %49, %24
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @vlan_compare(i32*, %struct.vlan_description*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
