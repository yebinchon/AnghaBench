; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, i64, i64, i32, i32 }
%struct.pkt = type { i32, i8**, i32, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32 }

@sys_samples = common dso_local global i32 0, align 4
@complete_servers = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"transmit(%s)\0A\00", align 1
@LEAP_NOTINSYNC = common dso_local global i32 0, align 4
@sys_version = common dso_local global i32 0, align 4
@MODE_CLIENT = common dso_local global i32 0, align 4
@STRATUM_UNSPEC = common dso_local global i32 0, align 4
@NTP_MINPOLL = common dso_local global i32 0, align 4
@NTPDATE_PRECISION = common dso_local global i32 0, align 4
@NTPDATE_DISTANCE = common dso_local global i32 0, align 4
@NTPDATE_DISP = common dso_local global i32 0, align 4
@NTPDATE_REFID = common dso_local global i32 0, align 4
@sys_authenticate = common dso_local global i64 0, align 8
@sys_authkey = common dso_local global i32 0, align 4
@sys_authdelay = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"transmit auth to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"transmit to %s\0A\00", align 1
@current_time = common dso_local global i64 0, align 8
@sys_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.server*)* @transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit(%struct.server* %0) #0 {
  %2 = alloca %struct.server*, align 8
  %3 = alloca %struct.pkt, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.server* %0, %struct.server** %2, align 8
  %6 = load %struct.server*, %struct.server** %2, align 8
  %7 = getelementptr inbounds %struct.server, %struct.server* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.server*, %struct.server** %2, align 8
  %10 = getelementptr inbounds %struct.server, %struct.server* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i32 @L_CLR(i32* %4)
  %15 = load %struct.server*, %struct.server** %2, align 8
  %16 = call i32 @server_data(%struct.server* %15, i32 0, i32* %4, i32 0)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.server*, %struct.server** %2, align 8
  %19 = getelementptr inbounds %struct.server, %struct.server* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @sys_samples, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.server*, %struct.server** %2, align 8
  %26 = getelementptr inbounds %struct.server, %struct.server* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @complete_servers, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @complete_servers, align 4
  br label %134

29:                                               ; preds = %17
  %30 = load i32, i32* @debug, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.server*, %struct.server** %2, align 8
  %34 = getelementptr inbounds %struct.server, %struct.server* %33, i32 0, i32 3
  %35 = call i8* @stoa(i32* %34)
  %36 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* @LEAP_NOTINSYNC, align 4
  %39 = load i32, i32* @sys_version, align 4
  %40 = load i32, i32* @MODE_CLIENT, align 4
  %41 = call i32 @PKT_LI_VN_MODE(i32 %38, i32 %39, i32 %40)
  %42 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 11
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @STRATUM_UNSPEC, align 4
  %44 = call i32 @STRATUM_TO_PKT(i32 %43)
  %45 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 10
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* @NTP_MINPOLL, align 4
  %47 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 9
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @NTPDATE_PRECISION, align 4
  %49 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 8
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @NTPDATE_DISTANCE, align 4
  %51 = call i8* @htonl(i32 %50)
  %52 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 7
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* @NTPDATE_DISP, align 4
  %54 = call i8* @htonl(i32 %53)
  %55 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 6
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* @NTPDATE_REFID, align 4
  %57 = call i8* @htonl(i32 %56)
  %58 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 5
  store i8* %57, i8** %58, align 8
  %59 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 4
  %60 = call i32 @L_CLR(i32* %59)
  %61 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 3
  %62 = call i32 @L_CLR(i32* %61)
  %63 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 2
  %64 = call i32 @L_CLR(i32* %63)
  %65 = load i64, i64* @sys_authenticate, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %104

67:                                               ; preds = %37
  %68 = load i32, i32* @sys_authkey, align 4
  %69 = call i8* @htonl(i32 %68)
  %70 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.server*, %struct.server** %2, align 8
  %74 = getelementptr inbounds %struct.server, %struct.server* %73, i32 0, i32 4
  %75 = call i32 @get_systime(i32* %74)
  %76 = load %struct.server*, %struct.server** %2, align 8
  %77 = getelementptr inbounds %struct.server, %struct.server* %76, i32 0, i32 4
  %78 = load i32, i32* @sys_authdelay, align 4
  %79 = call i32 @L_ADDUF(i32* %77, i32 %78)
  %80 = load %struct.server*, %struct.server** %2, align 8
  %81 = getelementptr inbounds %struct.server, %struct.server* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 0
  %83 = call i32 @HTONL_FP(i32* %81, i32* %82)
  %84 = load i32, i32* @sys_authkey, align 4
  %85 = bitcast %struct.pkt* %3 to i32*
  %86 = load i64, i64* @LEN_PKT_NOMAC, align 8
  %87 = call i64 @authencrypt(i32 %84, i32* %85, i64 %86)
  store i64 %87, i64* %5, align 8
  %88 = load %struct.server*, %struct.server** %2, align 8
  %89 = getelementptr inbounds %struct.server, %struct.server* %88, i32 0, i32 3
  %90 = load i64, i64* @LEN_PKT_NOMAC, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = call i32 @sendpkt(i32* %89, %struct.pkt* %3, i64 %94)
  %96 = load i32, i32* @debug, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %103

98:                                               ; preds = %67
  %99 = load %struct.server*, %struct.server** %2, align 8
  %100 = getelementptr inbounds %struct.server, %struct.server* %99, i32 0, i32 3
  %101 = call i8* @stoa(i32* %100)
  %102 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %98, %67
  br label %124

104:                                              ; preds = %37
  %105 = load %struct.server*, %struct.server** %2, align 8
  %106 = getelementptr inbounds %struct.server, %struct.server* %105, i32 0, i32 4
  %107 = call i32 @get_systime(i32* %106)
  %108 = load %struct.server*, %struct.server** %2, align 8
  %109 = getelementptr inbounds %struct.server, %struct.server* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.pkt, %struct.pkt* %3, i32 0, i32 0
  %111 = call i32 @HTONL_FP(i32* %109, i32* %110)
  %112 = load %struct.server*, %struct.server** %2, align 8
  %113 = getelementptr inbounds %struct.server, %struct.server* %112, i32 0, i32 3
  %114 = load i64, i64* @LEN_PKT_NOMAC, align 8
  %115 = call i32 @sendpkt(i32* %113, %struct.pkt* %3, i64 %114)
  %116 = load i32, i32* @debug, align 4
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %123

118:                                              ; preds = %104
  %119 = load %struct.server*, %struct.server** %2, align 8
  %120 = getelementptr inbounds %struct.server, %struct.server* %119, i32 0, i32 3
  %121 = call i8* @stoa(i32* %120)
  %122 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %118, %104
  br label %124

124:                                              ; preds = %123, %103
  %125 = load i64, i64* @current_time, align 8
  %126 = load i64, i64* @sys_timeout, align 8
  %127 = add nsw i64 %125, %126
  %128 = load %struct.server*, %struct.server** %2, align 8
  %129 = getelementptr inbounds %struct.server, %struct.server* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  %130 = load %struct.server*, %struct.server** %2, align 8
  %131 = getelementptr inbounds %struct.server, %struct.server* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %124, %24
  ret void
}

declare dso_local i32 @L_CLR(i32*) #1

declare dso_local i32 @server_data(%struct.server*, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @stoa(i32*) #1

declare dso_local i32 @PKT_LI_VN_MODE(i32, i32, i32) #1

declare dso_local i32 @STRATUM_TO_PKT(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @get_systime(i32*) #1

declare dso_local i32 @L_ADDUF(i32*, i32) #1

declare dso_local i32 @HTONL_FP(i32*, i32*) #1

declare dso_local i64 @authencrypt(i32, i32*, i64) #1

declare dso_local i32 @sendpkt(i32*, %struct.pkt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
