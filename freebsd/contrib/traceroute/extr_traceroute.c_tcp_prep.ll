; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_tcp_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_tcp_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outdata = type { i64 }
%struct.tcphdr = type { i32, i32, i32, i32, i64, i32, i64 }

@outp = common dso_local global i64 0, align 8
@ident = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8
@fixedPort = common dso_local global i64 0, align 8
@TH_SYN = common dso_local global i32 0, align 4
@doipcksum = common dso_local global i64 0, align 8
@outip = common dso_local global i32 0, align 4
@protlen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_prep(%struct.outdata* %0) #0 {
  %2 = alloca %struct.outdata*, align 8
  %3 = alloca %struct.tcphdr*, align 8
  store %struct.outdata* %0, %struct.outdata** %2, align 8
  %4 = load i64, i64* @outp, align 8
  %5 = inttoptr i64 %4 to %struct.tcphdr*
  store %struct.tcphdr* %5, %struct.tcphdr** %3, align 8
  %6 = load i64, i64* @ident, align 8
  %7 = call i8* @htons(i64 %6)
  %8 = ptrtoint i8* %7 to i32
  %9 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %10 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i64, i64* @port, align 8
  %12 = load i64, i64* @fixedPort, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.outdata*, %struct.outdata** %2, align 8
  %17 = getelementptr inbounds %struct.outdata, %struct.outdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i64 [ 0, %14 ], [ %18, %15 ]
  %21 = add nsw i64 %11, %20
  %22 = call i8* @htons(i64 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %27 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 16
  %30 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %35 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %37 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %39 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %38, i32 0, i32 3
  store i32 5, i32* %39, align 4
  %40 = load i32, i32* @TH_SYN, align 4
  %41 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %44 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* @doipcksum, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %19
  %48 = load i32, i32* @outip, align 4
  %49 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %50 = bitcast %struct.tcphdr* %49 to i32*
  %51 = load i32, i32* @protlen, align 4
  %52 = load i32, i32* @protlen, align 4
  %53 = call i64 @p_cksum(i32 %48, i32* %50, i32 %51, i32 %52)
  %54 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %55 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %47, %19
  ret void
}

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @p_cksum(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
