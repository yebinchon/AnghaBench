; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_uc_pingpong.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_uc_pingpong.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8 }
%struct.ibv_device = type { i32 }
%struct.pingpong_context = type { i32, i32, %struct.ibv_cq*, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.ibv_cq = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.pingpong_dest = type { i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.ibv_wc = type { i64, i64 }

@IBV_MTU_1024 = common dso_local global i32 0, align 4
@main.long_options = internal global [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i8 112 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 1, i8 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1, i8 115 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 1, i8 109 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 1, i8 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 1, i8 110 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 1, i8 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 0, i8 101 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 1, i8 103 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ib-dev\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ib-port\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"rx-depth\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"iters\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"gid-idx\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"p:d:i:s:m:r:n:l:eg:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Failed to get IB devices list\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"No IB devices found\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"IB device %s not found\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Couldn't post receive (%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Couldn't request CQ notification\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Couldn't get port info\0A\00", align 1
@IBV_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [24 x i8] c"Couldn't get local LID\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"can't read sgid of index %d\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [62 x i8] c"  local address:  LID 0x%04x, QPN 0x%06x, PSN 0x%06x, GID %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"  remote address: LID 0x%04x, QPN 0x%06x, PSN 0x%06x, GID %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Couldn't post send\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gettimeofday\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"Failed to get cq_event\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"CQ event for unknown CQ %p\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"poll CQ failed %d\0A\00", align 1
@IBV_WC_SUCCESS = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [36 x i8] c"Failed status %s (%d) for wr_id %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Completion for unknown wr_id %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"%lld bytes in %.2f seconds = %.2f Mbit/sec\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"%d iters in %.2f seconds = %.2f usec/iter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ibv_device**, align 8
  %7 = alloca %struct.ibv_device*, align 8
  %8 = alloca %struct.pingpong_context*, align 8
  %9 = alloca %struct.pingpong_dest, align 4
  %10 = alloca %struct.pingpong_dest*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [33 x i8], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.ibv_cq*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca [2 x %struct.ibv_wc], align 16
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca float, align 4
  %37 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 18515, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 4096, i32* %17, align 4
  %38 = load i32, i32* @IBV_MTU_1024, align 4
  store i32 %38, i32* %18, align 4
  store i32 500, i32* %19, align 4
  store i32 1000, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  %39 = call i32 (...) @getpid()
  %40 = call i32 @time(i32* null)
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @srand48(i32 %41)
  br label %43

43:                                               ; preds = %2, %112
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = call i32 @getopt_long(i32 %44, i8** %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %46, i32* %29, align 4
  %47 = load i32, i32* %29, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %113

50:                                               ; preds = %43
  %51 = load i32, i32* %29, align 4
  switch i32 %51, label %107 [
    i32 112, label %52
    i32 100, label %63
    i32 105, label %66
    i32 115, label %77
    i32 109, label %80
    i32 114, label %92
    i32 110, label %95
    i32 108, label %98
    i32 101, label %101
    i32 103, label %104
  ]

52:                                               ; preds = %50
  %53 = load i8*, i8** @optarg, align 8
  %54 = call i32 @strtoul(i8* %53, i32* null, i32 0)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ugt i32 %55, 65535
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @usage(i8* %60)
  store i32 1, i32* %3, align 4
  br label %622

62:                                               ; preds = %52
  br label %112

63:                                               ; preds = %50
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i8* @strdupa(i8* %64)
  store i8* %65, i8** %13, align 8
  br label %112

66:                                               ; preds = %50
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @strtol(i8* %67, i32* null, i32 0)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @usage(i8* %74)
  store i32 1, i32* %3, align 4
  br label %622

76:                                               ; preds = %66
  br label %112

77:                                               ; preds = %50
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i32 @strtoul(i8* %78, i32* null, i32 0)
  store i32 %79, i32* %17, align 4
  br label %112

80:                                               ; preds = %50
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i32 @strtol(i8* %81, i32* null, i32 0)
  %83 = call i32 @pp_mtu_to_enum(i32 %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @usage(i8* %89)
  store i32 1, i32* %3, align 4
  br label %622

91:                                               ; preds = %80
  br label %112

92:                                               ; preds = %50
  %93 = load i8*, i8** @optarg, align 8
  %94 = call i32 @strtoul(i8* %93, i32* null, i32 0)
  store i32 %94, i32* %19, align 4
  br label %112

95:                                               ; preds = %50
  %96 = load i8*, i8** @optarg, align 8
  %97 = call i32 @strtoul(i8* %96, i32* null, i32 0)
  store i32 %97, i32* %20, align 4
  br label %112

98:                                               ; preds = %50
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 @strtol(i8* %99, i32* null, i32 0)
  store i32 %100, i32* %26, align 4
  br label %112

101:                                              ; preds = %50
  %102 = load i32, i32* %21, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %21, align 4
  br label %112

104:                                              ; preds = %50
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i32 @strtol(i8* %105, i32* null, i32 0)
  store i32 %106, i32* %27, align 4
  br label %112

107:                                              ; preds = %50
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @usage(i8* %110)
  store i32 1, i32* %3, align 4
  br label %622

112:                                              ; preds = %104, %101, %98, %95, %92, %91, %77, %76, %63, %62
  br label %43

113:                                              ; preds = %49
  %114 = load i32, i32* @optind, align 4
  %115 = load i32, i32* %4, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i8**, i8*** %5, align 8
  %120 = load i32, i32* @optind, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strdupa(i8* %123)
  store i8* %124, i8** %14, align 8
  br label %135

125:                                              ; preds = %113
  %126 = load i32, i32* @optind, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @usage(i8* %132)
  store i32 1, i32* %3, align 4
  br label %622

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %118
  %136 = load i32, i32* @_SC_PAGESIZE, align 4
  %137 = call i32 @sysconf(i32 %136)
  store i32 %137, i32* @page_size, align 4
  %138 = call %struct.ibv_device** @ibv_get_device_list(i32* null)
  store %struct.ibv_device** %138, %struct.ibv_device*** %6, align 8
  %139 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %140 = icmp ne %struct.ibv_device** %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %135
  %142 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

143:                                              ; preds = %135
  %144 = load i8*, i8** %13, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %155, label %146

146:                                              ; preds = %143
  %147 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %148 = load %struct.ibv_device*, %struct.ibv_device** %147, align 8
  store %struct.ibv_device* %148, %struct.ibv_device** %7, align 8
  %149 = load %struct.ibv_device*, %struct.ibv_device** %7, align 8
  %150 = icmp ne %struct.ibv_device* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @stderr, align 4
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

154:                                              ; preds = %146
  br label %191

155:                                              ; preds = %143
  store i32 0, i32* %30, align 4
  br label %156

156:                                              ; preds = %175, %155
  %157 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %158 = load i32, i32* %30, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %157, i64 %159
  %161 = load %struct.ibv_device*, %struct.ibv_device** %160, align 8
  %162 = icmp ne %struct.ibv_device* %161, null
  br i1 %162, label %163, label %178

163:                                              ; preds = %156
  %164 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %165 = load i32, i32* %30, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %164, i64 %166
  %168 = load %struct.ibv_device*, %struct.ibv_device** %167, align 8
  %169 = call i32 @ibv_get_device_name(%struct.ibv_device* %168)
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 @strcmp(i32 %169, i8* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %163
  br label %178

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %30, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %30, align 4
  br label %156

178:                                              ; preds = %173, %156
  %179 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %180 = load i32, i32* %30, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %179, i64 %181
  %183 = load %struct.ibv_device*, %struct.ibv_device** %182, align 8
  store %struct.ibv_device* %183, %struct.ibv_device** %7, align 8
  %184 = load %struct.ibv_device*, %struct.ibv_device** %7, align 8
  %185 = icmp ne %struct.ibv_device* %184, null
  br i1 %185, label %190, label %186

186:                                              ; preds = %178
  %187 = load i32, i32* @stderr, align 4
  %188 = load i8*, i8** %13, align 8
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %188)
  store i32 1, i32* %3, align 4
  br label %622

190:                                              ; preds = %178
  br label %191

191:                                              ; preds = %190, %154
  %192 = load %struct.ibv_device*, %struct.ibv_device** %7, align 8
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %21, align 4
  %197 = call %struct.pingpong_context* @pp_init_ctx(%struct.ibv_device* %192, i32 %193, i32 %194, i32 %195, i32 %196)
  store %struct.pingpong_context* %197, %struct.pingpong_context** %8, align 8
  %198 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %199 = icmp ne %struct.pingpong_context* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %191
  store i32 1, i32* %3, align 4
  br label %622

201:                                              ; preds = %191
  %202 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %203 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %204 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @pp_post_recv(%struct.pingpong_context* %202, i32 %205)
  store i32 %206, i32* %22, align 4
  %207 = load i32, i32* %22, align 4
  %208 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %209 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %201
  %213 = load i32, i32* @stderr, align 4
  %214 = load i32, i32* %22, align 4
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %213, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %214)
  store i32 1, i32* %3, align 4
  br label %622

216:                                              ; preds = %201
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %216
  %220 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %221 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %220, i32 0, i32 2
  %222 = load %struct.ibv_cq*, %struct.ibv_cq** %221, align 8
  %223 = call i64 @ibv_req_notify_cq(%struct.ibv_cq* %222, i32 0)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load i32, i32* @stderr, align 4
  %227 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

228:                                              ; preds = %219
  br label %229

229:                                              ; preds = %228, %216
  %230 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %231 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %16, align 4
  %234 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %235 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %234, i32 0, i32 6
  %236 = call i64 @pp_get_port_info(i32 %232, i32 %233, %struct.TYPE_4__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %229
  %239 = load i32, i32* @stderr, align 4
  %240 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

241:                                              ; preds = %229
  %242 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %243 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 0
  store i32 %245, i32* %246, align 4
  %247 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %248 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @IBV_LINK_LAYER_ETHERNET, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %241
  %254 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* @stderr, align 4
  %259 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

260:                                              ; preds = %253, %241
  %261 = load i32, i32* %27, align 4
  %262 = icmp sge i32 %261, 0
  br i1 %262, label %263, label %277

263:                                              ; preds = %260
  %264 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %265 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %27, align 4
  %269 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 3
  %270 = call i64 @ibv_query_gid(i32 %266, i32 %267, i32 %268, i32* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %263
  %273 = load i32, i32* @stderr, align 4
  %274 = load i32, i32* %27, align 4
  %275 = call i32 (i32, i8*, ...) @fprintf(i32 %273, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %274)
  store i32 1, i32* %3, align 4
  br label %622

276:                                              ; preds = %263
  br label %280

277:                                              ; preds = %260
  %278 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 3
  %279 = call i32 @memset(i32* %278, i32 0, i32 4)
  br label %280

280:                                              ; preds = %277, %276
  %281 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %282 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %281, i32 0, i32 4
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 1
  store i32 %285, i32* %286, align 4
  %287 = call i32 (...) @lrand48()
  %288 = and i32 %287, 16777215
  %289 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 2
  store i32 %288, i32* %289, align 4
  %290 = load i32, i32* @AF_INET6, align 4
  %291 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 3
  %292 = getelementptr inbounds [33 x i8], [33 x i8]* %28, i64 0, i64 0
  %293 = call i32 @inet_ntop(i32 %290, i32* %291, i8* %292, i32 33)
  %294 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sitofp i32 %297 to float
  %299 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = sitofp i32 %300 to float
  %302 = getelementptr inbounds [33 x i8], [33 x i8]* %28, i64 0, i64 0
  %303 = call i32 (i8*, i32, float, float, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i64 0, i64 0), i32 %295, float %298, float %301, i8* %302)
  %304 = load i8*, i8** %14, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %280
  %307 = load i8*, i8** %14, align 8
  %308 = load i32, i32* %15, align 4
  %309 = call %struct.pingpong_dest* @pp_client_exch_dest(i8* %307, i32 %308, %struct.pingpong_dest* %9)
  store %struct.pingpong_dest* %309, %struct.pingpong_dest** %10, align 8
  br label %318

310:                                              ; preds = %280
  %311 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* %18, align 4
  %314 = load i32, i32* %15, align 4
  %315 = load i32, i32* %26, align 4
  %316 = load i32, i32* %27, align 4
  %317 = call %struct.pingpong_dest* @pp_server_exch_dest(%struct.pingpong_context* %311, i32 %312, i32 %313, i32 %314, i32 %315, %struct.pingpong_dest* %9, i32 %316)
  store %struct.pingpong_dest* %317, %struct.pingpong_dest** %10, align 8
  br label %318

318:                                              ; preds = %310, %306
  %319 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %320 = icmp ne %struct.pingpong_dest* %319, null
  br i1 %320, label %322, label %321

321:                                              ; preds = %318
  store i32 1, i32* %3, align 4
  br label %622

322:                                              ; preds = %318
  %323 = load i32, i32* @AF_INET6, align 4
  %324 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %325 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %324, i32 0, i32 3
  %326 = getelementptr inbounds [33 x i8], [33 x i8]* %28, i64 0, i64 0
  %327 = call i32 @inet_ntop(i32 %323, i32* %325, i8* %326, i32 33)
  %328 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %329 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %332 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sitofp i32 %333 to float
  %335 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %336 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = sitofp i32 %337 to float
  %339 = getelementptr inbounds [33 x i8], [33 x i8]* %28, i64 0, i64 0
  %340 = call i32 (i8*, i32, float, float, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0), i32 %330, float %334, float %338, i8* %339)
  %341 = load i8*, i8** %14, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %356

343:                                              ; preds = %322
  %344 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %345 = load i32, i32* %16, align 4
  %346 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %18, align 4
  %349 = load i32, i32* %26, align 4
  %350 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %351 = load i32, i32* %27, align 4
  %352 = call i64 @pp_connect_ctx(%struct.pingpong_context* %344, i32 %345, i32 %347, i32 %348, i32 %349, %struct.pingpong_dest* %350, i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %343
  store i32 1, i32* %3, align 4
  br label %622

355:                                              ; preds = %343
  br label %356

356:                                              ; preds = %355, %322
  %357 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %358 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %357, i32 0, i32 1
  store i32 129, i32* %358, align 4
  %359 = load i8*, i8** %14, align 8
  %360 = icmp ne i8* %359, null
  br i1 %360, label %361, label %373

361:                                              ; preds = %356
  %362 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %363 = call i64 @pp_post_send(%struct.pingpong_context* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %361
  %366 = load i32, i32* @stderr, align 4
  %367 = call i32 (i32, i8*, ...) @fprintf(i32 %366, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

368:                                              ; preds = %361
  %369 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %370 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = or i32 %371, 128
  store i32 %372, i32* %370, align 4
  br label %373

373:                                              ; preds = %368, %356
  %374 = call i64 @gettimeofday(%struct.timeval* %11, i32* null)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

378:                                              ; preds = %373
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  br label %379

379:                                              ; preds = %558, %378
  %380 = load i32, i32* %23, align 4
  %381 = load i32, i32* %20, align 4
  %382 = icmp ult i32 %380, %381
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %20, align 4
  %386 = icmp ult i32 %384, %385
  br label %387

387:                                              ; preds = %383, %379
  %388 = phi i1 [ true, %379 ], [ %386, %383 ]
  br i1 %388, label %389, label %559

389:                                              ; preds = %387
  %390 = load i32, i32* %21, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %423

392:                                              ; preds = %389
  %393 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %394 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 8
  %396 = call i64 @ibv_get_cq_event(i32 %395, %struct.ibv_cq** %31, i8** %32)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %392
  %399 = load i32, i32* @stderr, align 4
  %400 = call i32 (i32, i8*, ...) @fprintf(i32 %399, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

401:                                              ; preds = %392
  %402 = load i32, i32* %25, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %25, align 4
  %404 = load %struct.ibv_cq*, %struct.ibv_cq** %31, align 8
  %405 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %406 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %405, i32 0, i32 2
  %407 = load %struct.ibv_cq*, %struct.ibv_cq** %406, align 8
  %408 = icmp ne %struct.ibv_cq* %404, %407
  br i1 %408, label %409, label %413

409:                                              ; preds = %401
  %410 = load i32, i32* @stderr, align 4
  %411 = load %struct.ibv_cq*, %struct.ibv_cq** %31, align 8
  %412 = call i32 (i32, i8*, ...) @fprintf(i32 %410, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), %struct.ibv_cq* %411)
  store i32 1, i32* %3, align 4
  br label %622

413:                                              ; preds = %401
  %414 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %415 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %414, i32 0, i32 2
  %416 = load %struct.ibv_cq*, %struct.ibv_cq** %415, align 8
  %417 = call i64 @ibv_req_notify_cq(%struct.ibv_cq* %416, i32 0)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %413
  %420 = load i32, i32* @stderr, align 4
  %421 = call i32 (i32, i8*, ...) @fprintf(i32 %420, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

422:                                              ; preds = %413
  br label %423

423:                                              ; preds = %422, %389
  br label %424

424:                                              ; preds = %443, %423
  %425 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %426 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %425, i32 0, i32 2
  %427 = load %struct.ibv_cq*, %struct.ibv_cq** %426, align 8
  %428 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %33, i64 0, i64 0
  %429 = call i32 @ibv_poll_cq(%struct.ibv_cq* %427, i32 2, %struct.ibv_wc* %428)
  store i32 %429, i32* %34, align 4
  %430 = load i32, i32* %34, align 4
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %424
  %433 = load i32, i32* @stderr, align 4
  %434 = load i32, i32* %34, align 4
  %435 = call i32 (i32, i8*, ...) @fprintf(i32 %433, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %434)
  store i32 1, i32* %3, align 4
  br label %622

436:                                              ; preds = %424
  br label %437

437:                                              ; preds = %436
  %438 = load i32, i32* %21, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %443, label %440

440:                                              ; preds = %437
  %441 = load i32, i32* %34, align 4
  %442 = icmp slt i32 %441, 1
  br label %443

443:                                              ; preds = %440, %437
  %444 = phi i1 [ false, %437 ], [ %442, %440 ]
  br i1 %444, label %424, label %445

445:                                              ; preds = %443
  store i32 0, i32* %35, align 4
  br label %446

446:                                              ; preds = %555, %445
  %447 = load i32, i32* %35, align 4
  %448 = load i32, i32* %34, align 4
  %449 = icmp slt i32 %447, %448
  br i1 %449, label %450, label %558

450:                                              ; preds = %446
  %451 = load i32, i32* %35, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %33, i64 0, i64 %452
  %454 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 16
  %456 = load i64, i64* @IBV_WC_SUCCESS, align 8
  %457 = icmp ne i64 %455, %456
  br i1 %457, label %458, label %478

458:                                              ; preds = %450
  %459 = load i32, i32* @stderr, align 4
  %460 = load i32, i32* %35, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %33, i64 0, i64 %461
  %463 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 16
  %465 = call i8* @ibv_wc_status_str(i64 %464)
  %466 = load i32, i32* %35, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %33, i64 0, i64 %467
  %469 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 16
  %471 = load i32, i32* %35, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %33, i64 0, i64 %472
  %474 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = trunc i64 %475 to i32
  %477 = call i32 (i32, i8*, ...) @fprintf(i32 %459, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* %465, i64 %470, i32 %476)
  store i32 1, i32* %3, align 4
  br label %622

478:                                              ; preds = %450
  %479 = load i32, i32* %35, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %33, i64 0, i64 %480
  %482 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = trunc i64 %483 to i32
  switch i32 %484, label %515 [
    i32 128, label %485
    i32 129, label %488
  ]

485:                                              ; preds = %478
  %486 = load i32, i32* %24, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %24, align 4
  br label %524

488:                                              ; preds = %478
  %489 = load i32, i32* %22, align 4
  %490 = add nsw i32 %489, -1
  store i32 %490, i32* %22, align 4
  %491 = icmp sle i32 %490, 1
  br i1 %491, label %492, label %512

492:                                              ; preds = %488
  %493 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %494 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %495 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* %22, align 4
  %498 = sub nsw i32 %496, %497
  %499 = call i32 @pp_post_recv(%struct.pingpong_context* %493, i32 %498)
  %500 = load i32, i32* %22, align 4
  %501 = add nsw i32 %500, %499
  store i32 %501, i32* %22, align 4
  %502 = load i32, i32* %22, align 4
  %503 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %504 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = icmp slt i32 %502, %505
  br i1 %506, label %507, label %511

507:                                              ; preds = %492
  %508 = load i32, i32* @stderr, align 4
  %509 = load i32, i32* %22, align 4
  %510 = call i32 (i32, i8*, ...) @fprintf(i32 %508, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %509)
  store i32 1, i32* %3, align 4
  br label %622

511:                                              ; preds = %492
  br label %512

512:                                              ; preds = %511, %488
  %513 = load i32, i32* %23, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %23, align 4
  br label %524

515:                                              ; preds = %478
  %516 = load i32, i32* @stderr, align 4
  %517 = load i32, i32* %35, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %33, i64 0, i64 %518
  %520 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %519, i32 0, i32 1
  %521 = load i64, i64* %520, align 8
  %522 = trunc i64 %521 to i32
  %523 = call i32 (i32, i8*, ...) @fprintf(i32 %516, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i32 %522)
  store i32 1, i32* %3, align 4
  br label %622

524:                                              ; preds = %512, %485
  %525 = load i32, i32* %35, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %33, i64 0, i64 %526
  %528 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %527, i32 0, i32 1
  %529 = load i64, i64* %528, align 8
  %530 = trunc i64 %529 to i32
  %531 = xor i32 %530, -1
  %532 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %533 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = and i32 %534, %531
  store i32 %535, i32* %533, align 4
  %536 = load i32, i32* %24, align 4
  %537 = load i32, i32* %20, align 4
  %538 = icmp ult i32 %536, %537
  br i1 %538, label %539, label %554

539:                                              ; preds = %524
  %540 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %541 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %554, label %544

544:                                              ; preds = %539
  %545 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %546 = call i64 @pp_post_send(%struct.pingpong_context* %545)
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %551

548:                                              ; preds = %544
  %549 = load i32, i32* @stderr, align 4
  %550 = call i32 (i32, i8*, ...) @fprintf(i32 %549, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

551:                                              ; preds = %544
  %552 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %553 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %552, i32 0, i32 1
  store i32 129, i32* %553, align 4
  br label %554

554:                                              ; preds = %551, %539, %524
  br label %555

555:                                              ; preds = %554
  %556 = load i32, i32* %35, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %35, align 4
  br label %446

558:                                              ; preds = %446
  br label %379

559:                                              ; preds = %387
  %560 = call i64 @gettimeofday(%struct.timeval* %12, i32* null)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %559
  %563 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %622

564:                                              ; preds = %559
  %565 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = sub nsw i32 %566, %568
  %570 = mul nsw i32 %569, 1000000
  %571 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %572 = load i32, i32* %571, align 4
  %573 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %574 = load i32, i32* %573, align 4
  %575 = sub nsw i32 %572, %574
  %576 = add nsw i32 %570, %575
  %577 = sitofp i32 %576 to float
  store float %577, float* %36, align 4
  %578 = load i32, i32* %17, align 4
  %579 = zext i32 %578 to i64
  %580 = load i32, i32* %20, align 4
  %581 = zext i32 %580 to i64
  %582 = mul nsw i64 %579, %581
  %583 = mul nsw i64 %582, 2
  store i64 %583, i64* %37, align 8
  %584 = load i64, i64* %37, align 8
  %585 = trunc i64 %584 to i32
  %586 = load float, float* %36, align 4
  %587 = fpext float %586 to double
  %588 = fdiv double %587, 1.000000e+06
  %589 = fptrunc double %588 to float
  %590 = load i64, i64* %37, align 8
  %591 = sitofp i64 %590 to double
  %592 = fmul double %591, 8.000000e+00
  %593 = load float, float* %36, align 4
  %594 = fpext float %593 to double
  %595 = fdiv double %592, %594
  %596 = fptrunc double %595 to float
  %597 = call i32 (i8*, i32, float, float, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i64 0, i64 0), i32 %585, float %589, float %596)
  %598 = load i32, i32* %20, align 4
  %599 = load float, float* %36, align 4
  %600 = fpext float %599 to double
  %601 = fdiv double %600, 1.000000e+06
  %602 = fptrunc double %601 to float
  %603 = load float, float* %36, align 4
  %604 = load i32, i32* %20, align 4
  %605 = uitofp i32 %604 to float
  %606 = fdiv float %603, %605
  %607 = call i32 (i8*, i32, float, float, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.29, i64 0, i64 0), i32 %598, float %602, float %606)
  %608 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %609 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %608, i32 0, i32 2
  %610 = load %struct.ibv_cq*, %struct.ibv_cq** %609, align 8
  %611 = load i32, i32* %25, align 4
  %612 = call i32 @ibv_ack_cq_events(%struct.ibv_cq* %610, i32 %611)
  %613 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %614 = call i64 @pp_close_ctx(%struct.pingpong_context* %613)
  %615 = icmp ne i64 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %564
  store i32 1, i32* %3, align 4
  br label %622

617:                                              ; preds = %564
  %618 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %619 = call i32 @ibv_free_device_list(%struct.ibv_device** %618)
  %620 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %621 = call i32 @free(%struct.pingpong_dest* %620)
  store i32 0, i32* %3, align 4
  br label %622

622:                                              ; preds = %617, %616, %562, %548, %515, %507, %458, %432, %419, %409, %398, %376, %365, %354, %321, %272, %257, %238, %225, %212, %200, %186, %151, %141, %129, %107, %86, %71, %57
  %623 = load i32, i32* %3, align 4
  ret i32 %623
}

declare dso_local i32 @srand48(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @strdupa(i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @pp_mtu_to_enum(i32) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local %struct.ibv_device** @ibv_get_device_list(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @ibv_get_device_name(%struct.ibv_device*) #1

declare dso_local %struct.pingpong_context* @pp_init_ctx(%struct.ibv_device*, i32, i32, i32, i32) #1

declare dso_local i32 @pp_post_recv(%struct.pingpong_context*, i32) #1

declare dso_local i64 @ibv_req_notify_cq(%struct.ibv_cq*, i32) #1

declare dso_local i64 @pp_get_port_info(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @ibv_query_gid(i32, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, float, float, ...) #1

declare dso_local %struct.pingpong_dest* @pp_client_exch_dest(i8*, i32, %struct.pingpong_dest*) #1

declare dso_local %struct.pingpong_dest* @pp_server_exch_dest(%struct.pingpong_context*, i32, i32, i32, i32, %struct.pingpong_dest*, i32) #1

declare dso_local i64 @pp_connect_ctx(%struct.pingpong_context*, i32, i32, i32, i32, %struct.pingpong_dest*, i32) #1

declare dso_local i64 @pp_post_send(%struct.pingpong_context*) #1

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @ibv_get_cq_event(i32, %struct.ibv_cq**, i8**) #1

declare dso_local i32 @ibv_poll_cq(%struct.ibv_cq*, i32, %struct.ibv_wc*) #1

declare dso_local i8* @ibv_wc_status_str(i64) #1

declare dso_local i32 @ibv_ack_cq_events(%struct.ibv_cq*, i32) #1

declare dso_local i64 @pp_close_ctx(%struct.pingpong_context*) #1

declare dso_local i32 @ibv_free_device_list(%struct.ibv_device**) #1

declare dso_local i32 @free(%struct.pingpong_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
