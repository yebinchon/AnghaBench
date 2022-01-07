; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rth_segments.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rth_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_rthdr = type { i32 }
%struct.ip6_rthdr0 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet6_rth_segments(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ip6_rthdr*, align 8
  %5 = alloca %struct.ip6_rthdr0*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %8, %struct.ip6_rthdr** %4, align 8
  %9 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %4, align 8
  %10 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %32 [
    i32 128, label %12
  ]

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.ip6_rthdr0*
  store %struct.ip6_rthdr0* %14, %struct.ip6_rthdr0** %5, align 8
  %15 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %5, align 8
  %16 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %12
  %21 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %5, align 8
  %22 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ip6_rthdr0*, %struct.ip6_rthdr0** %5, align 8
  %26 = getelementptr inbounds %struct.ip6_rthdr0, %struct.ip6_rthdr0* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20, %12
  store i32 -1, i32* %2, align 4
  br label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
