; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_copy_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bss.c_wpa_bss_copy_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpa_scan_res = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.os_reltime = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_bss*, %struct.wpa_scan_res*, %struct.os_reltime*)* @wpa_bss_copy_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_bss_copy_res(%struct.wpa_bss* %0, %struct.wpa_scan_res* %1, %struct.os_reltime* %2) #0 {
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca %struct.wpa_scan_res*, align 8
  %6 = alloca %struct.os_reltime*, align 8
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store %struct.wpa_scan_res* %1, %struct.wpa_scan_res** %5, align 8
  store %struct.os_reltime* %2, %struct.os_reltime** %6, align 8
  %7 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %8 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %10, i32 0, i32 11
  store i32 %9, i32* %11, align 4
  %12 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = call i32 @os_memcpy(i32 %14, i32 %17, i32 %18)
  %20 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %24 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  %35 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %36 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %46 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %54 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %56 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %59 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %64 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.os_reltime*, %struct.os_reltime** %6, align 8
  %66 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_scan_res, %struct.wpa_scan_res* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %69, i32 0, i32 0
  %71 = call i32 @calculate_update_time(%struct.os_reltime* %65, i32 %68, i32* %70)
  ret void
}

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @calculate_update_time(%struct.os_reltime*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
