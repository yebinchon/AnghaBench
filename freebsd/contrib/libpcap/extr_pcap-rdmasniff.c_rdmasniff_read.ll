; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rdmasniff.c_rdmasniff_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i64, i64, %struct.pcap_rdmasniff* }
%struct.TYPE_5__ = type { i32* }
%struct.pcap_rdmasniff = type { i32, i32, i32, i32 }
%struct.pcap_pkthdr = type { i32, i32, i32 }
%struct.ibv_cq = type { i32 }
%struct.ibv_wc = type { i64, i32, i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@PCAP_ERROR = common dso_local global i32 0, align 4
@PCAP_ERROR_BREAK = common dso_local global i32 0, align 4
@IBV_WC_SUCCESS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed WC wr_id %lld status %d/%s\0A\00", align 1
@RDMASNIFF_RECEIVE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32*)* @rdmasniff_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdmasniff_read(%struct.TYPE_6__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_rdmasniff*, align 8
  %11 = alloca %struct.ibv_cq*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ibv_wc, align 8
  %14 = alloca %struct.pcap_pkthdr, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %18, align 8
  store %struct.pcap_rdmasniff* %19, %struct.pcap_rdmasniff** %10, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  %21 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %58, label %24

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  %27 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ibv_get_cq_event(i32 %28, %struct.ibv_cq** %11, i8** %12)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EINTR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %36, i32* %5, align 4
  br label %162

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @PCAP_ERROR_BREAK, align 4
  store i32 %45, i32* %5, align 4
  br label %162

46:                                               ; preds = %37
  br label %25

47:                                               ; preds = %25
  %48 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  %49 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ibv_ack_cq_events(i32 %50, i32 1)
  %52 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  %53 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ibv_req_notify_cq(i32 %54, i32 0)
  %56 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  %57 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %47, %4
  br label %59

59:                                               ; preds = %159, %83, %58
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @PACKET_COUNT_IS_UNLIMITED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ true, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %160

69:                                               ; preds = %67
  %70 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  %71 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ibv_poll_cq(i32 %72, i32 1, %struct.ibv_wc* %13)
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  %77 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %76, i32 0, i32 0
  store i32 0, i32* %77, align 4
  br label %160

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %13, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IBV_WC_SUCCESS, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load i32, i32* @stderr, align 4
  %85 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %13, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @ibv_wc_status_str(i64 %91)
  %93 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %89, i32 %92)
  br label %59

94:                                               ; preds = %78
  %95 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %13, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @min(i32 %99, i32 %103)
  %105 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 2
  %107 = call i32 @gettimeofday(i32* %106, i32* null)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %13, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @RDMASNIFF_RECEIVE_SIZE, align 4
  %115 = mul nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  store i32* %117, i32** %15, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %135, label %123

123:                                              ; preds = %94
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %14, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @bpf_filter(i32* %127, i32* %128, i32 %130, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %123, %94
  %136 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 %136(i32* %137, %struct.pcap_pkthdr* %14, i32* %138)
  %140 = load %struct.pcap_rdmasniff*, %struct.pcap_rdmasniff** %10, align 8
  %141 = getelementptr inbounds %struct.pcap_rdmasniff, %struct.pcap_rdmasniff* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %135, %123
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %148 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %13, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @rdmasniff_post_recv(%struct.TYPE_6__* %147, i32 %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %146
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  %158 = load i32, i32* @PCAP_ERROR_BREAK, align 4
  store i32 %158, i32* %5, align 4
  br label %162

159:                                              ; preds = %146
  br label %59

160:                                              ; preds = %75, %67
  %161 = load i32, i32* %16, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %155, %42, %35
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i64 @ibv_get_cq_event(i32, %struct.ibv_cq**, i8**) #1

declare dso_local i32 @ibv_ack_cq_events(i32, i32) #1

declare dso_local i32 @ibv_req_notify_cq(i32, i32) #1

declare dso_local i64 @PACKET_COUNT_IS_UNLIMITED(i32) #1

declare dso_local i32 @ibv_poll_cq(i32, i32, %struct.ibv_wc*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @ibv_wc_status_str(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i64 @bpf_filter(i32*, i32*, i32, i32) #1

declare dso_local i32 @rdmasniff_post_recv(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
