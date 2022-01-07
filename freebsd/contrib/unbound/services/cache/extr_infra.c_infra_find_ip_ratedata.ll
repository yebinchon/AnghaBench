; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_find_ip_ratedata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_find_ip_ratedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash_entry = type { i32 }
%struct.infra_cache = type { i32 }
%struct.comm_reply = type { i32, i32 }
%struct.ip_rate_key = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lruhash_entry* (%struct.infra_cache*, %struct.comm_reply*, i32)* @infra_find_ip_ratedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lruhash_entry* @infra_find_ip_ratedata(%struct.infra_cache* %0, %struct.comm_reply* %1, i32 %2) #0 {
  %4 = alloca %struct.infra_cache*, align 8
  %5 = alloca %struct.comm_reply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_rate_key, align 4
  %8 = alloca i32, align 4
  store %struct.infra_cache* %0, %struct.infra_cache** %4, align 8
  store %struct.comm_reply* %1, %struct.comm_reply** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %10 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %9, i32 0, i32 1
  %11 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %12 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @hash_addr(i32* %10, i32 %13, i32 0)
  store i32 %14, i32* %8, align 4
  %15 = call i32 @memset(%struct.ip_rate_key* %7, i32 0, i32 12)
  %16 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %17 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %7, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.comm_reply*, %struct.comm_reply** %5, align 8
  %21 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %7, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.ip_rate_key, %struct.ip_rate_key* %7, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %28 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.lruhash_entry* @slabhash_lookup(i32 %29, i32 %30, %struct.ip_rate_key* %7, i32 %31)
  ret %struct.lruhash_entry* %32
}

declare dso_local i32 @hash_addr(i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.ip_rate_key*, i32, i32) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(i32, i32, %struct.ip_rate_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
