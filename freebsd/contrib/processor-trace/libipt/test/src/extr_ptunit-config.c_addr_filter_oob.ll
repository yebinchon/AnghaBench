; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_addr_filter_oob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_addr_filter_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_config = type { i32 }

@pt_addr_cfg_disabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @addr_filter_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_filter_oob(i32 %0) #0 {
  %2 = alloca %struct.ptunit_result, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_config, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @pt_config_init(%struct.pt_config* %4)
  %9 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %4, i32 0, i32 0
  %10 = call i32 @memset(i32* %9, i32 204, i32 4)
  %11 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %4, i32 0, i32 0
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pt_filter_addr_cfg(i32* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* @pt_addr_cfg_disabled, align 8
  %16 = call i32 @ptu_uint_eq(i32 %14, i64 %15)
  %17 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %4, i32 0, i32 0
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @pt_filter_addr_a(i32* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ptu_uint_eq(i32 %20, i64 0)
  %22 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %4, i32 0, i32 0
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @pt_filter_addr_b(i32* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ptu_uint_eq(i32 %25, i64 0)
  %27 = call i32 (...) @ptu_passed()
  %28 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @pt_config_init(%struct.pt_config*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pt_filter_addr_cfg(i32*, i32) #1

declare dso_local i32 @ptu_uint_eq(i32, i64) #1

declare dso_local i32 @pt_filter_addr_a(i32*, i32) #1

declare dso_local i32 @pt_filter_addr_b(i32*, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
