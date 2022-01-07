; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_ud_pingpong.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_ud_pingpong.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8 }
%struct.ibv_device = type { i32 }
%struct.pingpong_context = type { i32, i32, %struct.ibv_cq*, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.ibv_cq = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pingpong_dest = type { i32, i32, i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.ibv_wc = type { i64, i64 }

@main.long_options = internal global [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i8 112 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 1, i8 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1, i8 115 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 1, i8 114 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 1, i8 110 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 1, i8 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 0, i8 101 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 1, i8 103 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ib-dev\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ib-port\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"rx-depth\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"iters\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"gid-idx\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"p:d:i:s:r:n:l:eg:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Failed to get IB devices list\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"No IB devices found\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"IB device %s not found\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Couldn't post receive (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Couldn't request CQ notification\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Couldn't get port info\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Could not get local gid for gid index %d\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [62 x i8] c"  local address:  LID 0x%04x, QPN 0x%06x, PSN 0x%06x: GID %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"  remote address: LID 0x%04x, QPN 0x%06x, PSN 0x%06x, GID %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Couldn't post send\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"gettimeofday\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Failed to get cq_event\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"CQ event for unknown CQ %p\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"poll CQ failed %d\0A\00", align 1
@IBV_WC_SUCCESS = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"Failed status %s (%d) for wr_id %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Completion for unknown wr_id %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"%lld bytes in %.2f seconds = %.2f Mbit/sec\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"%d iters in %.2f seconds = %.2f usec/iter\0A\00", align 1

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
  %27 = alloca [33 x i8], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ibv_cq*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca [2 x %struct.ibv_wc], align 16
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca float, align 4
  %36 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 18515, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 2048, i32* %17, align 4
  store i32 500, i32* %18, align 4
  store i32 1000, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 -1, i32* %26, align 4
  %37 = call i32 (...) @getpid()
  %38 = call i32 @time(i32* null)
  %39 = mul nsw i32 %37, %38
  %40 = call i32 @srand48(i32 %39)
  br label %41

41:                                               ; preds = %2, %102
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = call i32 @getopt_long(i32 %42, i8** %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %44, i32* %28, align 4
  %45 = load i32, i32* %28, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %103

48:                                               ; preds = %41
  %49 = load i32, i32* %28, align 4
  switch i32 %49, label %97 [
    i32 112, label %50
    i32 100, label %62
    i32 105, label %65
    i32 115, label %77
    i32 114, label %80
    i32 110, label %83
    i32 108, label %86
    i32 101, label %90
    i32 103, label %93
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i8* @strtol(i8* %51, i32* null, i32 0)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ugt i32 %54, 65535
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @usage(i8* %59)
  store i32 1, i32* %3, align 4
  br label %602

61:                                               ; preds = %50
  br label %102

62:                                               ; preds = %48
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i8* @strdupa(i8* %63)
  store i8* %64, i8** %13, align 8
  br label %102

65:                                               ; preds = %48
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i8* @strtol(i8* %66, i32* null, i32 0)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @usage(i8* %74)
  store i32 1, i32* %3, align 4
  br label %602

76:                                               ; preds = %65
  br label %102

77:                                               ; preds = %48
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i32 @strtoul(i8* %78, i32* null, i32 0)
  store i32 %79, i32* %17, align 4
  br label %102

80:                                               ; preds = %48
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i32 @strtoul(i8* %81, i32* null, i32 0)
  store i32 %82, i32* %18, align 4
  br label %102

83:                                               ; preds = %48
  %84 = load i8*, i8** @optarg, align 8
  %85 = call i32 @strtoul(i8* %84, i32* null, i32 0)
  store i32 %85, i32* %19, align 4
  br label %102

86:                                               ; preds = %48
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i8* @strtol(i8* %87, i32* null, i32 0)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %25, align 4
  br label %102

90:                                               ; preds = %48
  %91 = load i32, i32* %20, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %20, align 4
  br label %102

93:                                               ; preds = %48
  %94 = load i8*, i8** @optarg, align 8
  %95 = call i8* @strtol(i8* %94, i32* null, i32 0)
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %26, align 4
  br label %102

97:                                               ; preds = %48
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @usage(i8* %100)
  store i32 1, i32* %3, align 4
  br label %602

102:                                              ; preds = %93, %90, %86, %83, %80, %77, %76, %62, %61
  br label %41

103:                                              ; preds = %47
  %104 = load i32, i32* @optind, align 4
  %105 = load i32, i32* %4, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* @optind, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @strdupa(i8* %113)
  store i8* %114, i8** %14, align 8
  br label %125

115:                                              ; preds = %103
  %116 = load i32, i32* @optind, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @usage(i8* %122)
  store i32 1, i32* %3, align 4
  br label %602

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124, %108
  %126 = load i32, i32* @_SC_PAGESIZE, align 4
  %127 = call i32 @sysconf(i32 %126)
  store i32 %127, i32* @page_size, align 4
  %128 = call %struct.ibv_device** @ibv_get_device_list(i32* null)
  store %struct.ibv_device** %128, %struct.ibv_device*** %6, align 8
  %129 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %130 = icmp ne %struct.ibv_device** %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %125
  %132 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

133:                                              ; preds = %125
  %134 = load i8*, i8** %13, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %145, label %136

136:                                              ; preds = %133
  %137 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %138 = load %struct.ibv_device*, %struct.ibv_device** %137, align 8
  store %struct.ibv_device* %138, %struct.ibv_device** %7, align 8
  %139 = load %struct.ibv_device*, %struct.ibv_device** %7, align 8
  %140 = icmp ne %struct.ibv_device* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

144:                                              ; preds = %136
  br label %181

145:                                              ; preds = %133
  store i32 0, i32* %29, align 4
  br label %146

146:                                              ; preds = %165, %145
  %147 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %148 = load i32, i32* %29, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %147, i64 %149
  %151 = load %struct.ibv_device*, %struct.ibv_device** %150, align 8
  %152 = icmp ne %struct.ibv_device* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %146
  %154 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %155 = load i32, i32* %29, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %154, i64 %156
  %158 = load %struct.ibv_device*, %struct.ibv_device** %157, align 8
  %159 = call i32 @ibv_get_device_name(%struct.ibv_device* %158)
  %160 = load i8*, i8** %13, align 8
  %161 = call i32 @strcmp(i32 %159, i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %153
  br label %168

164:                                              ; preds = %153
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %29, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %29, align 4
  br label %146

168:                                              ; preds = %163, %146
  %169 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %170 = load i32, i32* %29, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.ibv_device*, %struct.ibv_device** %169, i64 %171
  %173 = load %struct.ibv_device*, %struct.ibv_device** %172, align 8
  store %struct.ibv_device* %173, %struct.ibv_device** %7, align 8
  %174 = load %struct.ibv_device*, %struct.ibv_device** %7, align 8
  %175 = icmp ne %struct.ibv_device* %174, null
  br i1 %175, label %180, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* @stderr, align 4
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %178)
  store i32 1, i32* %3, align 4
  br label %602

180:                                              ; preds = %168
  br label %181

181:                                              ; preds = %180, %144
  %182 = load %struct.ibv_device*, %struct.ibv_device** %7, align 8
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* %20, align 4
  %187 = call %struct.pingpong_context* @pp_init_ctx(%struct.ibv_device* %182, i32 %183, i32 %184, i32 %185, i32 %186)
  store %struct.pingpong_context* %187, %struct.pingpong_context** %8, align 8
  %188 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %189 = icmp ne %struct.pingpong_context* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %181
  store i32 1, i32* %3, align 4
  br label %602

191:                                              ; preds = %181
  %192 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %193 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %194 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @pp_post_recv(%struct.pingpong_context* %192, i32 %195)
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %199 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %191
  %203 = load i32, i32* @stderr, align 4
  %204 = load i32, i32* %21, align 4
  %205 = call i32 (i32, i8*, ...) @fprintf(i32 %203, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %204)
  store i32 1, i32* %3, align 4
  br label %602

206:                                              ; preds = %191
  %207 = load i32, i32* %20, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %211 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %210, i32 0, i32 2
  %212 = load %struct.ibv_cq*, %struct.ibv_cq** %211, align 8
  %213 = call i64 @ibv_req_notify_cq(%struct.ibv_cq* %212, i32 0)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i32, i32* @stderr, align 4
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %216, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218, %206
  %220 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %221 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %16, align 4
  %224 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %225 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %224, i32 0, i32 6
  %226 = call i64 @pp_get_port_info(i32 %222, i32 %223, %struct.TYPE_4__* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %219
  %229 = load i32, i32* @stderr, align 4
  %230 = call i32 (i32, i8*, ...) @fprintf(i32 %229, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

231:                                              ; preds = %219
  %232 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %233 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 0
  store i32 %235, i32* %236, align 4
  %237 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %238 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %237, i32 0, i32 5
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 1
  store i32 %241, i32* %242, align 4
  %243 = call i32 (...) @lrand48()
  %244 = and i32 %243, 16777215
  %245 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 2
  store i32 %244, i32* %245, align 4
  %246 = load i32, i32* %26, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %231
  %249 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %250 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* %26, align 4
  %254 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 3
  %255 = call i64 @ibv_query_gid(i32 %251, i32 %252, i32 %253, i32* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %248
  %258 = load i32, i32* @stderr, align 4
  %259 = load i32, i32* %26, align 4
  %260 = call i32 (i32, i8*, ...) @fprintf(i32 %258, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i32 %259)
  store i32 1, i32* %3, align 4
  br label %602

261:                                              ; preds = %248
  br label %265

262:                                              ; preds = %231
  %263 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 3
  %264 = call i32 @memset(i32* %263, i32 0, i32 4)
  br label %265

265:                                              ; preds = %262, %261
  %266 = load i32, i32* @AF_INET6, align 4
  %267 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 3
  %268 = getelementptr inbounds [33 x i8], [33 x i8]* %27, i64 0, i64 0
  %269 = call i32 @inet_ntop(i32 %266, i32* %267, i8* %268, i32 33)
  %270 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sitofp i32 %273 to float
  %275 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = sitofp i32 %276 to float
  %278 = getelementptr inbounds [33 x i8], [33 x i8]* %27, i64 0, i64 0
  %279 = call i32 (i8*, i32, float, float, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0), i32 %271, float %274, float %277, i8* %278)
  %280 = load i8*, i8** %14, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %282, label %286

282:                                              ; preds = %265
  %283 = load i8*, i8** %14, align 8
  %284 = load i32, i32* %15, align 4
  %285 = call %struct.pingpong_dest* @pp_client_exch_dest(i8* %283, i32 %284, %struct.pingpong_dest* %9)
  store %struct.pingpong_dest* %285, %struct.pingpong_dest** %10, align 8
  br label %293

286:                                              ; preds = %265
  %287 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %288 = load i32, i32* %16, align 4
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* %25, align 4
  %291 = load i32, i32* %26, align 4
  %292 = call %struct.pingpong_dest* @pp_server_exch_dest(%struct.pingpong_context* %287, i32 %288, i32 %289, i32 %290, %struct.pingpong_dest* %9, i32 %291)
  store %struct.pingpong_dest* %292, %struct.pingpong_dest** %10, align 8
  br label %293

293:                                              ; preds = %286, %282
  %294 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %295 = icmp ne %struct.pingpong_dest* %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  store i32 1, i32* %3, align 4
  br label %602

297:                                              ; preds = %293
  %298 = load i32, i32* @AF_INET6, align 4
  %299 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %300 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %299, i32 0, i32 3
  %301 = getelementptr inbounds [33 x i8], [33 x i8]* %27, i64 0, i64 0
  %302 = call i32 @inet_ntop(i32 %298, i32* %300, i8* %301, i32 33)
  %303 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %304 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %307 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = sitofp i32 %308 to float
  %310 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %311 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = sitofp i32 %312 to float
  %314 = getelementptr inbounds [33 x i8], [33 x i8]* %27, i64 0, i64 0
  %315 = call i32 (i8*, i32, float, float, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0), i32 %305, float %309, float %313, i8* %314)
  %316 = load i8*, i8** %14, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %330

318:                                              ; preds = %297
  %319 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %320 = load i32, i32* %16, align 4
  %321 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %9, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %25, align 4
  %324 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %325 = load i32, i32* %26, align 4
  %326 = call i64 @pp_connect_ctx(%struct.pingpong_context* %319, i32 %320, i32 %322, i32 %323, %struct.pingpong_dest* %324, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %329

328:                                              ; preds = %318
  store i32 1, i32* %3, align 4
  br label %602

329:                                              ; preds = %318
  br label %330

330:                                              ; preds = %329, %297
  %331 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %332 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %331, i32 0, i32 1
  store i32 129, i32* %332, align 4
  %333 = load i8*, i8** %14, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %335, label %350

335:                                              ; preds = %330
  %336 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %337 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %338 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = call i64 @pp_post_send(%struct.pingpong_context* %336, i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %335
  %343 = load i32, i32* @stderr, align 4
  %344 = call i32 (i32, i8*, ...) @fprintf(i32 %343, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

345:                                              ; preds = %335
  %346 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %347 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %348, 128
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %345, %330
  %351 = call i64 @gettimeofday(%struct.timeval* %11, i32* null)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

355:                                              ; preds = %350
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %356

356:                                              ; preds = %538, %355
  %357 = load i32, i32* %22, align 4
  %358 = load i32, i32* %19, align 4
  %359 = icmp ult i32 %357, %358
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = load i32, i32* %23, align 4
  %362 = load i32, i32* %19, align 4
  %363 = icmp ult i32 %361, %362
  br label %364

364:                                              ; preds = %360, %356
  %365 = phi i1 [ true, %356 ], [ %363, %360 ]
  br i1 %365, label %366, label %539

366:                                              ; preds = %364
  %367 = load i32, i32* %20, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %400

369:                                              ; preds = %366
  %370 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %371 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = call i64 @ibv_get_cq_event(i32 %372, %struct.ibv_cq** %30, i8** %31)
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %369
  %376 = load i32, i32* @stderr, align 4
  %377 = call i32 (i32, i8*, ...) @fprintf(i32 %376, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

378:                                              ; preds = %369
  %379 = load i32, i32* %24, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %24, align 4
  %381 = load %struct.ibv_cq*, %struct.ibv_cq** %30, align 8
  %382 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %383 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %382, i32 0, i32 2
  %384 = load %struct.ibv_cq*, %struct.ibv_cq** %383, align 8
  %385 = icmp ne %struct.ibv_cq* %381, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %378
  %387 = load i32, i32* @stderr, align 4
  %388 = load %struct.ibv_cq*, %struct.ibv_cq** %30, align 8
  %389 = call i32 (i32, i8*, ...) @fprintf(i32 %387, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), %struct.ibv_cq* %388)
  store i32 1, i32* %3, align 4
  br label %602

390:                                              ; preds = %378
  %391 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %392 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %391, i32 0, i32 2
  %393 = load %struct.ibv_cq*, %struct.ibv_cq** %392, align 8
  %394 = call i64 @ibv_req_notify_cq(%struct.ibv_cq* %393, i32 0)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  %397 = load i32, i32* @stderr, align 4
  %398 = call i32 (i32, i8*, ...) @fprintf(i32 %397, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

399:                                              ; preds = %390
  br label %400

400:                                              ; preds = %399, %366
  br label %401

401:                                              ; preds = %420, %400
  %402 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %403 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %402, i32 0, i32 2
  %404 = load %struct.ibv_cq*, %struct.ibv_cq** %403, align 8
  %405 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %32, i64 0, i64 0
  %406 = call i32 @ibv_poll_cq(%struct.ibv_cq* %404, i32 2, %struct.ibv_wc* %405)
  store i32 %406, i32* %33, align 4
  %407 = load i32, i32* %33, align 4
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %401
  %410 = load i32, i32* @stderr, align 4
  %411 = load i32, i32* %33, align 4
  %412 = call i32 (i32, i8*, ...) @fprintf(i32 %410, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %411)
  store i32 1, i32* %3, align 4
  br label %602

413:                                              ; preds = %401
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %20, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %414
  %418 = load i32, i32* %33, align 4
  %419 = icmp slt i32 %418, 1
  br label %420

420:                                              ; preds = %417, %414
  %421 = phi i1 [ false, %414 ], [ %419, %417 ]
  br i1 %421, label %401, label %422

422:                                              ; preds = %420
  store i32 0, i32* %34, align 4
  br label %423

423:                                              ; preds = %535, %422
  %424 = load i32, i32* %34, align 4
  %425 = load i32, i32* %33, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %538

427:                                              ; preds = %423
  %428 = load i32, i32* %34, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %32, i64 0, i64 %429
  %431 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 16
  %433 = load i64, i64* @IBV_WC_SUCCESS, align 8
  %434 = icmp ne i64 %432, %433
  br i1 %434, label %435, label %455

435:                                              ; preds = %427
  %436 = load i32, i32* @stderr, align 4
  %437 = load i32, i32* %34, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %32, i64 0, i64 %438
  %440 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 16
  %442 = call i8* @ibv_wc_status_str(i64 %441)
  %443 = load i32, i32* %34, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %32, i64 0, i64 %444
  %446 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 16
  %448 = load i32, i32* %34, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %32, i64 0, i64 %449
  %451 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = trunc i64 %452 to i32
  %454 = call i32 (i32, i8*, ...) @fprintf(i32 %436, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* %442, i64 %447, i32 %453)
  store i32 1, i32* %3, align 4
  br label %602

455:                                              ; preds = %427
  %456 = load i32, i32* %34, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %32, i64 0, i64 %457
  %459 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = trunc i64 %460 to i32
  switch i32 %461, label %492 [
    i32 128, label %462
    i32 129, label %465
  ]

462:                                              ; preds = %455
  %463 = load i32, i32* %23, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %23, align 4
  br label %501

465:                                              ; preds = %455
  %466 = load i32, i32* %21, align 4
  %467 = add nsw i32 %466, -1
  store i32 %467, i32* %21, align 4
  %468 = icmp sle i32 %467, 1
  br i1 %468, label %469, label %489

469:                                              ; preds = %465
  %470 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %471 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %472 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %471, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = load i32, i32* %21, align 4
  %475 = sub nsw i32 %473, %474
  %476 = call i32 @pp_post_recv(%struct.pingpong_context* %470, i32 %475)
  %477 = load i32, i32* %21, align 4
  %478 = add nsw i32 %477, %476
  store i32 %478, i32* %21, align 4
  %479 = load i32, i32* %21, align 4
  %480 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %481 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = icmp slt i32 %479, %482
  br i1 %483, label %484, label %488

484:                                              ; preds = %469
  %485 = load i32, i32* @stderr, align 4
  %486 = load i32, i32* %21, align 4
  %487 = call i32 (i32, i8*, ...) @fprintf(i32 %485, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %486)
  store i32 1, i32* %3, align 4
  br label %602

488:                                              ; preds = %469
  br label %489

489:                                              ; preds = %488, %465
  %490 = load i32, i32* %22, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %22, align 4
  br label %501

492:                                              ; preds = %455
  %493 = load i32, i32* @stderr, align 4
  %494 = load i32, i32* %34, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %32, i64 0, i64 %495
  %497 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = trunc i64 %498 to i32
  %500 = call i32 (i32, i8*, ...) @fprintf(i32 %493, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 %499)
  store i32 1, i32* %3, align 4
  br label %602

501:                                              ; preds = %489, %462
  %502 = load i32, i32* %34, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [2 x %struct.ibv_wc], [2 x %struct.ibv_wc]* %32, i64 0, i64 %503
  %505 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = trunc i64 %506 to i32
  %508 = xor i32 %507, -1
  %509 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %510 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = and i32 %511, %508
  store i32 %512, i32* %510, align 4
  %513 = load i32, i32* %23, align 4
  %514 = load i32, i32* %19, align 4
  %515 = icmp ult i32 %513, %514
  br i1 %515, label %516, label %534

516:                                              ; preds = %501
  %517 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %518 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %534, label %521

521:                                              ; preds = %516
  %522 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %523 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %524 = getelementptr inbounds %struct.pingpong_dest, %struct.pingpong_dest* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = call i64 @pp_post_send(%struct.pingpong_context* %522, i32 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %531

528:                                              ; preds = %521
  %529 = load i32, i32* @stderr, align 4
  %530 = call i32 (i32, i8*, ...) @fprintf(i32 %529, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

531:                                              ; preds = %521
  %532 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %533 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %532, i32 0, i32 1
  store i32 129, i32* %533, align 4
  br label %534

534:                                              ; preds = %531, %516, %501
  br label %535

535:                                              ; preds = %534
  %536 = load i32, i32* %34, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %34, align 4
  br label %423

538:                                              ; preds = %423
  br label %356

539:                                              ; preds = %364
  %540 = call i64 @gettimeofday(%struct.timeval* %12, i32* null)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %539
  %543 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %602

544:                                              ; preds = %539
  %545 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %546 = load i32, i32* %545, align 4
  %547 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = sub nsw i32 %546, %548
  %550 = mul nsw i32 %549, 1000000
  %551 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = sub nsw i32 %552, %554
  %556 = add nsw i32 %550, %555
  %557 = sitofp i32 %556 to float
  store float %557, float* %35, align 4
  %558 = load i32, i32* %17, align 4
  %559 = zext i32 %558 to i64
  %560 = load i32, i32* %19, align 4
  %561 = zext i32 %560 to i64
  %562 = mul nsw i64 %559, %561
  %563 = mul nsw i64 %562, 2
  store i64 %563, i64* %36, align 8
  %564 = load i64, i64* %36, align 8
  %565 = trunc i64 %564 to i32
  %566 = load float, float* %35, align 4
  %567 = fpext float %566 to double
  %568 = fdiv double %567, 1.000000e+06
  %569 = fptrunc double %568 to float
  %570 = load i64, i64* %36, align 8
  %571 = sitofp i64 %570 to double
  %572 = fmul double %571, 8.000000e+00
  %573 = load float, float* %35, align 4
  %574 = fpext float %573 to double
  %575 = fdiv double %572, %574
  %576 = fptrunc double %575 to float
  %577 = call i32 (i8*, i32, float, float, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i64 0, i64 0), i32 %565, float %569, float %576)
  %578 = load i32, i32* %19, align 4
  %579 = load float, float* %35, align 4
  %580 = fpext float %579 to double
  %581 = fdiv double %580, 1.000000e+06
  %582 = fptrunc double %581 to float
  %583 = load float, float* %35, align 4
  %584 = load i32, i32* %19, align 4
  %585 = uitofp i32 %584 to float
  %586 = fdiv float %583, %585
  %587 = call i32 (i8*, i32, float, float, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 %578, float %582, float %586)
  %588 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %589 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %588, i32 0, i32 2
  %590 = load %struct.ibv_cq*, %struct.ibv_cq** %589, align 8
  %591 = load i32, i32* %24, align 4
  %592 = call i32 @ibv_ack_cq_events(%struct.ibv_cq* %590, i32 %591)
  %593 = load %struct.pingpong_context*, %struct.pingpong_context** %8, align 8
  %594 = call i64 @pp_close_ctx(%struct.pingpong_context* %593)
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %544
  store i32 1, i32* %3, align 4
  br label %602

597:                                              ; preds = %544
  %598 = load %struct.ibv_device**, %struct.ibv_device*** %6, align 8
  %599 = call i32 @ibv_free_device_list(%struct.ibv_device** %598)
  %600 = load %struct.pingpong_dest*, %struct.pingpong_dest** %10, align 8
  %601 = call i32 @free(%struct.pingpong_dest* %600)
  store i32 0, i32* %3, align 4
  br label %602

602:                                              ; preds = %597, %596, %542, %528, %492, %484, %435, %409, %396, %386, %375, %353, %342, %328, %296, %257, %228, %215, %202, %190, %176, %141, %131, %119, %97, %71, %56
  %603 = load i32, i32* %3, align 4
  ret i32 %603
}

declare dso_local i32 @srand48(i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @strdupa(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

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

declare dso_local i32 @lrand48(...) #1

declare dso_local i64 @ibv_query_gid(i32, i32, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, float, float, ...) #1

declare dso_local %struct.pingpong_dest* @pp_client_exch_dest(i8*, i32, %struct.pingpong_dest*) #1

declare dso_local %struct.pingpong_dest* @pp_server_exch_dest(%struct.pingpong_context*, i32, i32, i32, %struct.pingpong_dest*, i32) #1

declare dso_local i64 @pp_connect_ctx(%struct.pingpong_context*, i32, i32, i32, %struct.pingpong_dest*, i32) #1

declare dso_local i64 @pp_post_send(%struct.pingpong_context*, i32) #1

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
