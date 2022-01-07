; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arcnet.c_arcnet_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arcnet.c_arcnet_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.pcap_pkthdr = type { i64, i64 }
%struct.arc_header = type { i32, i32, i32, i32, i32 }

@ARC_HDRLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"[|arcnet]\00", align 1
@ARC_HDRNEWLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"[|phds]\00", align 1
@ARC_HDRNEWLEN_EXC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"[|phds extended]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arcnet_if_print(%struct.TYPE_6__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.arc_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %17 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %20 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @ARC_HDRLEN, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @ARC_HDRLEN, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([10 x i8]* @.str to %struct.TYPE_6__*))
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %4, align 8
  br label %156

33:                                               ; preds = %25
  %34 = load i32*, i32** %7, align 8
  %35 = bitcast i32* %34 to %struct.arc_header*
  store %struct.arc_header* %35, %struct.arc_header** %10, align 8
  %36 = load %struct.arc_header*, %struct.arc_header** %10, align 8
  %37 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  switch i32 %39, label %40 [
    i32 128, label %41
    i32 130, label %41
    i32 129, label %41
  ]

40:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %44

41:                                               ; preds = %33, %33, %33
  store i32 0, i32* %11, align 4
  %42 = load i64, i64* @ARC_HDRLEN, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %41, %40
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %103

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @ARC_HDRNEWLEN, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @ARC_HDRNEWLEN, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @arcnet_print(%struct.TYPE_6__* %56, i32* %57, i64 %58, i32 0, i32 0, i64 0)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([8 x i8]* @.str.1 to %struct.TYPE_6__*))
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %4, align 8
  br label %156

63:                                               ; preds = %51
  %64 = load %struct.arc_header*, %struct.arc_header** %10, align 8
  %65 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 255
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ARC_HDRNEWLEN_EXC, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @ARC_HDRNEWLEN_EXC, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72, %68
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @arcnet_print(%struct.TYPE_6__* %77, i32* %78, i64 %79, i32 0, i32 0, i64 0)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([17 x i8]* @.str.2 to %struct.TYPE_6__*))
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %4, align 8
  br label %156

84:                                               ; preds = %72
  %85 = load %struct.arc_header*, %struct.arc_header** %10, align 8
  %86 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  %88 = load %struct.arc_header*, %struct.arc_header** %10, align 8
  %89 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %88, i32 0, i32 4
  %90 = call i64 @EXTRACT_16BITS(i32* %89)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* @ARC_HDRNEWLEN_EXC, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %13, align 4
  br label %102

93:                                               ; preds = %63
  %94 = load %struct.arc_header*, %struct.arc_header** %10, align 8
  %95 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %12, align 4
  %97 = load %struct.arc_header*, %struct.arc_header** %10, align 8
  %98 = getelementptr inbounds %struct.arc_header, %struct.arc_header* %97, i32 0, i32 3
  %99 = call i64 @EXTRACT_16BITS(i32* %98)
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* @ARC_HDRNEWLEN, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %93, %84
  br label %103

103:                                              ; preds = %102, %44
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @arcnet_print(%struct.TYPE_6__* %109, i32* %110, i64 %111, i32 %112, i32 %113, i64 %114)
  br label %116

116:                                              ; preds = %108, %103
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %9, align 8
  %120 = sub nsw i64 %119, %118
  store i64 %120, i64* %9, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %8, align 8
  %124 = sub nsw i64 %123, %122
  store i64 %124, i64* %8, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %7, align 8
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %116
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = load i32, i32* %12, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %4, align 8
  br label %156

141:                                              ; preds = %134, %131, %116
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = load i32, i32* %15, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* %8, align 8
  %147 = call i32 @arcnet_encap_print(%struct.TYPE_6__* %142, i32 %143, i32* %144, i64 %145, i64 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %141
  %150 = load i32*, i32** %7, align 8
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @ND_DEFAULTPRINT(i32* %150, i64 %151)
  br label %153

153:                                              ; preds = %149, %141
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %4, align 8
  br label %156

156:                                              ; preds = %153, %138, %76, %55, %29
  %157 = load i64, i64* %4, align 8
  ret i64 %157
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @arcnet_print(%struct.TYPE_6__*, i32*, i64, i32, i32, i64) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @arcnet_encap_print(%struct.TYPE_6__*, i32, i32*, i64, i64) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
