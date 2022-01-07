; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_udplite_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_traceroute.c_udplite_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outdata = type { i32 }
%struct.udphdr = type { i32, i8*, i8*, i8* }

@outp = common dso_local global i64 0, align 8
@ident = common dso_local global i32 0, align 4
@fixedPort = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@doipcksum = common dso_local global i64 0, align 8
@outip = common dso_local global i32 0, align 4
@protlen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udplite_prep(%struct.outdata* %0) #0 {
  %2 = alloca %struct.outdata*, align 8
  %3 = alloca %struct.udphdr*, align 8
  %4 = alloca i32, align 4
  store %struct.outdata* %0, %struct.outdata** %2, align 8
  %5 = load i64, i64* @outp, align 8
  %6 = inttoptr i64 %5 to %struct.udphdr*
  store %struct.udphdr* %6, %struct.udphdr** %3, align 8
  %7 = load i32, i32* @ident, align 4
  %8 = load i64, i64* @fixedPort, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.outdata*, %struct.outdata** %2, align 8
  %12 = getelementptr inbounds %struct.outdata, %struct.outdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i32 [ %13, %10 ], [ 0, %14 ]
  %17 = add nsw i32 %7, %16
  %18 = call i8* @htons(i32 %17)
  %19 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %20 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @port, align 4
  %22 = load i64, i64* @fixedPort, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.outdata*, %struct.outdata** %2, align 8
  %27 = getelementptr inbounds %struct.outdata, %struct.outdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 0, %24 ], [ %28, %25 ]
  %31 = add nsw i32 %21, %30
  %32 = call i8* @htons(i32 %31)
  %33 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %34 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = call i8* @htons(i32 8)
  %36 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %37 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %39 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i64, i64* @doipcksum, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %29
  %43 = load i32, i32* @outip, align 4
  %44 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %45 = bitcast %struct.udphdr* %44 to i32*
  %46 = load i32, i32* @protlen, align 4
  %47 = call i32 @p_cksum(i32 %43, i32* %45, i32 %46, i32 8)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %4, align 4
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 65535, %52 ]
  %55 = load %struct.udphdr*, %struct.udphdr** %3, align 8
  %56 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %29
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @p_cksum(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
