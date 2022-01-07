; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_acl_add_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hostapd/extr_ctrl_iface.c_hostapd_ctrl_iface_acl_add_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_acl_entry = type { i32 }
%struct.vlan_description = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"VLAN_ID=\00", align 1
@hostapd_acl_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac_acl_entry**, i32*, i8*)* @hostapd_ctrl_iface_acl_add_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_ctrl_iface_acl_add_mac(%struct.mac_acl_entry** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac_acl_entry**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vlan_description, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.mac_acl_entry** %0, %struct.mac_acl_entry*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @hwaddr_aton(i8* %19, i32* %18)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %63

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @os_strstr(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** %13, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %5, align 8
  %34 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hostapd_maclist_found(%struct.mac_acl_entry* %34, i32 %36, i32* %18, %struct.vlan_description* %10)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %32
  %40 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @hostapd_add_acl_maclist(%struct.mac_acl_entry** %40, i32* %41, i32 %42, i32* %18)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %5, align 8
  %48 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %47, align 8
  %49 = icmp ne %struct.mac_acl_entry* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.mac_acl_entry**, %struct.mac_acl_entry*** %5, align 8
  %52 = load %struct.mac_acl_entry*, %struct.mac_acl_entry** %51, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @hostapd_acl_comp, align 4
  %56 = call i32 @qsort(%struct.mac_acl_entry* %52, i32 %54, i32 4, i32 %55)
  br label %57

57:                                               ; preds = %50, %46, %39
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 -1, i32 0
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %63

63:                                               ; preds = %58, %22
  %64 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local i8* @os_strstr(i8*, i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @hostapd_maclist_found(%struct.mac_acl_entry*, i32, i32*, %struct.vlan_description*) #2

declare dso_local i32 @hostapd_add_acl_maclist(%struct.mac_acl_entry**, i32*, i32, i32*) #2

declare dso_local i32 @qsort(%struct.mac_acl_entry*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
