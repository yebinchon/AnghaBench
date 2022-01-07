; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_addr_filter_ip_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-config.c_addr_filter_ip_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptunit_result = type { i32 }
%struct.pt_config = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@pt_addr_cfg_filter = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @addr_filter_ip_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_filter_ip_out() #0 {
  %1 = alloca %struct.ptunit_result, align 4
  %2 = alloca %struct.pt_config, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @pt_config_init(%struct.pt_config* %2)
  %5 = load i8*, i8** @pt_addr_cfg_filter, align 8
  %6 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i8* %5, i8** %9, align 8
  %10 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store i32 40960, i32* %11, align 8
  %12 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 45056, i32* %13, align 4
  %14 = load i8*, i8** @pt_addr_cfg_filter, align 8
  %15 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %14, i8** %18, align 8
  %19 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 1089536, i32* %20, align 8
  %21 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 1093632, i32* %22, align 4
  %23 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %24 = call i32 @pt_filter_addr_check(%struct.TYPE_6__* %23, i32 4095)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ptu_int_eq(i32 %25, i32 0)
  %27 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %28 = call i32 @pt_filter_addr_check(%struct.TYPE_6__* %27, i32 45057)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ptu_int_eq(i32 %29, i32 0)
  %31 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %32 = call i32 @pt_filter_addr_check(%struct.TYPE_6__* %31, i32 1052671)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ptu_int_eq(i32 %33, i32 0)
  %35 = getelementptr inbounds %struct.pt_config, %struct.pt_config* %2, i32 0, i32 0
  %36 = call i32 @pt_filter_addr_check(%struct.TYPE_6__* %35, i32 1093633)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ptu_int_eq(i32 %37, i32 0)
  %39 = call i32 (...) @ptu_passed()
  %40 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %1, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  ret i32 %42
}

declare dso_local i32 @pt_config_init(%struct.pt_config*) #1

declare dso_local i32 @pt_filter_addr_check(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ptu_int_eq(i32, i32) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
