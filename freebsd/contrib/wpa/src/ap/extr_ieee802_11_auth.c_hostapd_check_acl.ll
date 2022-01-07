; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_check_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_check_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.vlan_description = type { i32 }

@HOSTAPD_ACL_ACCEPT = common dso_local global i32 0, align 4
@HOSTAPD_ACL_REJECT = common dso_local global i32 0, align 4
@ACCEPT_UNLESS_DENIED = common dso_local global i64 0, align 8
@DENY_UNLESS_ACCEPTED = common dso_local global i64 0, align 8
@HOSTAPD_ACL_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_check_acl(%struct.hostapd_data* %0, i32* %1, %struct.vlan_description* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vlan_description*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.vlan_description* %2, %struct.vlan_description** %7, align 8
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %14 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %20 = call i64 @hostapd_maclist_found(i32 %12, i32 %17, i32* %18, %struct.vlan_description* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @HOSTAPD_ACL_ACCEPT, align 4
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %31 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.vlan_description*, %struct.vlan_description** %7, align 8
  %37 = call i64 @hostapd_maclist_found(i32 %29, i32 %34, i32* %35, %struct.vlan_description* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  store i32 %40, i32* %4, align 4
  br label %63

41:                                               ; preds = %24
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ACCEPT_UNLESS_DENIED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @HOSTAPD_ACL_ACCEPT, align 4
  store i32 %50, i32* %4, align 4
  br label %63

51:                                               ; preds = %41
  %52 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %53 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DENY_UNLESS_ACCEPTED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @HOSTAPD_ACL_REJECT, align 4
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @HOSTAPD_ACL_PENDING, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %59, %49, %39, %22
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @hostapd_maclist_found(i32, i32, i32*, %struct.vlan_description*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
