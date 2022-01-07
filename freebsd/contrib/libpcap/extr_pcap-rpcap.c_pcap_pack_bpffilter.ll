; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_pack_bpffilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_pack_bpffilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i32, i32, i32 }
%struct.rpcap_filter = type { i8*, i8* }
%struct.rpcap_filterbpf_insn = type { i8*, i32, i32, i8* }

@RPCAP_NETBUF_SIZE = common dso_local global i32 0, align 4
@SOCKBUF_CHECKONLY = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@RPCAP_UPDATEFILTER_BPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32*, %struct.bpf_program*)* @pcap_pack_bpffilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_pack_bpffilter(%struct.TYPE_4__* %0, i8* %1, i32* %2, %struct.bpf_program* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bpf_program*, align 8
  %10 = alloca %struct.rpcap_filter*, align 8
  %11 = alloca %struct.rpcap_filterbpf_insn*, align 8
  %12 = alloca %struct.bpf_insn*, align 8
  %13 = alloca %struct.bpf_program, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.bpf_program* %3, %struct.bpf_program** %9, align 8
  %15 = load %struct.bpf_program*, %struct.bpf_program** %9, align 8
  %16 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = call i32 @pcap_compile(%struct.TYPE_4__* %20, %struct.bpf_program* %13, i32* null, i32 1, i32 0)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %109

24:                                               ; preds = %19
  store %struct.bpf_program* %13, %struct.bpf_program** %9, align 8
  br label %25

25:                                               ; preds = %24, %4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.rpcap_filter*
  store %struct.rpcap_filter* %27, %struct.rpcap_filter** %10, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %30 = load i32, i32* @SOCKBUF_CHECKONLY, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %35 = call i64 @sock_bufferize(i32* null, i32 16, i32* null, i32* %28, i32 %29, i32 %30, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %109

38:                                               ; preds = %25
  %39 = load i32, i32* @RPCAP_UPDATEFILTER_BPF, align 4
  %40 = call i8* @htons(i32 %39)
  %41 = load %struct.rpcap_filter*, %struct.rpcap_filter** %10, align 8
  %42 = getelementptr inbounds %struct.rpcap_filter, %struct.rpcap_filter* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.bpf_program*, %struct.bpf_program** %9, align 8
  %44 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @htonl(i32 %45)
  %47 = load %struct.rpcap_filter*, %struct.rpcap_filter** %10, align 8
  %48 = getelementptr inbounds %struct.rpcap_filter, %struct.rpcap_filter* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.bpf_program*, %struct.bpf_program** %9, align 8
  %50 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 24
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @RPCAP_NETBUF_SIZE, align 4
  %57 = load i32, i32* @SOCKBUF_CHECKONLY, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %62 = call i64 @sock_bufferize(i32* null, i32 %54, i32* null, i32* %55, i32 %56, i32 %57, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %109

65:                                               ; preds = %38
  %66 = load %struct.rpcap_filter*, %struct.rpcap_filter** %10, align 8
  %67 = getelementptr inbounds %struct.rpcap_filter, %struct.rpcap_filter* %66, i64 1
  %68 = bitcast %struct.rpcap_filter* %67 to %struct.rpcap_filterbpf_insn*
  store %struct.rpcap_filterbpf_insn* %68, %struct.rpcap_filterbpf_insn** %11, align 8
  %69 = load %struct.bpf_program*, %struct.bpf_program** %9, align 8
  %70 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %69, i32 0, i32 1
  %71 = load %struct.bpf_insn*, %struct.bpf_insn** %70, align 8
  store %struct.bpf_insn* %71, %struct.bpf_insn** %12, align 8
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %105, %65
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.bpf_program*, %struct.bpf_program** %9, align 8
  %75 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %80 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @htons(i32 %81)
  %83 = load %struct.rpcap_filterbpf_insn*, %struct.rpcap_filterbpf_insn** %11, align 8
  %84 = getelementptr inbounds %struct.rpcap_filterbpf_insn, %struct.rpcap_filterbpf_insn* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %86 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rpcap_filterbpf_insn*, %struct.rpcap_filterbpf_insn** %11, align 8
  %89 = getelementptr inbounds %struct.rpcap_filterbpf_insn, %struct.rpcap_filterbpf_insn* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %91 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.rpcap_filterbpf_insn*, %struct.rpcap_filterbpf_insn** %11, align 8
  %94 = getelementptr inbounds %struct.rpcap_filterbpf_insn, %struct.rpcap_filterbpf_insn* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %96 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @htonl(i32 %97)
  %99 = load %struct.rpcap_filterbpf_insn*, %struct.rpcap_filterbpf_insn** %11, align 8
  %100 = getelementptr inbounds %struct.rpcap_filterbpf_insn, %struct.rpcap_filterbpf_insn* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.rpcap_filterbpf_insn*, %struct.rpcap_filterbpf_insn** %11, align 8
  %102 = getelementptr inbounds %struct.rpcap_filterbpf_insn, %struct.rpcap_filterbpf_insn* %101, i32 1
  store %struct.rpcap_filterbpf_insn* %102, %struct.rpcap_filterbpf_insn** %11, align 8
  %103 = load %struct.bpf_insn*, %struct.bpf_insn** %12, align 8
  %104 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %103, i32 1
  store %struct.bpf_insn* %104, %struct.bpf_insn** %12, align 8
  br label %105

105:                                              ; preds = %78
  %106 = load i32, i32* %14, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %72

108:                                              ; preds = %72
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %108, %64, %37, %23
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @pcap_compile(%struct.TYPE_4__*, %struct.bpf_program*, i32*, i32, i32) #1

declare dso_local i64 @sock_bufferize(i32*, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
