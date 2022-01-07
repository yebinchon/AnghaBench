; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arcnet.c_arcnet_linux_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arcnet.c_arcnet_linux_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.pcap_pkthdr = type { i64, i64 }
%struct.arc_linux_header = type { i32 }

@ARC_LINUX_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"[|arcnet]\00", align 1
@ARC_LINUX_HDRNEWLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arcnet_linux_if_print(%struct.TYPE_6__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.arc_linux_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %14 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %17 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @ARC_LINUX_HDRLEN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @ARC_LINUX_HDRLEN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([10 x i8]* @.str to %struct.TYPE_6__*))
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %4, align 8
  br label %92

30:                                               ; preds = %22
  %31 = load i32*, i32** %7, align 8
  %32 = bitcast i32* %31 to %struct.arc_linux_header*
  store %struct.arc_linux_header* %32, %struct.arc_linux_header** %10, align 8
  %33 = load %struct.arc_linux_header*, %struct.arc_linux_header** %10, align 8
  %34 = getelementptr inbounds %struct.arc_linux_header, %struct.arc_linux_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  switch i32 %36, label %37 [
    i32 128, label %52
    i32 130, label %52
    i32 129, label %52
  ]

37:                                               ; preds = %30
  %38 = load i64, i64* @ARC_LINUX_HDRNEWLEN, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @ARC_LINUX_HDRNEWLEN, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @ARC_LINUX_HDRNEWLEN, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([10 x i8]* @.str to %struct.TYPE_6__*))
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %92

51:                                               ; preds = %43
  br label %55

52:                                               ; preds = %30, %30, %30
  %53 = load i64, i64* @ARC_LINUX_HDRLEN, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @arcnet_print(%struct.TYPE_6__* %61, i32* %62, i64 %63, i32 0, i32 0, i32 0)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %9, align 8
  %69 = sub nsw i64 %68, %67
  store i64 %69, i64* %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %8, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %7, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @arcnet_encap_print(%struct.TYPE_6__* %78, i32 %79, i32* %80, i64 %81, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %65
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @ND_DEFAULTPRINT(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %85, %65
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %89, %47, %26
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @arcnet_print(%struct.TYPE_6__*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @arcnet_encap_print(%struct.TYPE_6__*, i32, i32*, i64, i64) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
