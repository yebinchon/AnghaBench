; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-nit.c_pcap_activate_nit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-nit.c_pcap_activate_nit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i8**, i32, i32*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.sockaddr_nit = type { i32, i32 }
%struct.sockaddr = type { i32 }

@PCAP_ERROR_RFMON_NOTSUP = common dso_local global i32 0, align 4
@MAXIMUM_SNAPLEN = common dso_local global i32 0, align 4
@AF_NIT = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@NITPROTO_RAW = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@NITIFSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"bind: %s\00", align 1
@DLT_EN10MB = common dso_local global i8* null, align 8
@BUFSPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@DLT_DOCSIS = common dso_local global i8* null, align 8
@pcap_read_nit = common dso_local global i32 0, align 4
@pcap_inject_nit = common dso_local global i32 0, align 4
@install_bpf_program = common dso_local global i32 0, align 4
@pcap_getnonblock_fd = common dso_local global i32 0, align 4
@pcap_setnonblock_fd = common dso_local global i32 0, align 4
@pcap_stats_nit = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @pcap_activate_nit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_activate_nit(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_nit, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @PCAP_ERROR_RFMON_NOTSUP, align 4
  store i32 %12, i32* %2, align 4
  br label %161

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MAXIMUM_SNAPLEN, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %13
  %25 = load i32, i32* @MAXIMUM_SNAPLEN, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 96
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 96, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = call i32 @memset(%struct.TYPE_8__* %37, i32 0, i32 112)
  %39 = load i32, i32* @AF_NIT, align 4
  %40 = load i32, i32* @SOCK_RAW, align 4
  %41 = load i32, i32* @NITPROTO_RAW, align 4
  %42 = call i32 @socket(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %50, i32 %51, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %157

54:                                               ; preds = %36
  %55 = load i32, i32* @AF_NIT, align 4
  %56 = getelementptr inbounds %struct.sockaddr_nit, %struct.sockaddr_nit* %5, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.sockaddr_nit, %struct.sockaddr_nit* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 17
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NITIFSIZ, align 4
  %64 = call i32 @strncpy(i32 %58, i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = bitcast %struct.sockaddr_nit* %5 to %struct.sockaddr*
  %67 = call i64 @bind(i32 %65, %struct.sockaddr* %66, i32 8)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %54
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %74 = load i32, i32* @errno, align 4
  %75 = getelementptr inbounds %struct.sockaddr_nit, %struct.sockaddr_nit* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %72, i32 %73, i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %157

78:                                               ; preds = %54
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = call i64 @nit_setflags(%struct.TYPE_8__* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %157

83:                                               ; preds = %78
  %84 = load i8*, i8** @DLT_EN10MB, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 16
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @BUFSPACE, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32* @malloc(i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 15
  store i32* %93, i32** %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 15
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %83
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 (i32, i32, i32, i8*, ...) @pcap_fmt_errmsg_for_errno(i32 %103, i32 %104, i32 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %157

107:                                              ; preds = %83
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = call i32* @malloc(i32 16)
  %114 = bitcast i32* %113 to i8**
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 13
  store i8** %114, i8*** %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 13
  %119 = load i8**, i8*** %118, align 8
  %120 = icmp ne i8** %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %107
  %122 = load i8*, i8** @DLT_EN10MB, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 13
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  store i8* %122, i8** %126, align 8
  %127 = load i8*, i8** @DLT_DOCSIS, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 13
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  store i8* %127, i8** %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  store i32 2, i32* %133, align 8
  br label %134

134:                                              ; preds = %121, %107
  %135 = load i32, i32* @pcap_read_nit, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 12
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @pcap_inject_nit, align 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 11
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @install_bpf_program, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 10
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 9
  store i32* null, i32** %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 8
  store i32* null, i32** %147, align 8
  %148 = load i32, i32* @pcap_getnonblock_fd, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @pcap_setnonblock_fd, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* @pcap_stats_nit, align 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  store i32 0, i32* %2, align 4
  br label %161

157:                                              ; preds = %100, %82, %69, %47
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %159 = call i32 @pcap_cleanup_live_common(%struct.TYPE_8__* %158)
  %160 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %134, %11
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @nit_setflags(%struct.TYPE_8__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @pcap_cleanup_live_common(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
