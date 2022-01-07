; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_udp_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_udp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udphdr = type { i32, i32 }

@ident = common dso_local global i64 0, align 8
@fixedPort = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.udphdr*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.udphdr*
  store %struct.udphdr* %7, %struct.udphdr** %5, align 8
  %8 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %9 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @ntohs(i32 %10)
  %12 = load i64, i64* @ident, align 8
  %13 = load i64, i64* @fixedPort, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %12, %20
  %22 = icmp eq i64 %11, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.udphdr*, %struct.udphdr** %5, align 8
  %25 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ntohs(i32 %26)
  %28 = load i64, i64* @port, align 8
  %29 = load i64, i64* @fixedPort, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ 0, %31 ], [ %33, %32 ]
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %28, %36
  %38 = icmp eq i64 %27, %37
  br label %39

39:                                               ; preds = %34, %18
  %40 = phi i1 [ false, %18 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
