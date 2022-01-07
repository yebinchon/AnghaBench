; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PMAP_SHPGPERPROC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"L2 Table\00", align 1
@L2_TABLE_SIZE_REAL = common dso_local global i32 0, align 4
@pmap_l2ptp_ctor = common dso_local global i32* null, align 8
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@UMA_ZONE_VM = common dso_local global i32 0, align 4
@UMA_ZONE_NOFREE = common dso_local global i32 0, align 4
@l2zone = common dso_local global i8* null, align 8
@l2table_zone = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"PV ENTRY\00", align 1
@pvzone = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"vm.pmap.shpgperproc\00", align 1
@maxproc = common dso_local global i32 0, align 4
@vm_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@pv_entry_max = common dso_local global i32 0, align 4
@pv_entry_high_water = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"pmap_init: done!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PMAP_SHPGPERPROC, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @L2_TABLE_SIZE_REAL, align 4
  %4 = load i32*, i32** @pmap_l2ptp_ctor, align 8
  %5 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %6 = load i32, i32* @UMA_ZONE_VM, align 4
  %7 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %8 = or i32 %6, %7
  %9 = call i8* @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %3, i32* %4, i32* null, i32* null, i32* null, i32 %5, i32 %8)
  store i8* %9, i8** @l2zone, align 8
  %10 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %11 = load i32, i32* @UMA_ZONE_VM, align 4
  %12 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %10, i32 %13)
  store i8* %14, i8** @l2table_zone, align 8
  %15 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %16 = load i32, i32* @UMA_ZONE_VM, align 4
  %17 = load i32, i32* @UMA_ZONE_NOFREE, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %15, i32 %18)
  store i8* %19, i8** @pvzone, align 8
  %20 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @maxproc, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* @pv_entry_max, align 4
  %26 = load i8*, i8** @pvzone, align 8
  %27 = load i32, i32* @pv_entry_max, align 4
  %28 = call i32 @uma_zone_reserve_kva(i8* %26, i32 %27)
  %29 = load i32, i32* @pv_entry_max, align 4
  %30 = sdiv i32 %29, 10
  %31 = mul nsw i32 9, %30
  store i32 %31, i32* @pv_entry_high_water, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @PDEBUG(i32 1, i32 %32)
  ret void
}

declare dso_local i8* @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @uma_zone_reserve_kva(i8*, i32) #1

declare dso_local i32 @PDEBUG(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
