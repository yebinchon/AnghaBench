; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_remove_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_remove_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@OID_802_11_REMOVE_KEY = common dso_local global i32 0, align 4
@OID_802_11_REMOVE_WEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_ndis_data*, i32, i32*, i32*, i32)* @wpa_driver_ndis_remove_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_remove_key(%struct.wpa_driver_ndis_data* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_driver_ndis_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = call i32 @os_memset(%struct.TYPE_3__* %12, i32 0, i32 12)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 12, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 1073741824
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = call i32 @os_memcpy(i32 %28, i32* %29, i32 %30)
  %32 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %7, align 8
  %33 = load i32, i32* @OID_802_11_REMOVE_KEY, align 4
  %34 = bitcast %struct.TYPE_3__* %12 to i8*
  %35 = call i32 @ndis_set_oid(%struct.wpa_driver_ndis_data* %32, i32 %33, i8* %34, i32 12)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %7, align 8
  %41 = load i32, i32* @OID_802_11_REMOVE_WEP, align 4
  %42 = bitcast i32* %13 to i8*
  %43 = call i32 @ndis_set_oid(%struct.wpa_driver_ndis_data* %40, i32 %41, i8* %42, i32 4)
  store i32 %43, i32* %15, align 4
  br label %45

44:                                               ; preds = %26
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 -1, i32* %6, align 4
  br label %53

52:                                               ; preds = %48, %45
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @os_memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @ndis_set_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
