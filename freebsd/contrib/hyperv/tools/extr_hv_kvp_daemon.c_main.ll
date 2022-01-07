; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.hv_kvp_msg*, i8*)* }
%struct.hv_kvp_msg = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"dn\00", align 1
@is_daemon = common dso_local global i32 0, align 4
@is_debugging = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"HV_KVP\00", align 1
@LOG_USER = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Run as regular process.\0A\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"HV_KVP starting; pid is: %d\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to allocate memory for hv buffer\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed to initizlize operation handlers\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to initialize the pools\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"/dev/hv_kvp_dev\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"open /dev/hv_kvp_dev failed; error: %d %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@HV_KVP_OP_REGISTER = common dso_local global i32 0, align 4
@INFTIM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"poll returned r = %d, revent = 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"Poll failed.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"Read failed.\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"pread\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"read len is: %d\0A\00", align 1
@HV_KVP_OP_COUNT = common dso_local global i32 0, align 4
@kvp_op_hdlrs = common dso_local global %struct.TYPE_6__* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [31 x i8] c"Unsupported operation OP = %d\0A\00", align 1
@HV_ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@HV_S_OK = common dso_local global i64 0, align 8
@HV_S_CONT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [40 x i8] c"Operation failed OP = %d, error = 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"write len is: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hv_kvp_msg*, align 8
  %7 = alloca %struct.hv_kvp_msg*, align 8
  %8 = alloca [1 x %struct.pollfd], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %16

16:                                               ; preds = %26, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @getopt(i32 %17, i8** %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %15, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* %15, align 4
  switch i32 %22, label %25 [
    i32 110, label %23
    i32 100, label %24
  ]

23:                                               ; preds = %21
  store i32 0, i32* @is_daemon, align 4
  br label %26

24:                                               ; preds = %21
  store i32 1, i32* @is_debugging, align 4
  br label %26

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %24, %23
  br label %16

27:                                               ; preds = %16
  %28 = load i32, i32* @LOG_USER, align 4
  %29 = call i32 @openlog(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %28)
  %30 = load i32, i32* @is_daemon, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @daemon(i32 1, i32 0)
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @LOG_DEBUG, align 4
  %36 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %32
  %38 = load i32, i32* @LOG_INFO, align 4
  %39 = call i32 (...) @getpid()
  %40 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = call %struct.hv_kvp_msg* @malloc(i32 16)
  store %struct.hv_kvp_msg* %41, %struct.hv_kvp_msg** %6, align 8
  %42 = call %struct.hv_kvp_msg* @malloc(i32 16)
  store %struct.hv_kvp_msg* %42, %struct.hv_kvp_msg** %7, align 8
  %43 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %44 = icmp eq %struct.hv_kvp_msg* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %47 = icmp eq %struct.hv_kvp_msg* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %37
  %49 = load i32, i32* @LOG_ERR, align 4
  %50 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @EXIT_FAILURE, align 4
  %52 = call i32 @exit(i32 %51) #3
  unreachable

53:                                               ; preds = %45
  %54 = call i64 (...) @kvp_ops_init()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 @exit(i32 %59) #3
  unreachable

61:                                               ; preds = %53
  %62 = call i64 (...) @kvp_file_init()
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* @LOG_ERR, align 4
  %66 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* @EXIT_FAILURE, align 4
  %68 = call i32 @exit(i32 %67) #3
  unreachable

69:                                               ; preds = %61
  %70 = load i32, i32* @O_RDWR, align 4
  %71 = call i32 @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* @LOG_ERR, align 4
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @errno, align 8
  %78 = call i32 @strerror(i64 %77)
  %79 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i64 %76, i32 %78)
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = call i32 @exit(i32 %80) #3
  unreachable

82:                                               ; preds = %69
  %83 = load i32, i32* %11, align 4
  %84 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %85 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @POLLIN, align 4
  %87 = load i32, i32* @POLLRDNORM, align 4
  %88 = or i32 %86, %87
  %89 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %90 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %92 = call i32 @memset(%struct.hv_kvp_msg* %91, i32 0, i32 16)
  %93 = load i32, i32* @HV_KVP_OP_REGISTER, align 4
  %94 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %95 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %100 = call i32 @write(i32 %98, %struct.hv_kvp_msg* %99, i32 16)
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %243, %153, %127, %82
  %102 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %103 = load i32, i32* @INFTIM, align 4
  %104 = call i32 @poll(%struct.pollfd* %102, i32 1, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* @LOG_DEBUG, align 4
  %106 = load i32, i32* %14, align 4
  %107 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %8, i64 0, i64 0
  %108 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @EAGAIN, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i64, i64* @errno, align 8
  %125 = load i64, i64* @EINTR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %116, %101
  br label %101

128:                                              ; preds = %123, %120
  %129 = load i32, i32* %14, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* @LOG_ERR, align 4
  %133 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %134 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %135 = load i32, i32* @EIO, align 4
  %136 = call i32 @exit(i32 %135) #3
  unreachable

137:                                              ; preds = %128
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %140 = call i32 @pread(i32 %138, %struct.hv_kvp_msg* %139, i32 16, i32 0)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* @LOG_ERR, align 4
  %145 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %146 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  %148 = call i32 @exit(i32 %147) #3
  unreachable

149:                                              ; preds = %137
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ne i64 %151, 16
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* @LOG_ERR, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %155)
  br label %101

157:                                              ; preds = %149
  %158 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %159 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  %160 = call i32 @memcpy(%struct.hv_kvp_msg* %158, %struct.hv_kvp_msg* %159, i32 16)
  %161 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %162 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %9, align 4
  %166 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %167 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %157
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @HV_KVP_OP_COUNT, align 4
  %176 = icmp sge i32 %174, %175
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvp_op_hdlrs, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32 (%struct.hv_kvp_msg*, i8*)*, i32 (%struct.hv_kvp_msg*, i8*)** %182, align 8
  %184 = icmp eq i32 (%struct.hv_kvp_msg*, i8*)* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %177, %173, %157
  %186 = load i32, i32* @LOG_WARNING, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i32 %187)
  %189 = load i64, i64* @HV_ERROR_NOT_SUPPORTED, align 8
  %190 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %191 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  store i64 %189, i64* %192, align 8
  br label %231

193:                                              ; preds = %177
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvp_op_hdlrs, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32 (%struct.hv_kvp_msg*, i8*)*, i32 (%struct.hv_kvp_msg*, i8*)** %198, align 8
  %200 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kvp_op_hdlrs, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = bitcast %struct.TYPE_6__* %204 to i8*
  %206 = call i32 %199(%struct.hv_kvp_msg* %200, i8* %205)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %230

209:                                              ; preds = %193
  %210 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %211 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @HV_S_OK, align 8
  %215 = icmp ne i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %219 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @HV_S_CONT, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %209
  %225 = load i32, i32* @LOG_WARNING, align 4
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* %12, align 4
  %228 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %225, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %224, %209
  br label %230

230:                                              ; preds = %229, %193
  br label %231

231:                                              ; preds = %230, %185
  br label %232

232:                                              ; preds = %239, %231
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %7, align 8
  %235 = call i32 @pwrite(i32 %233, %struct.hv_kvp_msg* %234, i32 16, i32 0)
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = icmp ne i64 %237, 16
  br i1 %238, label %239, label %243

239:                                              ; preds = %232
  %240 = load i32, i32* @LOG_ERR, align 4
  %241 = load i32, i32* %13, align 4
  %242 = call i32 (i32, i8*, ...) @KVP_LOG(i32 %240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %241)
  br label %232

243:                                              ; preds = %232
  br label %101
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @daemon(i32, i32) #1

declare dso_local i32 @KVP_LOG(i32, i8*, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local %struct.hv_kvp_msg* @malloc(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @kvp_ops_init(...) #1

declare dso_local i64 @kvp_file_init(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @memset(%struct.hv_kvp_msg*, i32, i32) #1

declare dso_local i32 @write(i32, %struct.hv_kvp_msg*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pread(i32, %struct.hv_kvp_msg*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.hv_kvp_msg*, %struct.hv_kvp_msg*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pwrite(i32, %struct.hv_kvp_msg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
