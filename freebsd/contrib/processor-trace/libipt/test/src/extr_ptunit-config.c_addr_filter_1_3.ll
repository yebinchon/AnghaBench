; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_addr_filter_1_3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_addr_filter_1_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_config = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@pt_addr_cfg_filter = common dso_local global i32 0, align 4
@pt_addr_cfg_stop = common dso_local global i32 0, align 4
@pt_addr_cfg_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @addr_filter_1_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_filter_1_3() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_config, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @pt_config_init(%struct.pt_config* %2)
  %7 = load i32, i32* @pt_addr_cfg_filter, align 4
  %8 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 4
  %12 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32 40960, i32* %13, align 4
  %14 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 45056, i32* %15, align 4
  %16 = load i32, i32* @pt_addr_cfg_stop, align 4
  %17 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i32 16818176, i32* %22, align 4
  %23 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i32 16822272, i32* %24, align 4
  %25 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ptu_uint_ne(i32 %28, i64 0)
  %30 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %31 = call i32 @pt_filter_addr_cfg(%struct.TYPE_8__* %30, i32 0)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @pt_addr_cfg_disabled, align 4
  %34 = call i32 @ptu_uint_eq(i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %36 = call i32 @pt_filter_addr_cfg(%struct.TYPE_8__* %35, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @pt_addr_cfg_filter, align 4
  %39 = call i32 @ptu_uint_eq(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %41 = call i32 @pt_filter_addr_a(%struct.TYPE_8__* %40, i32 1)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ptu_uint_eq(i32 %42, i32 40960)
  %44 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %45 = call i32 @pt_filter_addr_b(%struct.TYPE_8__* %44, i32 1)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ptu_uint_eq(i32 %46, i32 45056)
  %48 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %49 = call i32 @pt_filter_addr_cfg(%struct.TYPE_8__* %48, i32 2)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @pt_addr_cfg_disabled, align 4
  %52 = call i32 @ptu_uint_eq(i32 %50, i32 %51)
  %53 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %54 = call i32 @pt_filter_addr_cfg(%struct.TYPE_8__* %53, i32 3)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @pt_addr_cfg_stop, align 4
  %57 = call i32 @ptu_uint_eq(i32 %55, i32 %56)
  %58 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %59 = call i32 @pt_filter_addr_a(%struct.TYPE_8__* %58, i32 3)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @ptu_uint_eq(i32 %60, i32 16818176)
  %62 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %63 = call i32 @pt_filter_addr_b(%struct.TYPE_8__* %62, i32 3)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @ptu_uint_eq(i32 %64, i32 16822272)
  %66 = call i32 (...) @ptu_passed()
  %67 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  ret i32 %69
}

declare dso_local i32 @pt_config_init(%struct.pt_config*) #1

declare dso_local i32 @ptu_uint_ne(i32, i64) #1

declare dso_local i32 @pt_filter_addr_cfg(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i32) #1

declare dso_local i32 @pt_filter_addr_a(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pt_filter_addr_b(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
