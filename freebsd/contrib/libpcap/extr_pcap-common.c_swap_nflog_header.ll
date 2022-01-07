; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-common.c_swap_nflog_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-common.c_swap_nflog_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_pkthdr = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcap_pkthdr*, i32*)* @swap_nflog_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_nflog_header(%struct.pcap_pkthdr* %0, i32* %1) #0 {
  %3 = alloca %struct.pcap_pkthdr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcap_pkthdr* %0, %struct.pcap_pkthdr** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %6, align 8
  %14 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %3, align 8
  %15 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %3, align 8
  %18 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %2
  br label %101

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %101

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  store i32* %42, i32** %5, align 8
  br label %43

43:                                               ; preds = %90, %32
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %45, 8
  br i1 %46, label %47, label %101

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %7, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @SWAPSHORT(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @SWAPSHORT(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = srem i32 %67, 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %47
  %71 = load i32, i32* %10, align 4
  %72 = srem i32 %71, 4
  %73 = sub nsw i32 4, %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %70, %47
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp ult i64 %78, 8
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %101

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %81
  br label %101

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %5, align 8
  br label %43

101:                                              ; preds = %25, %31, %80, %89, %43
  ret void
}

declare dso_local i8* @SWAPSHORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
