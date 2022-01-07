; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_tcp_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_tcp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32, i32, i64 }

@ident = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8
@fixedPort = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcphdr*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.tcphdr*
  store %struct.tcphdr* %7, %struct.tcphdr** %5, align 8
  %8 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %9 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @ntohs(i32 %10)
  %12 = load i64, i64* @ident, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %16 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ntohs(i32 %17)
  %19 = load i64, i64* @port, align 8
  %20 = load i64, i64* @fixedPort, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 0, %22 ], [ %24, %23 ]
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %19, %27
  %29 = icmp eq i64 %18, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %32 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %35 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 16
  %38 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %39 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = icmp eq i64 %33, %42
  br label %44

44:                                               ; preds = %30, %25, %2
  %45 = phi i1 [ false, %25 ], [ false, %2 ], [ %43, %30 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
