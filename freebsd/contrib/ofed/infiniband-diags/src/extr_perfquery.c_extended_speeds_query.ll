; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_extended_speeds_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_perfquery.c_extended_speeds_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reset_only = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"PortExtendedSpeedsCounters with RS-FEC Active\00", align 1
@IB_GSI_PORT_EXT_SPEEDS_COUNTERS = common dso_local global i32 0, align 4
@mad_dump_port_ext_speeds_counters_rsfec_active = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"PortExtendedSpeedsCounters\00", align 1
@mad_dump_port_ext_speeds_counters = common dso_local global i32 0, align 4
@reset = common dso_local global i64 0, align 8
@pc = common dso_local global i32 0, align 4
@ibd_timeout = common dso_local global i32 0, align 4
@srcport = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot reset PortExtendedSpeedsCounters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @extended_speeds_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extended_speeds_query(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i64, i64* @reset_only, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @is_rsfec_mode_active(i32* %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IB_GSI_PORT_EXT_SPEEDS_COUNTERS, align 4
  %24 = load i32, i32* @mad_dump_port_ext_speeds_counters_rsfec_active, align 4
  %25 = call i32 @common_func(i32* %20, i32 %21, i32 %22, i32 1, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %33

26:                                               ; preds = %13
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @IB_GSI_PORT_EXT_SPEEDS_COUNTERS, align 4
  %31 = load i32, i32* @mad_dump_port_ext_speeds_counters, align 4
  %32 = call i32 @common_func(i32* %27, i32 %28, i32 %29, i32 1, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %19
  br label %34

34:                                               ; preds = %33, %4
  %35 = load i64, i64* @reset_only, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @reset, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37, %34
  %41 = load i32, i32* @pc, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ibd_timeout, align 4
  %46 = load i32, i32* @srcport, align 4
  %47 = call i32 @ext_speeds_reset_via(i32 %41, i32* %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = call i32 @IBEXIT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40, %37
  ret void
}

declare dso_local i64 @is_rsfec_mode_active(i32*, i32, i32) #1

declare dso_local i32 @common_func(i32*, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ext_speeds_reset_via(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @IBEXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
