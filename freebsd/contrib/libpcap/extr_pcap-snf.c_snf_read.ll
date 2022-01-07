; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snf.c_snf_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-snf.c_snf_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64, %struct.pcap_snf* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.pcap_snf = type { i32, i32 }
%struct.pcap_pkthdr = type { i32, i32, i32 }
%struct.snf_recv_req = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"snf_read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32)*, i32*)* @snf_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snf_read(%struct.TYPE_7__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_snf*, align 8
  %11 = alloca %struct.pcap_pkthdr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.snf_recv_req, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32)** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  %22 = load %struct.pcap_snf*, %struct.pcap_snf** %21, align 8
  store %struct.pcap_snf* %22, %struct.pcap_snf** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = icmp ne %struct.TYPE_7__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %141

26:                                               ; preds = %4
  store i32 0, i32* %16, align 4
  %27 = load %struct.pcap_snf*, %struct.pcap_snf** %10, align 8
  %28 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  br label %30

30:                                               ; preds = %138, %75, %26
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @PACKET_COUNT_IS_UNLIMITED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ true, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %139

40:                                               ; preds = %38
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  store i32 -2, i32* %5, align 4
  br label %141

51:                                               ; preds = %45
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %5, align 4
  br label %141

53:                                               ; preds = %40
  %54 = load %struct.pcap_snf*, %struct.pcap_snf** %10, align 8
  %55 = getelementptr inbounds %struct.pcap_snf, %struct.pcap_snf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @snf_ring_recv(i32 %56, i32 %57, %struct.snf_recv_req* %17)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %53
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @EBUSY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %5, align 4
  br label %141

71:                                               ; preds = %65
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @EINTR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %19, align 4
  br label %30

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @pcap_fmt_errmsg_for_errno(i32 %79, i32 %80, i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %141

83:                                               ; preds = %53
  %84 = getelementptr inbounds %struct.snf_recv_req, %struct.snf_recv_req* %17, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %91, %83
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %113, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds %struct.snf_recv_req, %struct.snf_recv_req* %17, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.snf_recv_req, %struct.snf_recv_req* %17, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i64 @bpf_filter(i32* %105, i32 %107, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %101, %95
  %114 = getelementptr inbounds %struct.snf_recv_req, %struct.snf_recv_req* %17, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @snf_timestamp_to_timeval(i32 %115, i32 %119)
  %121 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 2
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %15, align 4
  %123 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 0
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.snf_recv_req, %struct.snf_recv_req* %17, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %11, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = load i32 (i32*, %struct.pcap_pkthdr*, i32)*, i32 (i32*, %struct.pcap_pkthdr*, i32)** %8, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds %struct.snf_recv_req, %struct.snf_recv_req* %17, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 %127(i32* %128, %struct.pcap_pkthdr* %11, i32 %130)
  br label %132

132:                                              ; preds = %113, %101
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 0, i32* %19, align 4
  br label %138

138:                                              ; preds = %137, %132
  br label %30

139:                                              ; preds = %38
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %76, %69, %51, %48, %25
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @PACKET_COUNT_IS_UNLIMITED(i32) #1

declare dso_local i32 @snf_ring_recv(i32, i32, %struct.snf_recv_req*) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

declare dso_local i64 @bpf_filter(i32*, i32, i32, i32) #1

declare dso_local i32 @snf_timestamp_to_timeval(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
