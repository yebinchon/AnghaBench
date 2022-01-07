; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_remoteact_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_pcap_remoteact_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activehosts = type { %struct.activehosts*, i32, i32, i32 }
%struct.addrinfo = type { %struct.addrinfo*, i64, i32, i32 }
%struct.rpcap_header = type { i32 }
%struct.sockaddr_storage = type { i32 }

@activeHosts = common dso_local global %struct.activehosts* null, align 8
@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"getaddrinfo() %s\00", align 1
@RPCAP_MSG_CLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"The host you want to close the active connection is not known\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_remoteact_close(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.activehosts*, align 8
  %7 = alloca %struct.activehosts*, align 8
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpcap_header, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.activehosts*, %struct.activehosts** @activeHosts, align 8
  store %struct.activehosts* %14, %struct.activehosts** %6, align 8
  store %struct.activehosts* null, %struct.activehosts** %7, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %9, align 8
  %15 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 24)
  %16 = load i32, i32* @PF_UNSPEC, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @SOCK_STREAM, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @getaddrinfo(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @gai_strerror(i32 %27)
  %29 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %3, align 4
  br label %117

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %101, %30
  %32 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %33 = icmp ne %struct.activehosts* %32, null
  br i1 %33, label %34, label %106

34:                                               ; preds = %31
  %35 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %35, %struct.addrinfo** %10, align 8
  br label %36

36:                                               ; preds = %97, %34
  %37 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %38 = icmp ne %struct.addrinfo* %37, null
  br i1 %38, label %39, label %101

39:                                               ; preds = %36
  %40 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %41 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %40, i32 0, i32 3
  %42 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.sockaddr_storage*
  %46 = call i64 @sock_cmpaddr(i32* %41, %struct.sockaddr_storage* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %97

48:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  %49 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %50 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RPCAP_MSG_CLOSE, align 4
  %53 = call i32 @rpcap_createhdr(%struct.rpcap_header* %12, i32 %51, i32 %52, i32 0, i32 0)
  %54 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %55 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = bitcast %struct.rpcap_header* %12 to i8*
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %60 = call i64 @sock_send(i32 %56, i8* %57, i32 4, i8* %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %64 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sock_close(i32 %65, i8* null, i32 0)
  store i32 -1, i32* %13, align 4
  br label %77

67:                                               ; preds = %48
  %68 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %69 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %73 = call i32 @sock_close(i32 %70, i8* %71, i32 %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 -1, i32* %13, align 4
  br label %76

76:                                               ; preds = %75, %67
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.activehosts*, %struct.activehosts** %7, align 8
  %79 = icmp ne %struct.activehosts* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %82 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %81, i32 0, i32 0
  %83 = load %struct.activehosts*, %struct.activehosts** %82, align 8
  %84 = load %struct.activehosts*, %struct.activehosts** %7, align 8
  %85 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %84, i32 0, i32 0
  store %struct.activehosts* %83, %struct.activehosts** %85, align 8
  br label %90

86:                                               ; preds = %77
  %87 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %88 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %87, i32 0, i32 0
  %89 = load %struct.activehosts*, %struct.activehosts** %88, align 8
  store %struct.activehosts* %89, %struct.activehosts** @activeHosts, align 8
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %92 = call i32 @freeaddrinfo(%struct.addrinfo* %91)
  %93 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %94 = call i32 @free(%struct.activehosts* %93)
  %95 = call i32 (...) @sock_cleanup()
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %3, align 4
  br label %117

97:                                               ; preds = %39
  %98 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %99 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %98, i32 0, i32 0
  %100 = load %struct.addrinfo*, %struct.addrinfo** %99, align 8
  store %struct.addrinfo* %100, %struct.addrinfo** %10, align 8
  br label %36

101:                                              ; preds = %36
  %102 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  store %struct.activehosts* %102, %struct.activehosts** %7, align 8
  %103 = load %struct.activehosts*, %struct.activehosts** %6, align 8
  %104 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %103, i32 0, i32 0
  %105 = load %struct.activehosts*, %struct.activehosts** %104, align 8
  store %struct.activehosts* %105, %struct.activehosts** %6, align 8
  br label %31

106:                                              ; preds = %31
  %107 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %108 = icmp ne %struct.addrinfo* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %111 = call i32 @freeaddrinfo(%struct.addrinfo* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = call i32 (...) @sock_cleanup()
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %116 = call i32 (i8*, i32, i8*, ...) @pcap_snprintf(i8* %114, i32 %115, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %117

117:                                              ; preds = %112, %90, %24
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i64 @sock_cmpaddr(i32*, %struct.sockaddr_storage*) #1

declare dso_local i32 @rpcap_createhdr(%struct.rpcap_header*, i32, i32, i32, i32) #1

declare dso_local i64 @sock_send(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @sock_close(i32, i8*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @free(%struct.activehosts*) #1

declare dso_local i32 @sock_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
