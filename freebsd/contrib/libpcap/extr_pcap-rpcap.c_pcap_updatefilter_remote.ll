; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_updatefilter_remote.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_updatefilter_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.pcap_rpcap* }
%struct.pcap_rpcap = type { i32, i32 }
%struct.bpf_program = type { i32 }
%struct.rpcap_header = type { i32 }

@RPCAP_NETBUF_SIZE = common dso_local global i32 0, align 4
@SOCKBUF_CHECKONLY = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@RPCAP_MSG_UPDATEFILTER_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.bpf_program*)* @pcap_updatefilter_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_updatefilter_remote(%struct.TYPE_4__* %0, %struct.bpf_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca %struct.pcap_rpcap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rpcap_header, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.bpf_program* %1, %struct.bpf_program** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %13, align 8
  store %struct.pcap_rpcap* %14, %struct.pcap_rpcap** %6, align 8
  %15 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %20 = load i32, i32* @SOCKBUF_CHECKONLY, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %25 = call i64 @sock_bufferize(i32* null, i32 4, i32* null, i32* %9, i32 %19, i32 %20, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %89

28:                                               ; preds = %2
  %29 = bitcast i8* %18 to %struct.rpcap_header*
  %30 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %31 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RPCAP_MSG_UPDATEFILTER_REQ, align 4
  %34 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %35 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 4, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @rpcap_createhdr(%struct.rpcap_header* %29, i32 %32, i32 %33, i32 0, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %18, i64 %44
  %46 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %47 = call i64 @pcap_pack_bpffilter(%struct.TYPE_4__* %42, i8* %45, i32* %9, %struct.bpf_program* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %89

50:                                               ; preds = %28
  %51 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %52 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %59 = call i64 @sock_send(i32 %53, i8* %18, i32 %54, i32 %57, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %89

62:                                               ; preds = %50
  %63 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %64 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %67 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RPCAP_MSG_UPDATEFILTER_REQ, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rpcap_process_msg_header(i32 %65, i32 %68, i32 %69, %struct.rpcap_header* %10, i32 %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %89

76:                                               ; preds = %62
  %77 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %78 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @rpcap_discard(i32 %79, i32 %81, i32 %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %89

88:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %87, %75, %61, %49, %27
  %90 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sock_bufferize(i32*, i32, i32*, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @rpcap_createhdr(%struct.rpcap_header*, i32, i32, i32, i32) #2

declare dso_local i64 @pcap_pack_bpffilter(%struct.TYPE_4__*, i8*, i32*, %struct.bpf_program*) #2

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
