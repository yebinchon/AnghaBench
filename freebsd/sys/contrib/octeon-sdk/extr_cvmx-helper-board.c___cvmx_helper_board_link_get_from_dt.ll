; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___cvmx_helper_board_link_get_from_dt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___cvmx_helper_board_link_get_from_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_helper_board_link_get_from_dt(%struct.TYPE_12__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  store i32 %1, i32* %3, align 4
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = call %struct.TYPE_13__* (...) @cvmx_sysinfo_get()
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %0, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  store i32 1000, i32* %21, align 8
  br label %55

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  call void @__get_phy_info_from_dt(%struct.TYPE_11__* sret %5, i32 %23)
  %24 = bitcast %struct.TYPE_11__* %4 to i8*
  %25 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %55

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @__switch_mdio_mux(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %50 [
    i32 129, label %40
    i32 128, label %45
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  call void @__get_broadcom_phy_link_state(%struct.TYPE_12__* sret %6, i64 %42)
  %43 = bitcast %struct.TYPE_12__* %0 to i8*
  %44 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 24, i1 false)
  br label %54

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  call void @__get_marvell_phy_link_state(%struct.TYPE_12__* sret %7, i64 %47)
  %48 = bitcast %struct.TYPE_12__* %0 to i8*
  %49 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  br label %54

50:                                               ; preds = %37
  %51 = load i32, i32* %3, align 4
  call void @__get_inband_link_state(%struct.TYPE_12__* sret %8, i32 %51)
  %52 = bitcast %struct.TYPE_12__* %0 to i8*
  %53 = bitcast %struct.TYPE_12__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 24, i1 false)
  br label %54

54:                                               ; preds = %50, %45, %40
  br label %55

55:                                               ; preds = %54, %29, %15
  ret void
}

declare dso_local %struct.TYPE_13__* @cvmx_sysinfo_get(...) #1

declare dso_local void @__get_phy_info_from_dt(%struct.TYPE_11__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__switch_mdio_mux(i32) #1

declare dso_local void @__get_broadcom_phy_link_state(%struct.TYPE_12__* sret, i64) #1

declare dso_local void @__get_marvell_phy_link_state(%struct.TYPE_12__* sret, i64) #1

declare dso_local void @__get_inband_link_state(%struct.TYPE_12__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
