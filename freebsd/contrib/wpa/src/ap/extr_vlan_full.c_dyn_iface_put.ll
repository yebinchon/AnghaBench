; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_dyn_iface_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_dyn_iface_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hapd_interfaces* }
%struct.hapd_interfaces = type { %struct.dynamic_iface* }
%struct.dynamic_iface = type { i32, %struct.dynamic_iface*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @dyn_iface_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dyn_iface_put(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dynamic_iface*, align 8
  %7 = alloca %struct.dynamic_iface*, align 8
  %8 = alloca %struct.dynamic_iface**, align 8
  %9 = alloca %struct.hapd_interfaces*, align 8
  %10 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dynamic_iface* null, %struct.dynamic_iface** %7, align 8
  %11 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %12 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %14, align 8
  store %struct.hapd_interfaces* %15, %struct.hapd_interfaces** %9, align 8
  %16 = load %struct.hapd_interfaces*, %struct.hapd_interfaces** %9, align 8
  %17 = getelementptr inbounds %struct.hapd_interfaces, %struct.hapd_interfaces* %16, i32 0, i32 0
  store %struct.dynamic_iface** %17, %struct.dynamic_iface*** %8, align 8
  %18 = load %struct.dynamic_iface**, %struct.dynamic_iface*** %8, align 8
  %19 = load %struct.dynamic_iface*, %struct.dynamic_iface** %18, align 8
  store %struct.dynamic_iface* %19, %struct.dynamic_iface** %6, align 8
  br label %20

20:                                               ; preds = %33, %2
  %21 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %22 = icmp ne %struct.dynamic_iface* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %26 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @os_strcmp(i8* %24, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %37

31:                                               ; preds = %23
  %32 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  store %struct.dynamic_iface* %32, %struct.dynamic_iface** %7, align 8
  br label %33

33:                                               ; preds = %31
  %34 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %35 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %34, i32 0, i32 1
  %36 = load %struct.dynamic_iface*, %struct.dynamic_iface** %35, align 8
  store %struct.dynamic_iface* %36, %struct.dynamic_iface** %6, align 8
  br label %20

37:                                               ; preds = %30, %20
  %38 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %39 = icmp ne %struct.dynamic_iface* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %72

41:                                               ; preds = %37
  %42 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %43 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, -1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %47 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %72

51:                                               ; preds = %41
  %52 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %53 = icmp ne %struct.dynamic_iface* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %56 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %55, i32 0, i32 1
  %57 = load %struct.dynamic_iface*, %struct.dynamic_iface** %56, align 8
  %58 = load %struct.dynamic_iface*, %struct.dynamic_iface** %7, align 8
  %59 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %58, i32 0, i32 1
  store %struct.dynamic_iface* %57, %struct.dynamic_iface** %59, align 8
  br label %65

60:                                               ; preds = %51
  %61 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %62 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %61, i32 0, i32 1
  %63 = load %struct.dynamic_iface*, %struct.dynamic_iface** %62, align 8
  %64 = load %struct.dynamic_iface**, %struct.dynamic_iface*** %8, align 8
  store %struct.dynamic_iface* %63, %struct.dynamic_iface** %64, align 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %67 = getelementptr inbounds %struct.dynamic_iface, %struct.dynamic_iface* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %10, align 4
  %69 = load %struct.dynamic_iface*, %struct.dynamic_iface** %6, align 8
  %70 = call i32 @os_free(%struct.dynamic_iface* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %50, %40
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @os_strcmp(i8*, i32) #1

declare dso_local i32 @os_free(%struct.dynamic_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
