; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_receive_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-io.c_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.tftphdr = type { i64, i64, i32, i8* }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@receive_packet.timed_out = internal global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_PACKETS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Waiting %d seconds for packet\00", align 1
@timeoutpacket = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@timeoutbuf = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"receive_packet: timeout\00", align 1
@RP_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"receive_packet\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"receive_packet: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@RP_RECVFROM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"receive_packet: packet too small (%d bytes)\00", align 1
@RP_TOOSMALL = common dso_local global i32 0, align 4
@DATA = common dso_local global i64 0, align 8
@ACK = common dso_local global i64 0, align 8
@pktsize = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"receive_packet: packet too big\00", align 1
@RP_TOOBIG = common dso_local global i32 0, align 4
@peer_sock = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"receive_packet: received packet from wrong source\00", align 1
@RP_WRONGSOURCE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@EUNDEF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"Got ERROR packet: %s\00", align 1
@RP_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Received %d bytes in a %s packet\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @receive_packet(i32 %0, i8* %1, i32 %2, %struct.sockaddr_storage* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tftphdr*, align 8
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca %struct.sockaddr_storage*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @debug, align 4
  %18 = load i32, i32* @DEBUG_PACKETS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @LOG_DEBUG, align 4
  %23 = load i32, i32* @timeoutpacket, align 4
  %24 = call i32 (i32, i8*, ...) @tftp_log(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %5
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to %struct.tftphdr*
  store %struct.tftphdr* %27, %struct.tftphdr** %12, align 8
  %28 = load i32, i32* @SIGALRM, align 4
  %29 = load i32, i32* @timeout, align 4
  %30 = call i32 @signal(i32 %28, i32 %29)
  %31 = load i32, i32* @timeoutbuf, align 4
  %32 = call i32 @setjmp(i32 %31) #3
  store i32 %32, i32* @receive_packet.timed_out, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @alarm(i32 %33)
  %35 = load i32, i32* @receive_packet.timed_out, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = call i32 (i32, i8*, ...) @tftp_log(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @alarm(i32 0)
  %41 = load i32, i32* @RP_TIMEOUT, align 4
  store i32 %41, i32* %6, align 4
  br label %175

42:                                               ; preds = %25
  %43 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %44 = icmp eq %struct.sockaddr_storage* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %48

46:                                               ; preds = %42
  %47 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi %struct.sockaddr_storage* [ %13, %45 ], [ %47, %46 ]
  store %struct.sockaddr_storage* %49, %struct.sockaddr_storage** %14, align 8
  store i32 4, i32* %15, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %54 = bitcast %struct.sockaddr_storage* %53 to %struct.sockaddr*
  %55 = call i32 @recvfrom(i32 %50, i8* %51, i32 %52, i32 0, %struct.sockaddr* %54, i32* %15)
  store i32 %55, i32* %16, align 4
  %56 = call i32 @alarm(i32 0)
  %57 = load i32, i32* @RP_TIMEOUT, align 4
  %58 = call i32 @DROPPACKETn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i32, i32* @LOG_ERR, align 4
  %63 = call i32 (i32, i8*, ...) @tftp_log(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @RP_TIMEOUT, align 4
  store i32 %64, i32* %6, align 4
  br label %175

65:                                               ; preds = %48
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* @LOG_ERR, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 (i32, i8*, ...) @tftp_log(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @RP_RECVFROM, align 4
  store i32 %73, i32* %6, align 4
  br label %175

74:                                               ; preds = %65
  %75 = load i32, i32* %16, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @LOG_ERR, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 (i32, i8*, ...) @tftp_log(i32 %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @RP_TOOSMALL, align 4
  store i32 %81, i32* %6, align 4
  br label %175

82:                                               ; preds = %74
  %83 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %84 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i8* @ntohs(i32 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %90 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %92 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DATA, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %82
  %97 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %98 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ACK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %96, %82
  %103 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %104 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = call i8* @ntohs(i32 %106)
  %108 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %109 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %102, %96
  %111 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %112 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @DATA, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @pktsize, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @LOG_ERR, align 4
  %122 = call i32 (i32, i8*, ...) @tftp_log(i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i32, i32* @RP_TOOBIG, align 4
  store i32 %123, i32* %6, align 4
  br label %175

124:                                              ; preds = %116, %110
  %125 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %126 = bitcast %struct.sockaddr_storage* %125 to %struct.sockaddr_in*
  %127 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @peer_sock to %struct.sockaddr_in*), i32 0, i32 0, i32 0), align 4
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i32, i32* @LOG_ERR, align 4
  %134 = call i32 (i32, i8*, ...) @tftp_log(i32 %133, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32, i32* @RP_WRONGSOURCE, align 4
  store i32 %135, i32* %6, align 4
  br label %175

136:                                              ; preds = %124
  %137 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %138 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ERROR, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %136
  %143 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %144 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @EUNDEF, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = load i32, i32* @LOG_DEBUG, align 4
  br label %152

150:                                              ; preds = %142
  %151 = load i32, i32* @LOG_ERR, align 4
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i32 [ %149, %148 ], [ %151, %150 ]
  %154 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %155 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i32, i8*, ...) @tftp_log(i32 %153, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @RP_ERROR, align 4
  store i32 %158, i32* %6, align 4
  br label %175

159:                                              ; preds = %136
  %160 = load i32, i32* @debug, align 4
  %161 = load i32, i32* @DEBUG_PACKETS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* @LOG_DEBUG, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.tftphdr*, %struct.tftphdr** %12, align 8
  %168 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @packettype(i64 %169)
  %171 = call i32 (i32, i8*, ...) @tftp_log(i32 %165, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %166, i32 %170)
  br label %172

172:                                              ; preds = %164, %159
  %173 = load i32, i32* %16, align 4
  %174 = sub nsw i32 %173, 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %172, %152, %132, %120, %77, %68, %61, %37
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @tftp_log(i32, i8*, ...) #1

declare dso_local i32 @signal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @setjmp(i32) #2

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @DROPPACKETn(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @packettype(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
