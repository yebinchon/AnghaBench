; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_client_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rstream.c_client_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_addrinfo = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32 }
%struct.pollfd = type { i32, i8* }

@use_rgai = common dso_local global i64 0, align 8
@dst_addr = common dso_local global i64 0, align 8
@port = common dso_local global i32 0, align 4
@rai_hints = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@ai_hints = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@src_addr = common dso_local global i64 0, align 8
@RAI_PASSIVE = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"getaddrinfo src_addr: %s\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@rs = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"rsocket\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rbind\00", align 1
@SOL_RDMA = common dso_local global i32 0, align 4
@RDMA_ROUTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"rsetsockopt RDMA_ROUTE\00", align 1
@errno = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"rconnect\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"rpoll\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"async rconnect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @client_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rdma_addrinfo*, align 8
  %3 = alloca %struct.rdma_addrinfo*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.pollfd, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rdma_addrinfo* null, %struct.rdma_addrinfo** %2, align 8
  store %struct.rdma_addrinfo* null, %struct.rdma_addrinfo** %3, align 8
  %10 = load i64, i64* @use_rgai, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i64, i64* @dst_addr, align 8
  %14 = load i32, i32* @port, align 4
  %15 = call i32 @rdma_getaddrinfo(i64 %13, i32 %14, %struct.TYPE_5__* @rai_hints, %struct.rdma_addrinfo** %2)
  br label %20

16:                                               ; preds = %0
  %17 = load i64, i64* @dst_addr, align 8
  %18 = load i32, i32* @port, align 4
  %19 = call i32 @getaddrinfo(i64 %17, i32 %18, %struct.TYPE_6__* @ai_hints, %struct.addrinfo** %4)
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @gai_strerror(i32 %25)
  %27 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %1, align 4
  br label %221

29:                                               ; preds = %20
  %30 = load i64, i64* @src_addr, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = load i64, i64* @use_rgai, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* @RAI_PASSIVE, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rai_hints, i32 0, i32 0), align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rai_hints, i32 0, i32 0), align 4
  %39 = load i64, i64* @src_addr, align 8
  %40 = load i32, i32* @port, align 4
  %41 = call i32 @rdma_getaddrinfo(i64 %39, i32 %40, %struct.TYPE_5__* @rai_hints, %struct.rdma_addrinfo** %3)
  store i32 %41, i32* %7, align 4
  br label %49

42:                                               ; preds = %32
  %43 = load i32, i32* @AI_PASSIVE, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ai_hints, i32 0, i32 0), align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ai_hints, i32 0, i32 0), align 4
  %46 = load i64, i64* @src_addr, align 8
  %47 = load i32, i32* @port, align 4
  %48 = call i32 @getaddrinfo(i64 %46, i32 %47, %struct.TYPE_6__* @ai_hints, %struct.addrinfo** %5)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @gai_strerror(i32 %53)
  %55 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %1, align 4
  br label %221

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %29
  %59 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %60 = icmp ne %struct.rdma_addrinfo* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %63 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SOCK_STREAM, align 4
  %66 = call i8* @rs_socket(i32 %64, i32 %65, i32 0)
  br label %73

67:                                               ; preds = %58
  %68 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %69 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SOCK_STREAM, align 4
  %72 = call i8* @rs_socket(i32 %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi i8* [ %66, %61 ], [ %72, %67 ]
  store i8* %74, i8** @rs, align 8
  %75 = load i8*, i8** @rs, align 8
  %76 = icmp ult i8* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i8*, i8** @rs, align 8
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %7, align 4
  br label %210

81:                                               ; preds = %73
  %82 = load i8*, i8** @rs, align 8
  %83 = call i32 @set_options(i8* %82)
  %84 = load i64, i64* @src_addr, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %81
  %87 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %88 = icmp ne %struct.rdma_addrinfo* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i8*, i8** @rs, align 8
  %91 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %92 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %3, align 8
  %95 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @rs_bind(i8* %90, i32 %93, i32 %96)
  br label %107

98:                                               ; preds = %86
  %99 = load i8*, i8** @rs, align 8
  %100 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %101 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %104 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rs_bind(i8* %99, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %98, %89
  %108 = phi i32 [ %97, %89 ], [ %106, %98 ]
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %203

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %81
  %115 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %116 = icmp ne %struct.rdma_addrinfo* %115, null
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %119 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load i8*, i8** @rs, align 8
  %124 = load i32, i32* @SOL_RDMA, align 4
  %125 = load i32, i32* @RDMA_ROUTE, align 4
  %126 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %127 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %130 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @rs_setsockopt(i8* %123, i32 %124, i32 %125, i64 %128, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %203

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %137, %117, %114
  %139 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %140 = icmp ne %struct.rdma_addrinfo* %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i8*, i8** @rs, align 8
  %143 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %144 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %147 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @rs_connect(i8* %142, i32 %145, i32 %148)
  br label %159

150:                                              ; preds = %138
  %151 = load i8*, i8** @rs, align 8
  %152 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %153 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %156 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @rs_connect(i8* %151, i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %150, %141
  %160 = phi i32 [ %149, %141 ], [ %158, %150 ]
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  %164 = load i32, i32* @errno, align 4
  %165 = load i32, i32* @EINPROGRESS, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %203

169:                                              ; preds = %163, %159
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %202

172:                                              ; preds = %169
  %173 = load i32, i32* @errno, align 4
  %174 = load i32, i32* @EINPROGRESS, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %202

176:                                              ; preds = %172
  %177 = load i8*, i8** @rs, align 8
  %178 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  store i8* %177, i8** %178, align 8
  %179 = load i32, i32* @POLLOUT, align 4
  %180 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 0
  store i32 %179, i32* %180, align 8
  %181 = load i32, i32* @poll_timeout, align 4
  %182 = call i32 @do_poll(%struct.pollfd* %6, i32 %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %176
  %186 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %203

187:                                              ; preds = %176
  store i32 4, i32* %9, align 4
  %188 = load i8*, i8** @rs, align 8
  %189 = load i32, i32* @SOL_SOCKET, align 4
  %190 = load i32, i32* @SO_ERROR, align 4
  %191 = call i32 @rs_getsockopt(i8* %188, i32 %189, i32 %190, i32* %8, i32* %9)
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %203

195:                                              ; preds = %187
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  store i32 -1, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* @errno, align 4
  %200 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %172, %169
  br label %203

203:                                              ; preds = %202, %194, %185, %167, %135, %111
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i8*, i8** @rs, align 8
  %208 = call i32 @rs_close(i8* %207)
  br label %209

209:                                              ; preds = %206, %203
  br label %210

210:                                              ; preds = %209, %77
  %211 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %212 = icmp ne %struct.rdma_addrinfo* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %215 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %214)
  br label %219

216:                                              ; preds = %210
  %217 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %218 = call i32 @freeaddrinfo(%struct.addrinfo* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32, i32* %7, align 4
  store i32 %220, i32* %1, align 4
  br label %221

221:                                              ; preds = %219, %52, %24
  %222 = load i32, i32* %1, align 4
  ret i32 %222
}

declare dso_local i32 @rdma_getaddrinfo(i64, i32, %struct.TYPE_5__*, %struct.rdma_addrinfo**) #1

declare dso_local i32 @getaddrinfo(i64, i32, %struct.TYPE_6__*, %struct.addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i8* @rs_socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @set_options(i8*) #1

declare dso_local i32 @rs_bind(i8*, i32, i32) #1

declare dso_local i32 @rs_setsockopt(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @rs_connect(i8*, i32, i32) #1

declare dso_local i32 @do_poll(%struct.pollfd*, i32) #1

declare dso_local i32 @rs_getsockopt(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @rs_close(i8*) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
