; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_wc = type { i32, i32 }

@main.long_options = internal global [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i8 112 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 1, i8 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1, i8 115 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 1, i8 109 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i32 1, i8 99 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 1, i8 110 }, %struct.option { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 1, i8 108 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 0, i8 101 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 1, i8 103 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ib-dev\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ib-port\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"num_tests\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"gid-idx\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"p:d:i:s:m:c:n:l:eg:\00", align 1
@optarg = common dso_local global i8* null, align 8
@ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@optind = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Couldn't post receives\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Error polling cq %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"Work completion error %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ibv_wc, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 18515, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %17 = call i32 (...) @init()
  br label %18

18:                                               ; preds = %2, %91
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt_long(i32 %19, i8** %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @main.long_options, i64 0, i64 0), i32* null)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %92

25:                                               ; preds = %18
  %26 = load i32, i32* %16, align 4
  switch i32 %26, label %86 [
    i32 112, label %27
    i32 100, label %42
    i32 105, label %45
    i32 115, label %56
    i32 109, label %59
    i32 99, label %71
    i32 110, label %75
    i32 108, label %79
    i32 103, label %82
    i32 101, label %85
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i8* @strtol(i8* %28, i32* null, i32 0)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 65535
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %27
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @usage(i8* %39)
  store i32 1, i32* %3, align 4
  br label %267

41:                                               ; preds = %33
  br label %91

42:                                               ; preds = %25
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i8* @strdupa(i8* %43)
  store i8* %44, i8** %6, align 8
  br label %91

45:                                               ; preds = %25
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i8* @strtol(i8* %46, i32* null, i32 0)
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 10), align 8
  %48 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 10), align 8
  %49 = icmp ult i8* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @usage(i8* %53)
  store i32 1, i32* %3, align 4
  br label %267

55:                                               ; preds = %45
  br label %91

56:                                               ; preds = %25
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i8* @strtol(i8* %57, i32* null, i32 0)
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 9), align 8
  br label %91

59:                                               ; preds = %25
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i8* @strtol(i8* %60, i32* null, i32 0)
  %62 = call i32 @pp_mtu_to_enum(i8* %61)
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 8), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 8), align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @usage(i8* %68)
  store i32 1, i32* %3, align 4
  br label %267

70:                                               ; preds = %59
  br label %91

71:                                               ; preds = %25
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i8* @strtol(i8* %72, i32* null, i32 0)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  br label %91

75:                                               ; preds = %25
  %76 = load i8*, i8** @optarg, align 8
  %77 = call i8* @strtol(i8* %76, i32* null, i32 0)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 1), align 4
  br label %91

79:                                               ; preds = %25
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i8* @strtol(i8* %80, i32* null, i32 0)
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 7), align 8
  br label %91

82:                                               ; preds = %25
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i8* @strtol(i8* %83, i32* null, i32 0)
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 6), align 8
  br label %91

85:                                               ; preds = %25
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 2), align 8
  br label %91

86:                                               ; preds = %25
  %87 = load i8**, i8*** %5, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @usage(i8* %89)
  store i32 1, i32* %3, align 4
  br label %267

91:                                               ; preds = %85, %82, %79, %75, %71, %70, %56, %55, %42, %41
  br label %18

92:                                               ; preds = %24
  %93 = load i32, i32* @optind, align 4
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* @optind, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @strdupa(i8* %102)
  store i8* %103, i8** %7, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  br label %114

104:                                              ; preds = %92
  %105 = load i32, i32* @optind, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load i8**, i8*** %5, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @usage(i8* %111)
  store i32 1, i32* %3, align 4
  br label %267

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %97
  %115 = load i32, i32* @_SC_PAGESIZE, align 4
  %116 = call i32 @sysconf(i32 %115)
  store i32 %116, i32* @page_size, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @pp_init_ctx(i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %267

121:                                              ; preds = %114
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %123 = call i64 @pp_post_recv(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* @stderr, align 4
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %267

128:                                              ; preds = %121
  %129 = load i8*, i8** %7, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i64 @pp_client_connect(i8* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  store i32 1, i32* %3, align 4
  br label %267

137:                                              ; preds = %131
  br label %155

138:                                              ; preds = %128
  %139 = load i32, i32* %8, align 4
  %140 = call i64 @pp_server_connect(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i32 1, i32* %3, align 4
  br label %267

143:                                              ; preds = %138
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %151, %143
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %144
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @pp_post_send(i32 %149)
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %144

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 1), align 4
  %158 = mul nsw i32 %156, %157
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %221, %155
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %222

163:                                              ; preds = %159
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 2), align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = call i64 (...) @get_cq_event()
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 1, i32* %3, align 4
  br label %267

170:                                              ; preds = %166
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %173

173:                                              ; preds = %170, %163
  br label %174

174:                                              ; preds = %218, %173
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %176 = call i32 @ibv_poll_cq(i32 %175, i32 1, %struct.ibv_wc* %15)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %181)
  store i32 1, i32* %3, align 4
  br label %267

183:                                              ; preds = %174
  %184 = load i32, i32* %12, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %221

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187
  %189 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %15, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i32, i32* @stderr, align 4
  %194 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %15, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %195)
  store i32 1, i32* %3, align 4
  br label %267

197:                                              ; preds = %188
  %198 = load i32, i32* %12, align 4
  %199 = call i64 @pp_post_recv(i32 %198)
  %200 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %15, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @find_qp(i32 %201)
  store i32 %202, i32* %13, align 4
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 5), align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 1), align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %197
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @pp_post_send(i32 %212)
  br label %214

214:                                              ; preds = %211, %197
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %11, align 4
  br label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %12, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %174, label %221

221:                                              ; preds = %218, %186
  br label %159

222:                                              ; preds = %159
  store i32 0, i32* %11, align 4
  br label %223

223:                                              ; preds = %237, %222
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 0), align 8
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 4), align 8
  %229 = call i32 @ibv_poll_cq(i32 %228, i32 1, %struct.ibv_wc* %15)
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i32, i32* @stderr, align 4
  %234 = load i32, i32* %12, align 4
  %235 = call i32 (i32, i8*, ...) @fprintf(i32 %233, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %234)
  store i32 1, i32* %3, align 4
  br label %267

236:                                              ; preds = %227
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %11, align 4
  br label %223

241:                                              ; preds = %223
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 2), align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctx, i32 0, i32 3), align 4
  %246 = load i32, i32* %14, align 4
  %247 = call i32 @ibv_ack_cq_events(i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %244, %241
  %249 = load i8*, i8** %7, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = call i64 (...) @pp_client_termination()
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  store i32 1, i32* %3, align 4
  br label %267

255:                                              ; preds = %251
  br label %261

256:                                              ; preds = %248
  %257 = call i64 (...) @pp_server_termination()
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store i32 1, i32* %3, align 4
  br label %267

260:                                              ; preds = %256
  br label %261

261:                                              ; preds = %260, %255
  %262 = call i64 (...) @pp_close_ctx()
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 1, i32* %3, align 4
  br label %267

265:                                              ; preds = %261
  %266 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %265, %264, %259, %254, %232, %192, %179, %169, %142, %136, %125, %120, %108, %86, %65, %50, %36
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @init(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @strdupa(i8*) #1

declare dso_local i32 @pp_mtu_to_enum(i8*) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i64 @pp_init_ctx(i8*) #1

declare dso_local i64 @pp_post_recv(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @pp_client_connect(i8*, i32) #1

declare dso_local i64 @pp_server_connect(i32) #1

declare dso_local i32 @pp_post_send(i32) #1

declare dso_local i64 @get_cq_event(...) #1

declare dso_local i32 @ibv_poll_cq(i32, i32, %struct.ibv_wc*) #1

declare dso_local i32 @find_qp(i32) #1

declare dso_local i32 @ibv_ack_cq_events(i32, i32) #1

declare dso_local i64 @pp_client_termination(...) #1

declare dso_local i64 @pp_server_termination(...) #1

declare dso_local i64 @pp_close_ctx(...) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
