; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-null.c_null_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-null.c_null_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64 }
%struct.pcap_pkthdr = type { i64, i64 }

@NULL_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"[|null]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @null_if_print(%struct.TYPE_10__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %12 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %15 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @NULL_HDRLEN, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = call i32 @ND_PRINT(%struct.TYPE_10__* bitcast ([8 x i8]* @.str to %struct.TYPE_10__*))
  %23 = load i64, i64* @NULL_HDRLEN, align 8
  store i64 %23, i64* %4, align 8
  br label %105

24:                                               ; preds = %3
  %25 = bitcast i64* %10 to i8*
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = call i32 @memcpy(i8* %25, i8* %27, i32 8)
  %29 = load i64, i64* %10, align 8
  %30 = and i64 %29, 4294901760
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @SWAPLONG(i64 %33)
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %32, %24
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @null_hdr_print(%struct.TYPE_10__* %41, i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i64, i64* @NULL_HDRLEN, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* @NULL_HDRLEN, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* @NULL_HDRLEN, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  store i32* %54, i32** %7, align 8
  %55 = load i64, i64* %10, align 8
  switch i64 %55, label %81 [
    i64 133, label %56
    i64 132, label %61
    i64 130, label %61
    i64 131, label %61
    i64 128, label %66
    i64 134, label %71
    i64 129, label %76
  ]

56:                                               ; preds = %45
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @ip_print(%struct.TYPE_10__* %57, i32* %58, i64 %59)
  br label %103

61:                                               ; preds = %45, %45, %45
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @ip6_print(%struct.TYPE_10__* %62, i32* %63, i64 %64)
  br label %103

66:                                               ; preds = %45
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @isoclns_print(%struct.TYPE_10__* %67, i32* %68, i64 %69)
  br label %103

71:                                               ; preds = %45
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @atalk_print(%struct.TYPE_10__* %72, i32* %73, i64 %74)
  br label %103

76:                                               ; preds = %45
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @ipx_print(%struct.TYPE_10__* %77, i32* %78, i64 %79)
  br label %103

81:                                               ; preds = %45
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* @NULL_HDRLEN, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @null_hdr_print(%struct.TYPE_10__* %87, i64 %88, i64 %91)
  br label %93

93:                                               ; preds = %86, %81
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = load i32*, i32** %7, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 @ND_DEFAULTPRINT(i32* %99, i64 %100)
  br label %102

102:                                              ; preds = %98, %93
  br label %103

103:                                              ; preds = %102, %76, %71, %66, %61, %56
  %104 = load i64, i64* @NULL_HDRLEN, align 8
  store i64 %104, i64* %4, align 8
  br label %105

105:                                              ; preds = %103, %20
  %106 = load i64, i64* %4, align 8
  ret i64 %106
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @SWAPLONG(i64) #1

declare dso_local i32 @null_hdr_print(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @ip_print(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @ip6_print(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @isoclns_print(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @atalk_print(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @ipx_print(%struct.TYPE_10__*, i32*, i64) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
