; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_addr_filter_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_addr_filter_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_config = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@pt_addr_cfg_filter = common dso_local global i32 0, align 4
@pt_addr_cfg_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @addr_filter_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_filter_0() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_config, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @pt_config_init(%struct.pt_config* %2)
  %8 = load i32, i32* @pt_addr_cfg_filter, align 4
  %9 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 4
  %13 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 40960, i32* %14, align 4
  %15 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i32 45056, i32* %16, align 4
  %17 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ptu_uint_ne(i32 %20, i64 0)
  %22 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %23 = call i32 @pt_filter_addr_cfg(%struct.TYPE_8__* %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @pt_addr_cfg_filter, align 4
  %26 = call i32 @ptu_uint_eq(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %28 = call i32 @pt_filter_addr_a(%struct.TYPE_8__* %27, i32 0)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ptu_uint_eq(i32 %29, i32 40960)
  %31 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %32 = call i32 @pt_filter_addr_b(%struct.TYPE_8__* %31, i32 0)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @ptu_uint_eq(i32 %33, i32 45056)
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %45, %0
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @pt_filter_addr_cfg(%struct.TYPE_8__* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @pt_addr_cfg_disabled, align 4
  %44 = call i32 @ptu_uint_eq(i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %35

48:                                               ; preds = %35
  %49 = call i32 (...) @ptu_passed()
  %50 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  ret i32 %52
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
