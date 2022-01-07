; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_version = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.g_gate_cinit = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.g_gate_sinit = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.sockaddr_in = type { i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@host = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid IP/host name: %s.\00", align 1
@port = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot open socket: %s.\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot connect to server: %s.\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Connected to the server: %s:%d.\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Sending version packet.\00", align 1
@GGATE_MAGIC = common dso_local global i32 0, align 4
@GGATE_VERSION = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Error while sending version packet: %s.\00", align 1
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Error while receiving data: %s.\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Version verification problem: %s.\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Sending initial packet.\00", align 1
@path = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"Path name too long.\00", align 1
@flags = common dso_local global i32 0, align 4
@token = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"Error while sending initial packet: %s.\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Receiving initial packet.\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Error from server: %s.\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Received initial packet.\00", align 1
@mediasize = common dso_local global i32 0, align 4
@sectorsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handshake(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_gate_version, align 8
  %5 = alloca %struct.g_gate_cinit, align 8
  %6 = alloca %struct.g_gate_sinit, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = call i32 @bzero(%struct.sockaddr_in* %7, i32 72)
  %10 = load i32, i32* @AF_INET, align 4
  %11 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 12
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @host, align 4
  %13 = call i64 @g_gate_str2ip(i32 %12)
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 11
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 11
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INADDR_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @LOG_DEBUG, align 4
  %23 = load i32, i32* @host, align 4
  %24 = call i32 (i32, i8*, ...) @g_gate_log(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %2, align 4
  br label %192

25:                                               ; preds = %1
  %26 = load i32, i32* @port, align 4
  %27 = call i32 @htons(i32 %26)
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 10
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @AF_INET, align 4
  %30 = load i32, i32* @SOCK_STREAM, align 4
  %31 = call i32 @socket(i32 %29, i32 %30, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @LOG_DEBUG, align 4
  %36 = load i64, i64* @errno, align 8
  %37 = call i32 @strerror(i64 %36)
  %38 = call i32 (i32, i8*, ...) @g_gate_log(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %2, align 4
  br label %192

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @g_gate_socket_settings(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %44 = call i32 @connect(i32 %42, %struct.sockaddr* %43, i32 72)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* @LOG_DEBUG, align 4
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @strerror(i64 %48)
  %50 = call i32 (i32, i8*, ...) @g_gate_log(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @close(i32 %51)
  store i32 -1, i32* %2, align 4
  br label %192

53:                                               ; preds = %39
  %54 = load i32, i32* @LOG_INFO, align 4
  %55 = load i32, i32* @host, align 4
  %56 = load i32, i32* @port, align 4
  %57 = call i32 (i32, i8*, ...) @g_gate_log(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @LOG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @g_gate_log(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i32, i32* @GGATE_MAGIC, align 4
  %61 = call i32 @strlen(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 4
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* @GGATE_MAGIC, align 4
  %67 = getelementptr inbounds %struct.g_gate_version, %struct.g_gate_version* %4, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @bcopy(i32 %66, i32 %68, i32 4)
  %70 = load i32, i32* @GGATE_VERSION, align 4
  %71 = getelementptr inbounds %struct.g_gate_version, %struct.g_gate_version* %4, i32 0, i32 8
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.g_gate_version, %struct.g_gate_version* %4, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = bitcast %struct.g_gate_version* %4 to %struct.sockaddr_in*
  %74 = call i32 @g_gate_swap2n_version(%struct.sockaddr_in* %73)
  %75 = load i32, i32* %8, align 4
  %76 = bitcast %struct.g_gate_version* %4 to %struct.sockaddr_in*
  %77 = load i32, i32* @MSG_NOSIGNAL, align 4
  %78 = call i32 @g_gate_send(i32 %75, %struct.sockaddr_in* %76, i32 72, i32 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %87

80:                                               ; preds = %53
  %81 = load i32, i32* @LOG_DEBUG, align 4
  %82 = load i64, i64* @errno, align 8
  %83 = call i32 @strerror(i64 %82)
  %84 = call i32 (i32, i8*, ...) @g_gate_log(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @close(i32 %85)
  store i32 -1, i32* %2, align 4
  br label %192

87:                                               ; preds = %53
  %88 = bitcast %struct.g_gate_version* %4 to %struct.sockaddr_in*
  %89 = call i32 @bzero(%struct.sockaddr_in* %88, i32 72)
  %90 = load i32, i32* %8, align 4
  %91 = bitcast %struct.g_gate_version* %4 to %struct.sockaddr_in*
  %92 = load i32, i32* @MSG_WAITALL, align 4
  %93 = call i32 @g_gate_recv(i32 %90, %struct.sockaddr_in* %91, i32 72, i32 %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load i32, i32* @LOG_DEBUG, align 4
  %97 = load i64, i64* @errno, align 8
  %98 = call i32 @strerror(i64 %97)
  %99 = call i32 (i32, i8*, ...) @g_gate_log(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @close(i32 %100)
  store i32 -1, i32* %2, align 4
  br label %192

102:                                              ; preds = %87
  %103 = getelementptr inbounds %struct.g_gate_version, %struct.g_gate_version* %4, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32, i32* @LOG_DEBUG, align 4
  %108 = load i64, i64* @errno, align 8
  %109 = call i32 @strerror(i64 %108)
  %110 = call i32 (i32, i8*, ...) @g_gate_log(i32 %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @close(i32 %111)
  store i32 -1, i32* %2, align 4
  br label %192

113:                                              ; preds = %102
  %114 = load i32, i32* @LOG_DEBUG, align 4
  %115 = call i32 (i32, i8*, ...) @g_gate_log(i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %116 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %5, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @path, align 4
  %119 = call i32 @strlcpy(i32 %117, i32 %118, i32 4)
  %120 = sext i32 %119 to i64
  %121 = icmp uge i64 %120, 4
  br i1 %121, label %122, label %127

122:                                              ; preds = %113
  %123 = load i32, i32* @LOG_DEBUG, align 4
  %124 = call i32 (i32, i8*, ...) @g_gate_log(i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @close(i32 %125)
  store i32 -1, i32* %2, align 4
  br label %192

127:                                              ; preds = %113
  %128 = load i32, i32* @flags, align 4
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %128, %129
  %131 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %5, i32 0, i32 1
  store i32 %130, i32* %131, align 8
  %132 = load i32, i32* @token, align 4
  %133 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %5, i32 0, i32 6
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.g_gate_cinit, %struct.g_gate_cinit* %5, i32 0, i32 2
  store i32 2, i32* %134, align 4
  %135 = bitcast %struct.g_gate_cinit* %5 to %struct.sockaddr_in*
  %136 = call i32 @g_gate_swap2n_cinit(%struct.sockaddr_in* %135)
  %137 = load i32, i32* %8, align 4
  %138 = bitcast %struct.g_gate_cinit* %5 to %struct.sockaddr_in*
  %139 = load i32, i32* @MSG_NOSIGNAL, align 4
  %140 = call i32 @g_gate_send(i32 %137, %struct.sockaddr_in* %138, i32 72, i32 %139)
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %149

142:                                              ; preds = %127
  %143 = load i32, i32* @LOG_DEBUG, align 4
  %144 = load i64, i64* @errno, align 8
  %145 = call i32 @strerror(i64 %144)
  %146 = call i32 (i32, i8*, ...) @g_gate_log(i32 %143, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @close(i32 %147)
  store i32 -1, i32* %2, align 4
  br label %192

149:                                              ; preds = %127
  %150 = bitcast %struct.g_gate_cinit* %5 to %struct.sockaddr_in*
  %151 = call i32 @g_gate_swap2h_cinit(%struct.sockaddr_in* %150)
  %152 = load i32, i32* @LOG_DEBUG, align 4
  %153 = call i32 (i32, i8*, ...) @g_gate_log(i32 %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %154 = load i32, i32* %8, align 4
  %155 = bitcast %struct.g_gate_sinit* %6 to %struct.sockaddr_in*
  %156 = load i32, i32* @MSG_WAITALL, align 4
  %157 = call i32 @g_gate_recv(i32 %154, %struct.sockaddr_in* %155, i32 72, i32 %156)
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %166

159:                                              ; preds = %149
  %160 = load i32, i32* @LOG_DEBUG, align 4
  %161 = load i64, i64* @errno, align 8
  %162 = call i32 @strerror(i64 %161)
  %163 = call i32 (i32, i8*, ...) @g_gate_log(i32 %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @close(i32 %164)
  store i32 -1, i32* %2, align 4
  br label %192

166:                                              ; preds = %149
  %167 = bitcast %struct.g_gate_sinit* %6 to %struct.sockaddr_in*
  %168 = call i32 @g_gate_swap2h_sinit(%struct.sockaddr_in* %167)
  %169 = getelementptr inbounds %struct.g_gate_sinit, %struct.g_gate_sinit* %6, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load i32, i32* @LOG_DEBUG, align 4
  %174 = getelementptr inbounds %struct.g_gate_sinit, %struct.g_gate_sinit* %6, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @strerror(i64 %175)
  %177 = call i32 (i32, i8*, ...) @g_gate_log(i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @close(i32 %178)
  store i32 -1, i32* %2, align 4
  br label %192

180:                                              ; preds = %166
  %181 = load i32, i32* @LOG_DEBUG, align 4
  %182 = call i32 (i32, i8*, ...) @g_gate_log(i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %183 = getelementptr inbounds %struct.g_gate_sinit, %struct.g_gate_sinit* %6, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* @mediasize, align 4
  %185 = load i64, i64* @sectorsize, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.g_gate_sinit, %struct.g_gate_sinit* %6, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* @sectorsize, align 8
  br label %190

190:                                              ; preds = %187, %180
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %190, %172, %159, %142, %122, %106, %95, %80, %46, %34, %21
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @g_gate_str2ip(i32) #1

declare dso_local i32 @g_gate_log(i32, i8*, ...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @g_gate_socket_settings(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @g_gate_swap2n_version(%struct.sockaddr_in*) #1

declare dso_local i32 @g_gate_send(i32, %struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @g_gate_recv(i32, %struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @g_gate_swap2n_cinit(%struct.sockaddr_in*) #1

declare dso_local i32 @g_gate_swap2h_cinit(%struct.sockaddr_in*) #1

declare dso_local i32 @g_gate_swap2h_sinit(%struct.sockaddr_in*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
