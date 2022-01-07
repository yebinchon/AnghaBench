; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_add_pmkid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_add_pmkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_pmkid_params = type { i32*, i32* }
%struct.wpa_driver_ndis_data = type { i64, %struct.ndis_pmkid_entry* }
%struct.ndis_pmkid_entry = type { %struct.ndis_pmkid_entry*, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.wpa_pmkid_params*)* @wpa_driver_ndis_add_pmkid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_add_pmkid(i8* %0, %struct.wpa_pmkid_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_pmkid_params*, align 8
  %6 = alloca %struct.wpa_driver_ndis_data*, align 8
  %7 = alloca %struct.ndis_pmkid_entry*, align 8
  %8 = alloca %struct.ndis_pmkid_entry*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wpa_pmkid_params* %1, %struct.wpa_pmkid_params** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.wpa_driver_ndis_data*
  store %struct.wpa_driver_ndis_data* %12, %struct.wpa_driver_ndis_data** %6, align 8
  %13 = load %struct.wpa_pmkid_params*, %struct.wpa_pmkid_params** %5, align 8
  %14 = getelementptr inbounds %struct.wpa_pmkid_params, %struct.wpa_pmkid_params* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load %struct.wpa_pmkid_params*, %struct.wpa_pmkid_params** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_pmkid_params, %struct.wpa_pmkid_params* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %2
  store i32 -1, i32* %3, align 4
  br label %106

25:                                               ; preds = %21
  %26 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %27 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %106

31:                                               ; preds = %25
  store %struct.ndis_pmkid_entry* null, %struct.ndis_pmkid_entry** %8, align 8
  %32 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %33 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %32, i32 0, i32 1
  %34 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %33, align 8
  store %struct.ndis_pmkid_entry* %34, %struct.ndis_pmkid_entry** %7, align 8
  br label %35

35:                                               ; preds = %47, %31
  %36 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %37 = icmp ne %struct.ndis_pmkid_entry* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %40 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i64 @os_memcmp(i32 %41, i32* %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %52

47:                                               ; preds = %38
  %48 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  store %struct.ndis_pmkid_entry* %48, %struct.ndis_pmkid_entry** %8, align 8
  %49 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %50 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %49, i32 0, i32 0
  %51 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %50, align 8
  store %struct.ndis_pmkid_entry* %51, %struct.ndis_pmkid_entry** %7, align 8
  br label %35

52:                                               ; preds = %46, %35
  %53 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %54 = icmp ne %struct.ndis_pmkid_entry* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %57 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @os_memcpy(i32 %58, i32* %59, i32 16)
  %61 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %8, align 8
  %62 = icmp ne %struct.ndis_pmkid_entry* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %65 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %64, i32 0, i32 0
  %66 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %65, align 8
  %67 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %8, align 8
  %68 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %67, i32 0, i32 0
  store %struct.ndis_pmkid_entry* %66, %struct.ndis_pmkid_entry** %68, align 8
  %69 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %70 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %69, i32 0, i32 1
  %71 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %70, align 8
  %72 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %73 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %72, i32 0, i32 0
  store %struct.ndis_pmkid_entry* %71, %struct.ndis_pmkid_entry** %73, align 8
  %74 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %75 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %76 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %75, i32 0, i32 1
  store %struct.ndis_pmkid_entry* %74, %struct.ndis_pmkid_entry** %76, align 8
  br label %77

77:                                               ; preds = %63, %55
  br label %103

78:                                               ; preds = %52
  %79 = call %struct.ndis_pmkid_entry* @os_malloc(i32 16)
  store %struct.ndis_pmkid_entry* %79, %struct.ndis_pmkid_entry** %7, align 8
  %80 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %81 = icmp ne %struct.ndis_pmkid_entry* %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %84 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i32 @os_memcpy(i32 %85, i32* %86, i32 %87)
  %89 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %90 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @os_memcpy(i32 %91, i32* %92, i32 16)
  %94 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %95 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %94, i32 0, i32 1
  %96 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %95, align 8
  %97 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %98 = getelementptr inbounds %struct.ndis_pmkid_entry, %struct.ndis_pmkid_entry* %97, i32 0, i32 0
  store %struct.ndis_pmkid_entry* %96, %struct.ndis_pmkid_entry** %98, align 8
  %99 = load %struct.ndis_pmkid_entry*, %struct.ndis_pmkid_entry** %7, align 8
  %100 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %101 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %100, i32 0, i32 1
  store %struct.ndis_pmkid_entry* %99, %struct.ndis_pmkid_entry** %101, align 8
  br label %102

102:                                              ; preds = %82, %78
  br label %103

103:                                              ; preds = %102, %77
  %104 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %6, align 8
  %105 = call i32 @wpa_driver_ndis_set_pmkid(%struct.wpa_driver_ndis_data* %104)
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %30, %24
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local %struct.ndis_pmkid_entry* @os_malloc(i32) #1

declare dso_local i32 @wpa_driver_ndis_set_pmkid(%struct.wpa_driver_ndis_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
