; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_ppp_hdlc_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-ppp.c_ppp_hdlc_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pcap_pkthdr = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"[|ppp]\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%02x %02x %d \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@ppptype2str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unknown PPP protocol (0x%04x)\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"unknown addr %02x; ctrl %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppp_hdlc_if_print(%struct.TYPE_6__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([7 x i8]* @.str to %struct.TYPE_6__*))
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %125

24:                                               ; preds = %3
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %84 [
    i32 128, label %28
    i32 129, label %79
    i32 130, label %79
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([7 x i8]* @.str to %struct.TYPE_6__*))
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %125

35:                                               ; preds = %28
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_6__*
  %51 = call i32 @ND_PRINT(%struct.TYPE_6__* %50)
  br label %52

52:                                               ; preds = %40, %35
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32* %54, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 2
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @EXTRACT_16BITS(i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32* %62, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 2
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %11, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = load i32, i32* @ppptype2str, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @tok2str(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.TYPE_6__*
  %73 = call i32 @ND_PRINT(%struct.TYPE_6__* %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @handle_ppp(%struct.TYPE_6__* %74, i32 %75, i32* %76, i32 %77)
  br label %123

79:                                               ; preds = %24, %24
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @chdlc_if_print(%struct.TYPE_6__* %80, %struct.pcap_pkthdr* %81, i32* %82)
  store i32 %83, i32* %4, align 4
  br label %125

84:                                               ; preds = %24
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = call i32 @ND_PRINT(%struct.TYPE_6__* bitcast ([7 x i8]* @.str to %struct.TYPE_6__*))
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %125

91:                                               ; preds = %84
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to %struct.TYPE_6__*
  %107 = call i32 @ND_PRINT(%struct.TYPE_6__* %106)
  br label %108

108:                                              ; preds = %96, %91
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  store i32* %110, i32** %7, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %11, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to %struct.TYPE_6__*
  %122 = call i32 @ND_PRINT(%struct.TYPE_6__* %121)
  br label %123

123:                                              ; preds = %108, %52
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %123, %87, %79, %31, %20
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_6__*) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @handle_ppp(%struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @chdlc_if_print(%struct.TYPE_6__*, %struct.pcap_pkthdr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
