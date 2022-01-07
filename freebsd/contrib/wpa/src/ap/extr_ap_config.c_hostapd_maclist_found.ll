; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_maclist_found.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_maclist_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_acl_entry = type { %struct.vlan_description, i32 }
%struct.vlan_description = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_maclist_found(%struct.mac_acl_entry* %0, i32 %1, i32* %2, %struct.vlan_description* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mac_acl_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vlan_description*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mac_acl_entry* %0, %struct.mac_acl_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.vlan_description* %3, %struct.vlan_description** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  br label %16

16:                                               ; preds = %58, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 %21, %22
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %12, align 4
  %25 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %6, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %25, i64 %27
  %29 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @os_memcmp(i32 %30, i32* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %20
  %37 = load %struct.vlan_description*, %struct.vlan_description** %9, align 8
  %38 = icmp ne %struct.vlan_description* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.vlan_description*, %struct.vlan_description** %9, align 8
  %41 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %41, i64 %43
  %45 = getelementptr inbounds %struct.mac_acl_entry, %struct.mac_acl_entry* %44, i32 0, i32 0
  %46 = bitcast %struct.vlan_description* %40 to i8*
  %47 = bitcast %struct.vlan_description* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  br label %48

48:                                               ; preds = %39, %36
  store i32 1, i32* %5, align 4
  br label %60

49:                                               ; preds = %20
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %16

59:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %48
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @os_memcmp(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
