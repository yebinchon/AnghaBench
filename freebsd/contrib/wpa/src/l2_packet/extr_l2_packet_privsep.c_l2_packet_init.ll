; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_privsep.c_l2_packet_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/l2_packet/extr_l2_packet_privsep.c_l2_packet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_packet_data = type { void (i8*, i32*, i32*, i64)*, i32, %struct.l2_packet_data*, i32, %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.sockaddr_un = type { i32, i8* }
%struct.timeval = type { i32, i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"/var/run/wpa_priv\00", align 1
@l2_packet_init.counter = internal global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s/wpa_privsep-l2-%d-%d\00", align 1
@AF_UNIX = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"socket(PF_UNIX): %s\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"l2-pkt-privsep: bind(PF_UNIX): %s\00", align 1
@PRIVSEP_CMD_L2_REGISTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"L2: Failed to register with wpa_priv\00", align 1
@EINTR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"select: %s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"recv: %s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i8] c"L2: Timeout while waiting for registration reply\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"L2: Unexpected registration reply (len=%d)\00", align 1
@l2_packet_receive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2_packet_data* @l2_packet_init(i8* %0, i32* %1, i16 zeroext %2, void (i8*, i32*, i32*, i64)* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.l2_packet_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16, align 2
  %11 = alloca void (i8*, i32*, i32*, i64)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.l2_packet_data*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.sockaddr_un, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.timeval, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [2 x i32], align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i16 %2, i16* %10, align 2
  store void (i8*, i32*, i32*, i64)* %3, void (i8*, i32*, i32*, i64)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %22, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %23, align 8
  %31 = call %struct.l2_packet_data* @os_zalloc(i32 56)
  store %struct.l2_packet_data* %31, %struct.l2_packet_data** %14, align 8
  %32 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %33 = icmp eq %struct.l2_packet_data* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  store i32 1, i32* %25, align 4
  br label %228

35:                                               ; preds = %6
  %36 = load void (i8*, i32*, i32*, i64)*, void (i8*, i32*, i32*, i64)** %11, align 8
  %37 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %38 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %37, i32 0, i32 0
  store void (i8*, i32*, i32*, i64)* %36, void (i8*, i32*, i32*, i64)** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %41 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @os_strlen(i8* %42)
  %44 = add nsw i32 %43, 50
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call %struct.l2_packet_data* @os_malloc(i64 %46)
  %48 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %49 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %48, i32 0, i32 2
  store %struct.l2_packet_data* %47, %struct.l2_packet_data** %49, align 8
  %50 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %51 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %50, i32 0, i32 2
  %52 = load %struct.l2_packet_data*, %struct.l2_packet_data** %51, align 8
  %53 = icmp eq %struct.l2_packet_data* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %56 = call i32 @os_free(%struct.l2_packet_data* %55)
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  store i32 1, i32* %25, align 4
  br label %228

57:                                               ; preds = %35
  %58 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %59 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %58, i32 0, i32 2
  %60 = load %struct.l2_packet_data*, %struct.l2_packet_data** %59, align 8
  %61 = load i64, i64* %17, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 (...) @getpid()
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i32, i32* @l2_packet_init.counter, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* @l2_packet_init.counter, align 4
  %69 = call i32 (%struct.l2_packet_data*, i32, i8*, i8*, i8*, ...) @os_snprintf(%struct.l2_packet_data* %60, i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %63, i8* %66, i32 %67)
  %70 = load i8*, i8** @AF_UNIX, align 8
  %71 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %72 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %75 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to %struct.l2_packet_data*
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (%struct.l2_packet_data*, i32, i8*, i8*, i8*, ...) @os_snprintf(%struct.l2_packet_data* %79, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %80, i8* %81)
  %83 = load i32, i32* @PF_UNIX, align 4
  %84 = load i32, i32* @SOCK_DGRAM, align 4
  %85 = call i32 @socket(i32 %83, i32 %84, i32 0)
  %86 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %87 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %89 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %57
  %93 = load i32, i32* @MSG_ERROR, align 4
  %94 = load i64, i64* @errno, align 8
  %95 = call i32 @strerror(i64 %94)
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %98 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %97, i32 0, i32 2
  %99 = load %struct.l2_packet_data*, %struct.l2_packet_data** %98, align 8
  %100 = call i32 @os_free(%struct.l2_packet_data* %99)
  %101 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %102 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %101, i32 0, i32 2
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %102, align 8
  %103 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %104 = call i32 @os_free(%struct.l2_packet_data* %103)
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  store i32 1, i32* %25, align 4
  br label %228

105:                                              ; preds = %57
  %106 = call i32 @os_memset(%struct.sockaddr_un* %18, i32 0, i32 16)
  %107 = load i8*, i8** @AF_UNIX, align 8
  %108 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %18, i32 0, i32 1
  store i8* %107, i8** %108, align 8
  %109 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %18, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %112 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %111, i32 0, i32 2
  %113 = load %struct.l2_packet_data*, %struct.l2_packet_data** %112, align 8
  %114 = call i32 @os_strlcpy(i32 %110, %struct.l2_packet_data* %113, i32 4)
  %115 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %116 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = bitcast %struct.sockaddr_un* %18 to %struct.sockaddr*
  %119 = call i64 @bind(i32 %117, %struct.sockaddr* %118, i32 16)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %105
  %122 = load i32, i32* @MSG_ERROR, align 4
  %123 = load i64, i64* @errno, align 8
  %124 = call i32 @strerror(i64 %123)
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  br label %209

126:                                              ; preds = %105
  %127 = load i16, i16* %10, align 2
  %128 = zext i16 %127 to i32
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %13, align 4
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 1
  store i32 %130, i32* %131, align 4
  %132 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %133 = load i32, i32* @PRIVSEP_CMD_L2_REGISTER, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %135 = call i64 @wpa_priv_cmd(%struct.l2_packet_data* %132, i32 %133, i32* %134, i32 8)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  %138 = load i32, i32* @MSG_ERROR, align 4
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %209

140:                                              ; preds = %126
  %141 = call i32 @FD_ZERO(i32* %19)
  %142 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %143 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @FD_SET(i32 %144, i32* %19)
  %146 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  store i32 5, i32* %146, align 8
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 1
  store i64 0, i64* %147, align 8
  %148 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %149 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  %152 = call i32 @select(i32 %151, i32* %19, i32* null, i32* null, %struct.timeval* %20)
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %21, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %140
  %156 = load i64, i64* @errno, align 8
  %157 = load i64, i64* @EINTR, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load i32, i32* @MSG_ERROR, align 4
  %161 = load i64, i64* @errno, align 8
  %162 = call i32 @strerror(i64 %161)
  %163 = call i32 (i32, i8*, ...) @wpa_printf(i32 %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  br label %209

164:                                              ; preds = %155, %140
  %165 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %166 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @FD_ISSET(i32 %167, i32* %19)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %164
  %171 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %172 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = mul nuw i64 4, %28
  %175 = trunc i64 %174 to i32
  %176 = call i32 @recv(i32 %173, i32* %30, i32 %175, i32 0)
  store i32 %176, i32* %21, align 4
  %177 = load i32, i32* %21, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %170
  %180 = load i32, i32* @MSG_ERROR, align 4
  %181 = load i64, i64* @errno, align 8
  %182 = call i32 @strerror(i64 %181)
  %183 = call i32 (i32, i8*, ...) @wpa_printf(i32 %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  br label %209

184:                                              ; preds = %170
  br label %188

185:                                              ; preds = %164
  %186 = load i32, i32* @MSG_DEBUG, align 4
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %186, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  br label %209

188:                                              ; preds = %184
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* @ETH_ALEN, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32, i32* @MSG_DEBUG, align 4
  %194 = load i32, i32* %21, align 4
  %195 = call i32 (i32, i8*, ...) @wpa_printf(i32 %193, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %192, %188
  %197 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %198 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @ETH_ALEN, align 4
  %201 = call i32 @os_memcpy(i32 %199, i32* %30, i32 %200)
  %202 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %203 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @l2_packet_receive, align 4
  %206 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %207 = call i32 @eloop_register_read_sock(i32 %204, i32 %205, %struct.l2_packet_data* %206, i32* null)
  %208 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  store %struct.l2_packet_data* %208, %struct.l2_packet_data** %7, align 8
  store i32 1, i32* %25, align 4
  br label %228

209:                                              ; preds = %185, %179, %159, %137, %121
  %210 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %211 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @close(i32 %212)
  %214 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %215 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %214, i32 0, i32 1
  store i32 -1, i32* %215, align 8
  %216 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %217 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %216, i32 0, i32 2
  %218 = load %struct.l2_packet_data*, %struct.l2_packet_data** %217, align 8
  %219 = call i32 @unlink(%struct.l2_packet_data* %218)
  %220 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %221 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %220, i32 0, i32 2
  %222 = load %struct.l2_packet_data*, %struct.l2_packet_data** %221, align 8
  %223 = call i32 @os_free(%struct.l2_packet_data* %222)
  %224 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %225 = getelementptr inbounds %struct.l2_packet_data, %struct.l2_packet_data* %224, i32 0, i32 2
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %225, align 8
  %226 = load %struct.l2_packet_data*, %struct.l2_packet_data** %14, align 8
  %227 = call i32 @os_free(%struct.l2_packet_data* %226)
  store %struct.l2_packet_data* null, %struct.l2_packet_data** %7, align 8
  store i32 1, i32* %25, align 4
  br label %228

228:                                              ; preds = %209, %196, %92, %54, %34
  %229 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %229)
  %230 = load %struct.l2_packet_data*, %struct.l2_packet_data** %7, align 8
  ret %struct.l2_packet_data* %230
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.l2_packet_data* @os_zalloc(i32) #2

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local %struct.l2_packet_data* @os_malloc(i64) #2

declare dso_local i32 @os_free(%struct.l2_packet_data*) #2

declare dso_local i32 @os_snprintf(%struct.l2_packet_data*, i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @strerror(i64) #2

declare dso_local i32 @os_memset(%struct.sockaddr_un*, i32, i32) #2

declare dso_local i32 @os_strlcpy(i32, %struct.l2_packet_data*, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @wpa_priv_cmd(%struct.l2_packet_data*, i32, i32*, i32) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @recv(i32, i32*, i32, i32) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @eloop_register_read_sock(i32, i32, %struct.l2_packet_data*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unlink(%struct.l2_packet_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
