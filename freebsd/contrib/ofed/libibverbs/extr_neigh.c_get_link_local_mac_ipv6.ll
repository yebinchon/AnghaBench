; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_link_local_mac_ipv6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_neigh.c_get_link_local_mac_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_addr = type { i32 }

@AF_LLC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_addr*, %struct.nl_addr**)* @get_link_local_mac_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_link_local_mac_ipv6(%struct.nl_addr* %0, %struct.nl_addr** %1) #0 {
  %3 = alloca %struct.nl_addr*, align 8
  %4 = alloca %struct.nl_addr**, align 8
  %5 = alloca [6 x i32], align 16
  store %struct.nl_addr* %0, %struct.nl_addr** %3, align 8
  store %struct.nl_addr** %1, %struct.nl_addr*** %4, align 8
  %6 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %7 = getelementptr inbounds i32, i32* %6, i64 3
  %8 = load %struct.nl_addr*, %struct.nl_addr** %3, align 8
  %9 = call i64 @nl_addr_get_binary_addr(%struct.nl_addr* %8)
  %10 = inttoptr i64 %9 to i32*
  %11 = getelementptr inbounds i32, i32* %10, i64 13
  %12 = call i32 @memcpy(i32* %7, i32* %11, i32 3)
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %14 = load %struct.nl_addr*, %struct.nl_addr** %3, align 8
  %15 = call i64 @nl_addr_get_binary_addr(%struct.nl_addr* %14)
  %16 = inttoptr i64 %15 to i32*
  %17 = getelementptr inbounds i32, i32* %16, i64 8
  %18 = call i32 @memcpy(i32* %13, i32* %17, i32 3)
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = xor i32 %20, 2
  store i32 %21, i32* %19, align 16
  %22 = load i32, i32* @AF_LLC, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %24 = call %struct.nl_addr* @nl_addr_build(i32 %22, i32* %23, i32 24)
  %25 = load %struct.nl_addr**, %struct.nl_addr*** %4, align 8
  store %struct.nl_addr* %24, %struct.nl_addr** %25, align 8
  %26 = load %struct.nl_addr**, %struct.nl_addr*** %4, align 8
  %27 = load %struct.nl_addr*, %struct.nl_addr** %26, align 8
  %28 = icmp eq %struct.nl_addr* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32 [ %31, %29 ], [ 0, %32 ]
  ret i32 %34
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @nl_addr_get_binary_addr(%struct.nl_addr*) #1

declare dso_local %struct.nl_addr* @nl_addr_build(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
