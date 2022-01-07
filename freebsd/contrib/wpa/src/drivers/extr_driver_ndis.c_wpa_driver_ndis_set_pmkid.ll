; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_set_pmkid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_set_pmkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32, %struct.ndis_pmkid_entry* }
%struct.ndis_pmkid_entry = type { %struct.ndis_pmkid_entry*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"NDIS: OID_802_11_PMKID\00", align 1
@OID_802_11_PMKID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_ndis_data*)* @wpa_driver_ndis_set_pmkid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_set_pmkid(%struct.wpa_driver_ndis_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_driver_ndis_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ndis_pmkid_entry*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %10, i32 0, i32 1
  %12 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %11, align 8
  store %struct.ndis_pmkid_entry* %12, %struct.ndis_pmkid_entry** %8, align 8
  br label %13

13:                                               ; preds = %25, %1
  %14 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %8, align 8
  %15 = icmp ne %struct.ndis_pmkid_entry* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  %26 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %8, align 8
  %27 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %26, i32 0, i32 0
  %28 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %27, align 8
  store %struct.ndis_pmkid_entry* %28, %struct.ndis_pmkid_entry** %8, align 8
  br label %13

29:                                               ; preds = %24, %13
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 8, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call %struct.TYPE_6__* @os_zalloc(i32 %35)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %9, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = icmp eq %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %99

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %48 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %47, i32 0, i32 1
  %49 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %48, align 8
  store %struct.ndis_pmkid_entry* %49, %struct.ndis_pmkid_entry** %8, align 8
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %81, %40
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %8, align 8
  %63 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @os_memcpy(i32* %61, i32 %64, i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %8, align 8
  %75 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @os_memcpy(i32* %73, i32 %76, i32 16)
  %78 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %8, align 8
  %79 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %78, i32 0, i32 0
  %80 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %79, align 8
  store %struct.ndis_pmkid_entry* %80, %struct.ndis_pmkid_entry** %8, align 8
  br label %81

81:                                               ; preds = %54
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %50

84:                                               ; preds = %50
  %85 = load i32, i32* @MSG_MSGDUMP, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %87 = bitcast %struct.TYPE_6__* %86 to i32*
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @wpa_hexdump(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %87, i32 %88)
  %90 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %91 = load i32, i32* @OID_802_11_PMKID, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = bitcast %struct.TYPE_6__* %92 to i8*
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @ndis_set_oid(%struct.wpa_driver_ndis_data* %90, i32 %91, i8* %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = call i32 @os_free(%struct.TYPE_6__* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %84, %39
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_6__* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @ndis_set_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i32) #1

declare dso_local i32 @os_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
