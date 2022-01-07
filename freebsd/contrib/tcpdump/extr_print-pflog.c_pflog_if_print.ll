; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pflog.c_pflog_if_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pflog.c_pflog_if_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.pcap_pkthdr = type { i32, i32 }
%struct.pfloghdr = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"[pflog: invalid header length!]\00", align 1
@MIN_PFLOG_HDRLEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pflog_if_print(%struct.TYPE_7__* %0, %struct.pcap_pkthdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.pcap_pkthdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pfloghdr*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.pcap_pkthdr* %1, %struct.pcap_pkthdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %14 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.pcap_pkthdr*, %struct.pcap_pkthdr** %6, align 8
  %17 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = load i32, i32* @tstr, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to %struct.TYPE_7__*
  %27 = call i32 @ND_PRINT(%struct.TYPE_7__* %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %128

29:                                               ; preds = %3
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to %struct.pfloghdr*
  store %struct.pfloghdr* %31, %struct.pfloghdr** %11, align 8
  %32 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %33 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 45
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([32 x i8]* @.str.1 to %struct.TYPE_7__*))
  %39 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %40 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %128

43:                                               ; preds = %29
  %44 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %45 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @BPF_WORDALIGN(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load i32, i32* @tstr, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.TYPE_7__*
  %57 = call i32 @ND_PRINT(%struct.TYPE_7__* %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %128

59:                                               ; preds = %43
  %60 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %61 = bitcast %struct.pfloghdr* %60 to { i64, i32 }*
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %61, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ND_TCHECK(i64 %63, i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %59
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %74 = call i32 @pflog_print(%struct.TYPE_7__* %72, %struct.pfloghdr* %73)
  br label %75

75:                                               ; preds = %71, %59
  %76 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %77 = getelementptr inbounds %struct.pfloghdr, %struct.pfloghdr* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %7, align 8
  %89 = load i32, i32* %12, align 4
  switch i32 %89, label %100 [
    i32 131, label %90
    i32 129, label %90
    i32 130, label %95
    i32 128, label %95
  ]

90:                                               ; preds = %75, %75
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @ip_print(%struct.TYPE_7__* %91, i32* %92, i32 %93)
  br label %119

95:                                               ; preds = %75, %75
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @ip6_print(%struct.TYPE_7__* %96, i32* %97, i32 %98)
  br label %119

100:                                              ; preds = %75
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = load %struct.pfloghdr*, %struct.pfloghdr** %11, align 8
  %108 = call i32 @pflog_print(%struct.TYPE_7__* %106, %struct.pfloghdr* %107)
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ND_DEFAULTPRINT(i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %95, %90
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %4, align 4
  br label %128

121:                                              ; No predecessors!
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = load i32, i32* @tstr, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to %struct.TYPE_7__*
  %126 = call i32 @ND_PRINT(%struct.TYPE_7__* %125)
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %121, %119, %52, %36, %22
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @BPF_WORDALIGN(i32) #1

declare dso_local i32 @ND_TCHECK(i64, i32) #1

declare dso_local i32 @pflog_print(%struct.TYPE_7__*, %struct.pfloghdr*) #1

declare dso_local i32 @ip_print(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ip6_print(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
