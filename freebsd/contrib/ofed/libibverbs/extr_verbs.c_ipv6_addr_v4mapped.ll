; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ipv6_addr_v4mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c_ipv6_addr_v4mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in6_addr*)* @ipv6_addr_v4mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_addr_v4mapped(%struct.in6_addr* %0) #0 {
  %2 = alloca %struct.in6_addr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %2, align 8
  %3 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %4 = call i64 @IN6_IS_ADDR_V4MAPPED(%struct.in6_addr* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %8 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @htobe32(i32 -15859712)
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %6
  %15 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %16 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %21 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @htobe32(i32 65535)
  %26 = xor i64 %24, %25
  %27 = or i64 %19, %26
  %28 = icmp eq i64 %27, 0
  br label %29

29:                                               ; preds = %14, %6
  %30 = phi i1 [ false, %6 ], [ %28, %14 ]
  br label %31

31:                                               ; preds = %29, %1
  %32 = phi i1 [ true, %1 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i64 @IN6_IS_ADDR_V4MAPPED(%struct.in6_addr*) #1

declare dso_local i64 @htobe32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
