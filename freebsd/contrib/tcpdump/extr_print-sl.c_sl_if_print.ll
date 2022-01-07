; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sl.c_sl_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-sl.c_sl_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.pcap_pkthdr = type { i32, i32 }
%struct.ip = type { i32 }

@SLIP_HDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ip v%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sl_if_print(%struct.TYPE_7__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %12 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %15 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SLIP_HDRLEN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SLIP_HDRLEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20, %3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = load i32, i32* @tstr, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  %29 = call i32 @ND_PRINT(%struct.TYPE_7__* %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %92

31:                                               ; preds = %20
  %32 = load i32, i32* @SLIP_HDRLEN, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @SLIP_HDRLEN, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @SLIP_HDRLEN, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = bitcast i32* %41 to %struct.ip*
  store %struct.ip* %42, %struct.ip** %10, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.ip*, %struct.ip** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @sliplink_print(%struct.TYPE_7__* %48, i32* %49, %struct.ip* %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %31
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %68

59:                                               ; preds = %56, %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = load i32, i32* @tstr, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to %struct.TYPE_7__*
  %64 = call i32 @ND_PRINT(%struct.TYPE_7__* %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SLIP_HDRLEN, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %4, align 4
  br label %92

68:                                               ; preds = %56
  %69 = load %struct.ip*, %struct.ip** %10, align 8
  %70 = call i32 @IP_V(%struct.ip* %69)
  switch i32 %70, label %83 [
    i32 4, label %71
    i32 6, label %77
  ]

71:                                               ; preds = %68
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load %struct.ip*, %struct.ip** %10, align 8
  %74 = bitcast %struct.ip* %73 to i32*
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @ip_print(%struct.TYPE_7__* %72, i32* %74, i32 %75)
  br label %90

77:                                               ; preds = %68
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = load %struct.ip*, %struct.ip** %10, align 8
  %80 = bitcast %struct.ip* %79 to i32*
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @ip6_print(%struct.TYPE_7__* %78, i32* %80, i32 %81)
  br label %90

83:                                               ; preds = %68
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = load %struct.ip*, %struct.ip** %10, align 8
  %86 = call i32 @IP_V(%struct.ip* %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to %struct.TYPE_7__*
  %89 = call i32 @ND_PRINT(%struct.TYPE_7__* %88)
  br label %90

90:                                               ; preds = %83, %77, %71
  %91 = load i32, i32* @SLIP_HDRLEN, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %59, %24
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @sliplink_print(%struct.TYPE_7__*, i32*, %struct.ip*, i32) #1

declare dso_local i32 @IP_V(%struct.ip*) #1

declare dso_local i32 @ip_print(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ip6_print(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
