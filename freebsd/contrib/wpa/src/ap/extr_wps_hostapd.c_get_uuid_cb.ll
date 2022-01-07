; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_get_uuid_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_get_uuid_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.hostapd_data** }
%struct.hostapd_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, i8*)* @get_uuid_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_uuid_cb(%struct.hostapd_iface* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_iface*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32**
  store i32** %10, i32*** %6, align 8
  %11 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %12 = icmp eq %struct.hostapd_iface* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %55, %14
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %18 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load %struct.hostapd_iface*, %struct.hostapd_iface** %4, align 8
  %23 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %22, i32 0, i32 1
  %24 = load %struct.hostapd_data**, %struct.hostapd_data*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %24, i64 %25
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %26, align 8
  store %struct.hostapd_data* %27, %struct.hostapd_data** %8, align 8
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %21
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %34 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %32
  %40 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %41 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @is_nil_uuid(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %49 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32**, i32*** %6, align 8
  store i32* %52, i32** %53, align 8
  store i32 1, i32* %3, align 4
  br label %59

54:                                               ; preds = %39, %32, %21
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %15

58:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %47, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @is_nil_uuid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
