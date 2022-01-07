; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rth_getaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rth_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.ip6_rthdr = type { i32 }
%struct.ip6_rthdr0 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_addr* @inet6_rth_getaddr(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_rthdr*, align 8
  %7 = alloca %struct.ip6_rthdr0*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %10, %struct.ip6_rthdr** %6, align 8
  %11 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %6, align 8
  %12 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %47 [
    i32 128, label %14
  ]

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.ip6_rthdr0*
  store %struct.ip6_rthdr0* %16, %struct.ip6_rthdr0** %7, align 8
  %17 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %18 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %24 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %28 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %14
  store %struct.in6_addr* null, %struct.in6_addr** %3, align 8
  br label %48

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %32
  store %struct.in6_addr* null, %struct.in6_addr** %3, align 8
  br label %48

40:                                               ; preds = %35
  %41 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %7, align 8
  %42 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %41, i64 1
  %43 = bitcast %struct.ip6_rthdr0* %42 to %struct.in6_addr*
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %43, i64 %45
  store %struct.in6_addr* %46, %struct.in6_addr** %3, align 8
  br label %48

47:                                               ; preds = %2
  store %struct.in6_addr* null, %struct.in6_addr** %3, align 8
  br label %48

48:                                               ; preds = %47, %40, %39, %31
  %49 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8
  ret %struct.in6_addr* %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
