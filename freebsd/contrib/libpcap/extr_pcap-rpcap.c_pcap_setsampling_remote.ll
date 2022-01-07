; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_setsampling_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_setsampling_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, %struct.pcap_rpcap* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pcap_rpcap = type { i32, i32 }
%struct.rpcap_header = type { i32 }
%struct.rpcap_sampling = type { i64, i64 }

@RPCAP_NETBUF_SIZE = common dso_local global i32 0, align 4
@PCAP_SAMP_NOSAMP = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid sampling method %d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid sampling value %d\00", align 1
@SOCKBUF_CHECKONLY = common dso_local global i32 0, align 4
@RPCAP_MSG_SETSAMPLING_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @pcap_setsampling_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_setsampling_remote(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.pcap_rpcap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpcap_header, align 4
  %9 = alloca %struct.rpcap_sampling*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %12, align 8
  store %struct.pcap_rpcap* %13, %struct.pcap_rpcap** %4, align 8
  %14 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCAP_SAMP_NOSAMP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 255
  br i1 %36, label %37, label %47

37:                                               ; preds = %31, %25
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pcap_snprintf(i32 %40, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

47:                                               ; preds = %31
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 65535
  br i1 %58, label %59, label %69

59:                                               ; preds = %53, %47
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pcap_snprintf(i32 %62, i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

69:                                               ; preds = %53
  %70 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %71 = load i32, i32* @SOCKBUF_CHECKONLY, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %76 = call i64 @sock_bufferize(i32* null, i32 4, i32* null, i32* %7, i32 %70, i32 %71, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

79:                                               ; preds = %69
  %80 = bitcast i8* %17 to %struct.rpcap_header*
  %81 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %4, align 8
  %82 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RPCAP_MSG_SETSAMPLING_REQ, align 4
  %85 = call i32 @rpcap_createhdr(%struct.rpcap_header* %80, i32 %83, i32 %84, i32 0, i32 16)
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %17, i64 %87
  %89 = bitcast i8* %88 to %struct.rpcap_sampling*
  store %struct.rpcap_sampling* %89, %struct.rpcap_sampling** %9, align 8
  %90 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %91 = load i32, i32* @SOCKBUF_CHECKONLY, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %96 = call i64 @sock_bufferize(i32* null, i32 16, i32* null, i32* %7, i32 %90, i32 %91, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

99:                                               ; preds = %79
  %100 = load %struct.rpcap_sampling*, %struct.rpcap_sampling** %9, align 8
  %101 = call i32 @memset(%struct.rpcap_sampling* %100, i32 0, i32 16)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.rpcap_sampling*, %struct.rpcap_sampling** %9, align 8
  %108 = getelementptr inbounds %struct.rpcap_sampling, %struct.rpcap_sampling* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @htonl(i32 %112)
  %114 = load %struct.rpcap_sampling*, %struct.rpcap_sampling** %9, align 8
  %115 = getelementptr inbounds %struct.rpcap_sampling, %struct.rpcap_sampling* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %4, align 8
  %117 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %124 = call i64 @sock_send(i32 %118, i8* %17, i32 %119, i32 %122, i32 %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %99
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

127:                                              ; preds = %99
  %128 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %4, align 8
  %129 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %4, align 8
  %132 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @RPCAP_MSG_SETSAMPLING_REQ, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @rpcap_process_msg_header(i32 %130, i32 %133, i32 %134, %struct.rpcap_header* %8, i32 %137)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

141:                                              ; preds = %127
  %142 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %4, align 8
  %143 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %8, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @rpcap_discard(i32 %144, i32 %146, i32 %149)
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

153:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %154

154:                                              ; preds = %153, %152, %140, %126, %98, %78, %59, %37, %24
  %155 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32) #2

declare dso_local i64 @sock_bufferize(i32*, i32, i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @rpcap_createhdr(%struct.rpcap_header*, i32, i32, i32, i32) #2

declare dso_local i32 @memset(%struct.rpcap_sampling*, i32, i32) #2

declare dso_local i64 @htonl(i32) #2

declare dso_local i64 @sock_send(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @rpcap_process_msg_header(i32, i32, i32, %struct.rpcap_header*, i32) #2

declare dso_local i32 @rpcap_discard(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
