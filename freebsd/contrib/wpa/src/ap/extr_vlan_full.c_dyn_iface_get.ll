; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_dyn_iface_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_dyn_iface_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hapd_interfaces* }
%struct.hapd_interfaces = type { %struct.dynamic_iface* }
%struct.dynamic_iface = type { i32, i32, %struct.dynamic_iface*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i8*, i32)* @dyn_iface_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dyn_iface_get(%struct.hostapd_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dynamic_iface*, align 8
  %8 = alloca %struct.dynamic_iface**, align 8
  %9 = alloca %struct.hapd_interfaces*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %11 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %13, align 8
  store %struct.hapd_interfaces* %14, %struct.hapd_interfaces** %9, align 8
  %15 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %9, align 8
  %16 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %15, i32 0, i32 0
  store %struct.dynamic_iface** %16, %struct.dynamic_iface*** %8, align 8
  %17 = load %struct.dynamic_iface**, %struct.dynamic_iface*** %8, align 8
  %18 = load %struct.dynamic_iface*, %struct.dynamic_iface** %17, align 8
  store %struct.dynamic_iface* %18, %struct.dynamic_iface** %7, align 8
  br label %19

19:                                               ; preds = %31, %3
  %20 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %21 = icmp ne %struct.dynamic_iface* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %25 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @os_strcmp(i8* %23, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %35

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %33 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %32, i32 0, i32 2
  %34 = load %struct.dynamic_iface*, %struct.dynamic_iface** %33, align 8
  store %struct.dynamic_iface* %34, %struct.dynamic_iface** %7, align 8
  br label %19

35:                                               ; preds = %29, %19
  %36 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %37 = icmp ne %struct.dynamic_iface* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %40 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %45 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %74

48:                                               ; preds = %35
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %74

52:                                               ; preds = %48
  %53 = call %struct.dynamic_iface* @os_zalloc(i32 24)
  store %struct.dynamic_iface* %53, %struct.dynamic_iface** %7, align 8
  %54 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %55 = icmp ne %struct.dynamic_iface* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %74

57:                                               ; preds = %52
  %58 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %59 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @os_strlcpy(i32 %60, i8* %61, i32 4)
  %63 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %64 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %67 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dynamic_iface**, %struct.dynamic_iface*** %8, align 8
  %69 = load %struct.dynamic_iface*, %struct.dynamic_iface** %68, align 8
  %70 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %71 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %70, i32 0, i32 2
  store %struct.dynamic_iface* %69, %struct.dynamic_iface** %71, align 8
  %72 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %73 = load %struct.dynamic_iface**, %struct.dynamic_iface*** %8, align 8
  store %struct.dynamic_iface* %72, %struct.dynamic_iface** %73, align 8
  br label %74

74:                                               ; preds = %57, %56, %51, %38
  ret void
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local %struct.dynamic_iface* @os_zalloc(i32) #1

declare dso_local i32 @os_strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
