; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_socket_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_socket_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.in6_pktinfo, i32, i32* }
%struct.in6_pktinfo = type { i64 }

@ISC_FALSE = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_PKTINFO = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_SOCKET = common dso_local global i32 0, align 4
@ISC_MSG_PKTINFOPROVIDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"pktinfo structure provided, ifindex %u (set to 0)\00", align 1
@isc_sockettype_udp = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i64 0, align 8
@ISC_SOCKFLAG_NORETRY = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_ATTACHED = common dso_local global i32 0, align 4
@SELECT_POKE_WRITE = common dso_local global i32 0, align 4
@ev_link = common dso_local global i32 0, align 4
@EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"socket_send: event %p -> task %p\00", align 1
@ISC_SOCKFLAG_IMMEDIATE = common dso_local global i32 0, align 4
@ISC_R_INPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32*, i32*, %struct.in6_pktinfo*, i32)* @socket_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_send(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32* %2, i32* %3, %struct.in6_pktinfo* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.in6_pktinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.in6_pktinfo* %4, %struct.in6_pktinfo** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i64, i64* @ISC_FALSE, align 8
  store i64 %17, i64* %14, align 8
  store i32* null, i32** %15, align 8
  %18 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = call i32 @set_dev_address(i32* %22, %struct.TYPE_15__* %23, %struct.TYPE_14__* %24)
  %26 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %11, align 8
  %27 = icmp ne %struct.in6_pktinfo* %26, null
  br i1 %27, label %28, label %65

28:                                               ; preds = %6
  %29 = load i32, i32* @ISC_SOCKEVENTATTR_PKTINFO, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %11, align 8
  %37 = bitcast %struct.in6_pktinfo* %35 to i8*
  %38 = bitcast %struct.in6_pktinfo* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = call i32 @isc_sockaddr_issitelocal(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %28
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = call i32 @isc_sockaddr_islinklocal(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = load i32, i32* @TRACE, align 4
  %51 = load i32, i32* @isc_msgcat, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  %54 = load i32, i32* @ISC_MSGSET_SOCKET, align 4
  %55 = load i32, i32* @ISC_MSG_PKTINFOPROVIDED, align 4
  %56 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %11, align 8
  %57 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.TYPE_14__*
  %60 = call i32 (%struct.TYPE_15__*, i32*, i32, i32*, i32, i32, i8*, %struct.TYPE_14__*, ...) @socket_log(%struct.TYPE_15__* %49, i32* null, i32 %50, i32* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.in6_pktinfo, %struct.in6_pktinfo* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %48, %43, %28
  br label %65

65:                                               ; preds = %64, %6
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @isc_sockettype_udp, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = call i32 @doio_send(%struct.TYPE_15__* %72, %struct.TYPE_14__* %73)
  store i32 %74, i32* %13, align 4
  br label %91

75:                                               ; preds = %65
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = call i32 @LOCK(i32* %77)
  %79 = load i64, i64* @ISC_TRUE, align 8
  store i64 %79, i64* %14, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ISC_LIST_EMPTY(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = call i32 @doio_send(%struct.TYPE_15__* %86, %struct.TYPE_14__* %87)
  store i32 %88, i32* %13, align 4
  br label %90

89:                                               ; preds = %75
  store i32 129, i32* %13, align 4
  br label %90

90:                                               ; preds = %89, %85
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* %13, align 4
  switch i32 %92, label %162 [
    i32 129, label %93
    i32 130, label %153
    i32 128, label %153
  ]

93:                                               ; preds = %91
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @ISC_SOCKFLAG_NORETRY, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %152

98:                                               ; preds = %93
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @isc_task_attach(i32* %99, i32** %15)
  %101 = load i32, i32* @ISC_SOCKEVENTATTR_ATTACHED, align 4
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load i64, i64* %14, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %98
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = call i32 @LOCK(i32* %110)
  %112 = load i64, i64* @ISC_TRUE, align 8
  store i64 %112, i64* %14, align 8
  br label %113

113:                                              ; preds = %108, %98
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @ISC_LIST_EMPTY(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %113
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @SELECT_POKE_WRITE, align 4
  %132 = call i32 @select_poke(i32 %127, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %124, %119, %113
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = load i32, i32* @ev_link, align 4
  %139 = call i32 @ISC_LIST_ENQUEUE(i32 %136, %struct.TYPE_14__* %137, i32 %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = load i32, i32* @EVENT, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = call i32 (%struct.TYPE_15__*, i32*, i32, i32*, i32, i32, i8*, %struct.TYPE_14__*, ...) @socket_log(%struct.TYPE_15__* %140, i32* null, i32 %141, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %142, i32* %143)
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @ISC_SOCKFLAG_IMMEDIATE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %133
  %150 = load i32, i32* @ISC_R_INPROGRESS, align 4
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %149, %133
  br label %162

152:                                              ; preds = %93
  br label %153

153:                                              ; preds = %91, %91, %152
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @ISC_SOCKFLAG_IMMEDIATE, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %160 = call i32 @send_senddone_event(%struct.TYPE_15__* %159, %struct.TYPE_14__** %8)
  br label %161

161:                                              ; preds = %158, %153
  br label %162

162:                                              ; preds = %91, %161, %151
  %163 = load i64, i64* %14, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = call i32 @UNLOCK(i32* %167)
  br label %169

169:                                              ; preds = %165, %162
  %170 = load i32, i32* %16, align 4
  ret i32 %170
}

declare dso_local i32 @set_dev_address(i32*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @isc_sockaddr_issitelocal(i32*) #1

declare dso_local i32 @isc_sockaddr_islinklocal(i32*) #1

declare dso_local i32 @socket_log(%struct.TYPE_15__*, i32*, i32, i32*, i32, i32, i8*, %struct.TYPE_14__*, ...) #1

declare dso_local i32 @doio_send(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i64 @ISC_LIST_EMPTY(i32) #1

declare dso_local i32 @isc_task_attach(i32*, i32**) #1

declare dso_local i32 @select_poke(i32, i32, i32) #1

declare dso_local i32 @ISC_LIST_ENQUEUE(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @send_senddone_event(%struct.TYPE_15__*, %struct.TYPE_14__**) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
