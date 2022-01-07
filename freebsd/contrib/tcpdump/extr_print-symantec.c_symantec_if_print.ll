; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-symantec.c_symantec_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-symantec.c_symantec_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.pcap_pkthdr = type { i32, i32 }
%struct.symantec_header = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"[|symantec]\00", align 1
@ETHERMTU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symantec_if_print(%struct.TYPE_6__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.symantec_header*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %13 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %16 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([12 x i8]* @.str to %struct.TYPE_6__*))
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %112

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @symantec_hdr_print(%struct.TYPE_6__* %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = bitcast i32* %44 to %struct.symantec_header*
  store %struct.symantec_header* %45, %struct.symantec_header** %10, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32* %47, i32** %7, align 8
  %48 = load %struct.symantec_header*, %struct.symantec_header** %10, align 8
  %49 = getelementptr inbounds %struct.symantec_header, %struct.symantec_header* %48, i32 0, i32 0
  %50 = call i64 @EXTRACT_16BITS(i32* %49)
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @ETHERMTU, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %35
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = load %struct.symantec_header*, %struct.symantec_header** %10, align 8
  %62 = bitcast %struct.symantec_header* %61 to i32*
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @symantec_hdr_print(%struct.TYPE_6__* %60, i32* %62, i32 %66)
  br label %68

68:                                               ; preds = %59, %54
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @ND_DEFAULTPRINT(i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %68
  br label %111

78:                                               ; preds = %35
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @ethertype_print(%struct.TYPE_6__* %79, i64 %80, i32* %81, i32 %82, i32 %83, i32* null, i32* null)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %78
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = load %struct.symantec_header*, %struct.symantec_header** %10, align 8
  %94 = bitcast %struct.symantec_header* %93 to i32*
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @symantec_hdr_print(%struct.TYPE_6__* %92, i32* %94, i32 %98)
  br label %100

100:                                              ; preds = %91, %86
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @ND_DEFAULTPRINT(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %78
  br label %111

111:                                              ; preds = %110, %77
  store i32 4, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %21
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @symantec_hdr_print(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

declare dso_local i64 @ethertype_print(%struct.TYPE_6__*, i64, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
