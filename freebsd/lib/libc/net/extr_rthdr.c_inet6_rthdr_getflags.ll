; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rthdr_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rthdr_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32 }
%struct.ip6_rthdr = type { i32 }
%struct.ip6_rthdr0 = type { i32, i32* }

@IPV6_RTHDR_LOOSE = common dso_local global i32 0, align 4
@IPV6_RTHDR_STRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_rthdr_getflags(%struct.cmsghdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmsghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_rthdr*, align 8
  %7 = alloca %struct.ip6_rthdr0*, align 8
  %8 = alloca i32, align 4
  store %struct.cmsghdr* %0, %struct.cmsghdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %10 = call i64 @CMSG_DATA(%struct.cmsghdr* %9)
  %11 = inttoptr i64 %10 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %11, %struct.ip6_rthdr** %6, align 8
  %12 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %6, align 8
  %13 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %46 [
    i32 128, label %15
  ]

15:                                               ; preds = %2
  %16 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %6, align 8
  %17 = bitcast %struct.ip6_rthdr* %16 to %struct.ip6_rthdr0*
  store %struct.ip6_rthdr0* %17, %struct.ip6_rthdr0** %7, align 8
  %18 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %19 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = srem i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %25 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 46, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %15
  store i32 -1, i32* %3, align 4
  br label %47

29:                                               ; preds = %23
  %30 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %31 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %29
  store i32 -1, i32* %3, align 4
  br label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @IPV6_RTHDR_LOOSE, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %43, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
