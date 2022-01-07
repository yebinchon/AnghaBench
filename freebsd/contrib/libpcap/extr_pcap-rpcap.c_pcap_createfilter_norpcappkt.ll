; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_createfilter_norpcappkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_createfilter_norpcappkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.pcap_rpcap* }
%struct.pcap_rpcap = type { i32, i32, i32, i32, i32 }
%struct.bpf_program = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@PCAP_OPENFLAG_NOCAPTURE_RPCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"getpeername(): \00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"getnameinfo(): \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"getsockname(): \00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"(%s) and not (host %s and host %s and port %s and port %s) and not (host %s and host %s and port %s)\00", align 1
@.str.4 = private unnamed_addr constant [92 x i8] c"not (host %s and host %s and port %s and port %s) and not (host %s and host %s and port %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.bpf_program*)* @pcap_createfilter_norpcappkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_createfilter_norpcappkt(%struct.TYPE_4__* %0, %struct.bpf_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca %struct.pcap_rpcap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca [128 x i8], align 16
  %12 = alloca [128 x i8], align 16
  %13 = alloca [128 x i8], align 16
  %14 = alloca [128 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.bpf_program* %1, %struct.bpf_program** %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %19, align 8
  store %struct.pcap_rpcap* %20, %struct.pcap_rpcap** %6, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %22 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCAP_OPENFLAG_NOCAPTURE_RPCAP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %178

27:                                               ; preds = %2
  store i32 1024, i32* %16, align 4
  store i32 4, i32* %9, align 4
  %28 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %29 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %32 = call i32 @getpeername(i32 %30, %struct.sockaddr* %31, i32* %9)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %39 = call i32 @sock_geterror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  store i32 -1, i32* %3, align 4
  br label %180

40:                                               ; preds = %27
  %41 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %45 = load i32, i32* @NI_NUMERICHOST, align 4
  %46 = load i32, i32* @NI_NUMERICSERV, align 4
  %47 = or i32 %45, %46
  %48 = call i64 @getnameinfo(%struct.sockaddr* %41, i32 %42, i8* %43, i32 128, i8* %44, i32 128, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %55 = call i32 @sock_geterror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  store i32 -1, i32* %3, align 4
  br label %180

56:                                               ; preds = %40
  %57 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %58 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %61 = call i32 @getsockname(i32 %59, %struct.sockaddr* %60, i32* %9)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %68 = call i32 @sock_geterror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67)
  store i32 -1, i32* %3, align 4
  br label %180

69:                                               ; preds = %56
  %70 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %71 = load i32, i32* %9, align 4
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %74 = load i32, i32* @NI_NUMERICHOST, align 4
  %75 = load i32, i32* @NI_NUMERICSERV, align 4
  %76 = or i32 %74, %75
  %77 = call i64 @getnameinfo(%struct.sockaddr* %70, i32 %71, i8* %72, i32 128, i8* %73, i32 128, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %84 = call i32 @sock_geterror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83)
  store i32 -1, i32* %3, align 4
  br label %180

85:                                               ; preds = %69
  %86 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %87 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %90 = call i32 @getsockname(i32 %88, %struct.sockaddr* %89, i32* %9)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %97 = call i32 @sock_geterror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  store i32 -1, i32* %3, align 4
  br label %180

98:                                               ; preds = %85
  %99 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %100 = load i32, i32* %9, align 4
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %102 = load i32, i32* @NI_NUMERICSERV, align 4
  %103 = call i64 @getnameinfo(%struct.sockaddr* %99, i32 %100, i8* null, i32 0, i8* %101, i32 128, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %98
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %110 = call i32 @sock_geterror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %109)
  store i32 -1, i32* %3, align 4
  br label %180

111:                                              ; preds = %98
  %112 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %113 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %118 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @strlen(i32 %119)
  br label %122

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %116
  %123 = phi i64 [ %120, %116 ], [ 0, %121 ]
  store i64 %123, i64* %17, align 8
  %124 = load i64, i64* %17, align 8
  %125 = add i64 %124, 1024
  %126 = add i64 %125, 1
  %127 = call i64 @malloc(i64 %126)
  %128 = inttoptr i64 %127 to i8*
  store i8* %128, i8** %15, align 8
  %129 = load i64, i64* %17, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %122
  %132 = load i8*, i8** %15, align 8
  %133 = load i64, i64* %17, align 8
  %134 = add i64 %133, 1024
  %135 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %136 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %141 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %142 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %143 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %144 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %145 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %146 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %147 = call i32 (i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @pcap_snprintf(i8* %132, i64 %134, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i8* %139, i8* %140, i8* %141, i8* %142, i8* %143, i8* %144, i8* %145, i8* %146)
  br label %160

148:                                              ; preds = %122
  %149 = load i8*, i8** %15, align 8
  %150 = load i64, i64* %17, align 8
  %151 = add i64 %150, 1024
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %155 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %156 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %157 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %158 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %159 = call i32 (i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) @pcap_snprintf(i8* %149, i64 %151, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0), i8* %152, i8* %153, i8* %154, i8* %155, i8* %156, i8* %157, i8* %158)
  br label %160

160:                                              ; preds = %148, %131
  %161 = load i8*, i8** %15, align 8
  %162 = load i64, i64* %17, align 8
  %163 = add i64 %162, 1024
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8 0, i8* %164, align 1
  %165 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %166 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %169 = load i8*, i8** %15, align 8
  %170 = call i32 @pcap_compile(%struct.TYPE_4__* %167, %struct.bpf_program* %168, i8* %169, i32 1, i32 0)
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  store i32 -1, i32* %7, align 4
  br label %173

173:                                              ; preds = %172, %160
  %174 = load %struct.pcap_rpcap*, %struct.pcap_rpcap** %6, align 8
  %175 = getelementptr inbounds %struct.pcap_rpcap, %struct.pcap_rpcap* %174, i32 0, i32 1
  store i32 1, i32* %175, align 4
  %176 = load i8*, i8** %15, align 8
  %177 = call i32 @free(i8* %176)
  br label %178

178:                                              ; preds = %173, %2
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %105, %92, %79, %63, %50, %34
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @sock_geterror(i8*, i32, i32) #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @pcap_snprintf(i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @pcap_compile(%struct.TYPE_4__*, %struct.bpf_program*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
