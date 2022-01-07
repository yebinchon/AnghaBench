; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rthdr_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rthdr_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32 }
%struct.ip6_rthdr = type { i32 }
%struct.ip6_rthdr0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_rthdr_segments(%struct.cmsghdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmsghdr*, align 8
  %4 = alloca %struct.ip6_rthdr*, align 8
  %5 = alloca %struct.ip6_rthdr0*, align 8
  store %struct.cmsghdr* %0, %struct.cmsghdr** %3, align 8
  %6 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  %7 = call i64 @CMSG_DATA(%struct.cmsghdr* %6)
  %8 = inttoptr i64 %7 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %8, %struct.ip6_rthdr** %4, align 8
  %9 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %4, align 8
  %10 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %34 [
    i32 128, label %12
  ]

12:                                               ; preds = %1
  %13 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %4, align 8
  %14 = bitcast %struct.ip6_rthdr* %13 to %struct.ip6_rthdr0*
  store %struct.ip6_rthdr0* %14, %struct.ip6_rthdr0** %5, align 8
  %15 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %5, align 8
  %16 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %5, align 8
  %22 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 46, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %12
  store i32 -1, i32* %2, align 4
  br label %35

26:                                               ; preds = %20
  %27 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %5, align 8
  %28 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 4
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %26, %25
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
