; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_acl_del_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_acl_del_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_acl_entry = type { i32 }
%struct.vlan_description = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_acl_entry**, i32*, i8*)* @hostapd_ctrl_iface_acl_del_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_acl_del_mac(%struct.mac_acl_entry** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac_acl_entry**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vlan_description, align 4
  %11 = alloca i32, align 4
  store %struct.mac_acl_entry** %0, %struct.mac_acl_entry*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @hwaddr_aton(i8* %21, i32* %15)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %37

25:                                               ; preds = %20
  %26 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %5, align 8
  %27 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %26, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @hostapd_maclist_found(%struct.mac_acl_entry* %27, i32 %29, i32* %15, %struct.vlan_description* %10)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @hostapd_remove_acl_mac(%struct.mac_acl_entry** %33, i32* %34, i32* %15)
  br label %36

36:                                               ; preds = %32, %25
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %24, %19
  %38 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i64 @hostapd_maclist_found(%struct.mac_acl_entry*, i32, i32*, %struct.vlan_description*) #2

declare dso_local i32 @hostapd_remove_acl_mac(%struct.mac_acl_entry**, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
