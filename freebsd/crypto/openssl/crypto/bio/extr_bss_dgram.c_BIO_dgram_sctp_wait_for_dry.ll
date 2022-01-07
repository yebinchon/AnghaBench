; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_dgram.c_BIO_dgram_sctp_wait_for_dry.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bss_dgram.c_BIO_dgram_sctp_wait_for_dry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%union.sctp_notification = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.msghdr = type { i32, i32, i64, i32*, %struct.iovec*, i64, i32* }
%struct.iovec = type { i8*, i32 }
%struct.sctp_event_subscribe = type { i32, i32, %struct.TYPE_7__, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_9__*, i32, i8*)* }

@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SCTP_EVENTS = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@SCTP_SENDER_DRY_EVENT = common dso_local global i64 0, align 8
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SCTP_AUTHENTICATION_EVENT = common dso_local global i64 0, align 8
@SCTP_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_dgram_sctp_wait_for_dry(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_notification, align 8
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca %struct.iovec, align 8
  %11 = alloca %struct.sctp_event_subscribe, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %13, align 8
  store i32 32, i32* %12, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IPPROTO_SCTP, align 4
  %22 = load i32, i32* @SCTP_EVENTS, align 4
  %23 = bitcast %struct.sctp_event_subscribe* %11 to %union.sctp_notification*
  %24 = call i32 @getsockopt(i32 %20, i32 %21, i32 %22, %union.sctp_notification* %23, i32* %12)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %217

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.sctp_event_subscribe, %struct.sctp_event_subscribe* %11, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IPPROTO_SCTP, align 4
  %34 = load i32, i32* @SCTP_EVENTS, align 4
  %35 = bitcast %struct.sctp_event_subscribe* %11 to %union.sctp_notification*
  %36 = call i32 @setsockopt(i32 %32, i32 %33, i32 %34, %union.sctp_notification* %35, i32 32)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %217

40:                                               ; preds = %28
  %41 = call i32 @memset(%union.sctp_notification* %8, i32 0, i32 8)
  %42 = bitcast %union.sctp_notification* %8 to i8*
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  store i32 8, i32* %44, align 8
  %45 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 6
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 4
  store %struct.iovec* %10, %struct.iovec** %47, align 8
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MSG_PEEK, align 4
  %56 = call i32 @recvmsg(i32 %54, %struct.msghdr* %9, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %40
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = call i64 (...) @get_last_socket_error()
  %64 = load i64, i64* @EAGAIN, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = call i64 (...) @get_last_socket_error()
  %68 = load i64, i64* @EWOULDBLOCK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %2, align 4
  br label %217

71:                                               ; preds = %66, %62, %59
  store i32 0, i32* %2, align 4
  br label %217

72:                                               ; preds = %40
  br label %73

73:                                               ; preds = %214, %72
  %74 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MSG_NOTIFICATION, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %215

79:                                               ; preds = %73
  %80 = call i32 @memset(%union.sctp_notification* %8, i32 0, i32 8)
  %81 = bitcast %union.sctp_notification* %8 to i8*
  %82 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  %83 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  store i32 8, i32* %83, align 8
  %84 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 6
  store i32* null, i32** %84, align 8
  %85 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 4
  store %struct.iovec* %10, %struct.iovec** %86, align 8
  %87 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3
  store i32* null, i32** %88, align 8
  %89 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @recvmsg(i32 %93, %struct.msghdr* %9, i32 0)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %79
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = call i64 (...) @get_last_socket_error()
  %102 = load i64, i64* @EAGAIN, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = call i64 (...) @get_last_socket_error()
  %106 = load i64, i64* @EWOULDBLOCK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 -1, i32* %2, align 4
  br label %217

109:                                              ; preds = %104, %100, %97
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %217

111:                                              ; preds = %79
  %112 = bitcast %union.sctp_notification* %8 to %struct.TYPE_7__*
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SCTP_SENDER_DRY_EVENT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %141

117:                                              ; preds = %111
  store i32 1, i32* %4, align 4
  store i32 32, i32* %12, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @IPPROTO_SCTP, align 4
  %122 = load i32, i32* @SCTP_EVENTS, align 4
  %123 = bitcast %struct.sctp_event_subscribe* %11 to %union.sctp_notification*
  %124 = call i32 @getsockopt(i32 %120, i32 %121, i32 %122, %union.sctp_notification* %123, i32* %12)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  store i32 -1, i32* %2, align 4
  br label %217

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.sctp_event_subscribe, %struct.sctp_event_subscribe* %11, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IPPROTO_SCTP, align 4
  %134 = load i32, i32* @SCTP_EVENTS, align 4
  %135 = bitcast %struct.sctp_event_subscribe* %11 to %union.sctp_notification*
  %136 = call i32 @setsockopt(i32 %132, i32 %133, i32 %134, %union.sctp_notification* %135, i32 32)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  store i32 -1, i32* %2, align 4
  br label %217

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %111
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32 (%struct.TYPE_9__*, i32, i8*)*, i32 (%struct.TYPE_9__*, i32, i8*)** %143, align 8
  %145 = icmp ne i32 (%struct.TYPE_9__*, i32, i8*)* %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32 (%struct.TYPE_9__*, i32, i8*)*, i32 (%struct.TYPE_9__*, i32, i8*)** %148, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = bitcast %union.sctp_notification* %8 to i8*
  %155 = call i32 %149(%struct.TYPE_9__* %150, i32 %153, i8* %154)
  br label %156

156:                                              ; preds = %146, %141
  %157 = call i32 @memset(%union.sctp_notification* %8, i32 0, i32 8)
  %158 = bitcast %union.sctp_notification* %8 to i8*
  %159 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 0
  store i8* %158, i8** %159, align 8
  %160 = getelementptr inbounds %struct.iovec, %struct.iovec* %10, i32 0, i32 1
  store i32 8, i32* %160, align 8
  %161 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 6
  store i32* null, i32** %161, align 8
  %162 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 5
  store i64 0, i64* %162, align 8
  %163 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 4
  store %struct.iovec* %10, %struct.iovec** %163, align 8
  %164 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3
  store i32* null, i32** %165, align 8
  %166 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 0, i32* %167, align 4
  %168 = load i32, i32* %4, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %156
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @F_GETFL, align 4
  %175 = call i32 @fcntl(i32 %173, i32 %174, i32 0)
  store i32 %175, i32* %5, align 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @F_SETFL, align 4
  %180 = load i32, i32* @O_NONBLOCK, align 4
  %181 = call i32 @fcntl(i32 %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %170, %156
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MSG_PEEK, align 4
  %187 = call i32 @recvmsg(i32 %185, %struct.msghdr* %9, i32 %186)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %182
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @F_SETFL, align 4
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @fcntl(i32 %193, i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %190, %182
  %198 = load i32, i32* %6, align 4
  %199 = icmp sle i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load i32, i32* %6, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %200
  %204 = call i64 (...) @get_last_socket_error()
  %205 = load i64, i64* @EAGAIN, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = call i64 (...) @get_last_socket_error()
  %209 = load i64, i64* @EWOULDBLOCK, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  store i32 -1, i32* %2, align 4
  br label %217

212:                                              ; preds = %207, %203, %200
  %213 = load i32, i32* %4, align 4
  store i32 %213, i32* %2, align 4
  br label %217

214:                                              ; preds = %197
  br label %73

215:                                              ; preds = %73
  %216 = load i32, i32* %4, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %215, %212, %211, %139, %127, %109, %108, %71, %70, %39, %27
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @getsockopt(i32, i32, i32, %union.sctp_notification*, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %union.sctp_notification*, i32) #1

declare dso_local i32 @memset(%union.sctp_notification*, i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i64 @get_last_socket_error(...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
