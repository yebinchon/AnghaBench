; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_set_ah_attr_by_ipv4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_set_ah_attr_by_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_ah_attr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.ip = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%union.ibv_gid = type { i32 }
%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IBV_GID_TYPE_ROCE_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, %struct.ibv_ah_attr*, %struct.ip*, i64)* @set_ah_attr_by_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ah_attr_by_ipv4(%struct.ibv_context* %0, %struct.ibv_ah_attr* %1, %struct.ip* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_context*, align 8
  %7 = alloca %struct.ibv_ah_attr*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.ibv_gid, align 4
  %11 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %6, align 8
  store %struct.ibv_ah_attr* %1, %struct.ibv_ah_attr** %7, align 8
  store %struct.ip* %2, %struct.ip** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ip*, %struct.ip** %8, align 8
  %13 = getelementptr inbounds %struct.ip, %struct.ip* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32toh(i32 %15)
  %17 = call i64 @IN_CLASSD(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %63

21:                                               ; preds = %4
  %22 = load %struct.ip*, %struct.ip** %8, align 8
  %23 = getelementptr inbounds %struct.ip, %struct.ip* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %union.ibv_gid* %10 to %struct.in6_addr*
  %27 = call i32 @map_ipv4_addr_to_ipv6(i32 %25, %struct.in6_addr* %26)
  %28 = load %struct.ibv_context*, %struct.ibv_context** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @IBV_GID_TYPE_ROCE_V2, align 4
  %31 = call i32 @ibv_find_gid_index(%struct.ibv_context* %28, i64 %29, %union.ibv_gid* %10, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %63

36:                                               ; preds = %21
  %37 = load %struct.ip*, %struct.ip** %8, align 8
  %38 = getelementptr inbounds %struct.ip, %struct.ip* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = bitcast i32* %43 to %struct.in6_addr*
  %45 = call i32 @map_ipv4_addr_to_ipv6(i32 %40, %struct.in6_addr* %44)
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %49 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i64 %47, i64* %50, align 8
  %51 = load %struct.ip*, %struct.ip** %8, align 8
  %52 = getelementptr inbounds %struct.ip, %struct.ip* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %55 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.ip*, %struct.ip** %8, align 8
  %58 = getelementptr inbounds %struct.ip, %struct.ip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ibv_ah_attr*, %struct.ibv_ah_attr** %7, align 8
  %61 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %36, %34, %19
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @IN_CLASSD(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @map_ipv4_addr_to_ipv6(i32, %struct.in6_addr*) #1

declare dso_local i32 @ibv_find_gid_index(%struct.ibv_context*, i64, %union.ibv_gid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
