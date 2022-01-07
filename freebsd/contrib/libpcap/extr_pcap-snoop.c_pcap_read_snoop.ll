; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snoop.c_pcap_read_snoop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snoop.c_pcap_read_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_7__, i64, i32, i32, i32, i64, %struct.pcap_snoop* }
%struct.TYPE_7__ = type { i32* }
%struct.pcap_snoop = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pcap_pkthdr = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.snoopheader = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1
@DLT_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32*)* @pcap_read_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_snoop(%struct.TYPE_11__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_snoop*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snoopheader*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.pcap_pkthdr, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 9
  %20 = load %struct.pcap_snoop*, %struct.pcap_snoop** %19, align 8
  store %struct.pcap_snoop* %20, %struct.pcap_snoop** %10, align 8
  br label %21

21:                                               ; preds = %45, %4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  store i32 -2, i32* %5, align 4
  br label %160

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @read(i32 %32, i8* %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %29
  %44 = load i32, i32* @errno, align 4
  switch i32 %44, label %47 [
    i32 129, label %45
    i32 128, label %46
  ]

45:                                               ; preds = %43
  br label %21

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %160

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @pcap_fmt_errmsg_for_errno(i32 %50, i32 4, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %160

53:                                               ; preds = %29
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.snoopheader*
  store %struct.snoopheader* %57, %struct.snoopheader** %12, align 8
  %58 = load %struct.snoopheader*, %struct.snoopheader** %12, align 8
  %59 = getelementptr inbounds %struct.snoopheader, %struct.snoopheader* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 12
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %53
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 65536
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %75, %69, %53
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  br label %90

86:                                               ; preds = %78
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  br label %90

90:                                               ; preds = %86, %84
  %91 = phi i32 [ %85, %84 ], [ %89, %86 ]
  store i32 %91, i32* %14, align 4
  %92 = load %struct.snoopheader*, %struct.snoopheader** %12, align 8
  %93 = getelementptr inbounds %struct.snoopheader, %struct.snoopheader* %92, i64 1
  %94 = bitcast %struct.snoopheader* %93 to i32*
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32* %99, i32** %15, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DLT_NULL, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %90
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = bitcast i32* %107 to i16*
  %109 = load i16, i16* %108, align 2
  %110 = sext i16 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load i32*, i32** %15, align 8
  store i32* %113, i32** %16, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 16
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %105, %90
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %133, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i64 @bpf_filter(i32* %127, i32* %128, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %123, %117
  %134 = load %struct.pcap_snoop*, %struct.pcap_snoop** %10, align 8
  %135 = getelementptr inbounds %struct.pcap_snoop, %struct.pcap_snoop* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.snoopheader*, %struct.snoopheader** %12, align 8
  %140 = getelementptr inbounds %struct.snoopheader, %struct.snoopheader* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %17, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.snoopheader*, %struct.snoopheader** %12, align 8
  %146 = getelementptr inbounds %struct.snoopheader, %struct.snoopheader* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %17, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* %13, align 4
  %152 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %17, i32 0, i32 0
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %14, align 4
  %154 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %17, i32 0, i32 1
  store i32 %153, i32* %154, align 4
  %155 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = load i32*, i32** %15, align 8
  %158 = call i32 %155(i32* %156, %struct.pcap_pkthdr* %17, i32* %157)
  store i32 1, i32* %5, align 4
  br label %160

159:                                              ; preds = %123
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %133, %47, %46, %26
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

declare dso_local i64 @bpf_filter(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
