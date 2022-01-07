; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_flush_pmkid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_flush_pmkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i64, %struct.ndis_pmkid_entry* }
%struct.ndis_pmkid_entry = type { %struct.ndis_pmkid_entry* }
%struct.TYPE_3__ = type { i32, i64 }

@Ndis802_11AuthModeWPA2 = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"NDIS: OID_802_11_PMKID (flush)\00", align 1
@OID_802_11_PMKID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @wpa_driver_ndis_flush_pmkid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_flush_pmkid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_driver_ndis_data*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.ndis_pmkid_entry*, align 8
  %7 = alloca %struct.ndis_pmkid_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.wpa_driver_ndis_data*
  store %struct.wpa_driver_ndis_data* %11, %struct.wpa_driver_ndis_data** %4, align 8
  %12 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %18, i32 0, i32 1
  %20 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %19, align 8
  store %struct.ndis_pmkid_entry* %20, %struct.ndis_pmkid_entry** %6, align 8
  %21 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %21, i32 0, i32 1
  store %struct.ndis_pmkid_entry* null, %struct.ndis_pmkid_entry** %22, align 8
  br label %23

23:                                               ; preds = %26, %17
  %24 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %6, align 8
  %25 = icmp ne %struct.ndis_pmkid_entry* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %6, align 8
  store %struct.ndis_pmkid_entry* %27, %struct.ndis_pmkid_entry** %7, align 8
  %28 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %6, align 8
  %29 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %28, i32 0, i32 0
  %30 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %29, align 8
  store %struct.ndis_pmkid_entry* %30, %struct.ndis_pmkid_entry** %6, align 8
  %31 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %32 = call i32 @os_free(%struct.ndis_pmkid_entry* %31)
  br label %23

33:                                               ; preds = %23
  %34 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %35 = call i32 @ndis_get_auth_mode(%struct.wpa_driver_ndis_data* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @Ndis802_11AuthModeWPA2, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %41 = load i32, i32* @Ndis802_11AuthModeWPA2, align 4
  %42 = call i32 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = call i32 @os_memset(%struct.TYPE_3__* %5, i32 0, i32 16)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 8, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @MSG_MSGDUMP, align 4
  %48 = bitcast %struct.TYPE_3__* %5 to i32*
  %49 = call i32 @wpa_hexdump(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %48, i32 8)
  %50 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %51 = load i32, i32* @OID_802_11_PMKID, align 4
  %52 = bitcast %struct.TYPE_3__* %5 to i8*
  %53 = call i32 @ndis_set_oid(%struct.wpa_driver_ndis_data* %50, i32 %51, i8* %52, i32 8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @Ndis802_11AuthModeWPA2, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %43
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @os_free(%struct.ndis_pmkid_entry*) #1

declare dso_local i32 @ndis_get_auth_mode(%struct.wpa_driver_ndis_data*) #1

declare dso_local i32 @ndis_set_auth_mode(%struct.wpa_driver_ndis_data*, i32) #1

declare dso_local i32 @os_memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @ndis_set_oid(%struct.wpa_driver_ndis_data*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
