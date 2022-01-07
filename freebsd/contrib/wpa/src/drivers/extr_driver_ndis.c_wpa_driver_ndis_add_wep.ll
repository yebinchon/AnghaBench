; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_add_wep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_add_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NDIS: OID_802_11_ADD_WEP\00", align 1
@OID_802_11_ADD_WEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_ndis_data*, i32, i32, i32, i32*, i64)* @wpa_driver_ndis_add_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_add_wep(%struct.wpa_driver_ndis_data* %0, i32 %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_driver_ndis_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = add i64 12, %17
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* %15, align 8
  %20 = call %struct.TYPE_4__* @os_zalloc(i64 %19)
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %14, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %22 = icmp eq %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %62

24:                                               ; preds = %6
  %25 = load i64, i64* %15, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, -2147483648
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %24
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @os_memcpy(i32 %44, i32* %45, i64 %46)
  %48 = load i32, i32* @MSG_MSGDUMP, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %50 = bitcast %struct.TYPE_4__* %49 to i32*
  %51 = load i64, i64* %15, align 8
  %52 = call i32 @wpa_hexdump_key(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %50, i64 %51)
  %53 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %8, align 8
  %54 = load i32, i32* @OID_802_11_ADD_WEP, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %56 = bitcast %struct.TYPE_4__* %55 to i8*
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @ndis_set_oid(%struct.wpa_driver_ndis_data* %53, i32 %54, i8* %56, i64 %57)
  store i32 %58, i32* %16, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = call i32 @os_free(%struct.TYPE_4__* %59)
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %38, %23
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_4__* @os_zalloc(i64) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @ndis_set_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i64) #1

declare dso_local i32 @os_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
