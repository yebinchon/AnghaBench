; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_mcast_mac_ipv6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_mcast_mac_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_addr = type { i32 }

@__const.get_mcast_mac_ipv6.mac_addr = private unnamed_addr constant [6 x i32] [i32 51, i32 51, i32 0, i32 0, i32 0, i32 0], align 16
@AF_LLC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_addr*, %struct.nl_addr**)* @get_mcast_mac_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mcast_mac_ipv6(%struct.nl_addr* %0, %struct.nl_addr** %1) #0 {
  %3 = alloca %struct.nl_addr*, align 8
  %4 = alloca %struct.nl_addr**, align 8
  %5 = alloca [6 x i32], align 16
  store %struct.nl_addr* %0, %struct.nl_addr** %3, align 8
  store %struct.nl_addr** %1, %struct.nl_addr*** %4, align 8
  %6 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([6 x i32]* @__const.get_mcast_mac_ipv6.mac_addr to i8*), i64 24, i1 false)
  %7 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %8 = getelementptr inbounds i32, i32* %7, i64 2
  %9 = load %struct.nl_addr*, %struct.nl_addr** %3, align 8
  %10 = call i64 @nl_addr_get_binary_addr(%struct.nl_addr* %9)
  %11 = inttoptr i64 %10 to i32*
  %12 = getelementptr inbounds i32, i32* %11, i64 12
  %13 = call i32 @memcpy(i32* %8, i32* %12, i32 4)
  %14 = load i32, i32* @AF_LLC, align 4
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %16 = call %struct.nl_addr* @nl_addr_build(i32 %14, i32* %15, i32 24)
  %17 = load %struct.nl_addr**, %struct.nl_addr*** %4, align 8
  store %struct.nl_addr* %16, %struct.nl_addr** %17, align 8
  %18 = load %struct.nl_addr**, %struct.nl_addr*** %4, align 8
  %19 = load %struct.nl_addr*, %struct.nl_addr** %18, align 8
  %20 = icmp eq %struct.nl_addr* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @nl_addr_get_binary_addr(%struct.nl_addr*) #2

declare dso_local %struct.nl_addr* @nl_addr_build(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
