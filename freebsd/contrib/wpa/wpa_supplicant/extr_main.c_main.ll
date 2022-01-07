; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_interface = type { i32, i32, %struct.wpa_interface*, %struct.wpa_interface*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.wpa_params = type { i32, i32, %struct.wpa_params*, %struct.wpa_params*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8* }
%struct.wpa_global = type { i32 }
%struct.wpa_supplicant = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"b:Bc:C:D:de:f:g:G:hi:I:KLMm:No:O:p:P:qsTtuvW\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@wpa_supplicant_version = common dso_local global i8* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to initialize wpa_supplicant\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Successfully initialized wpa_supplicant\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to initialize FST\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@fst_ctrl_cli = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_interface*, align 8
  %9 = alloca %struct.wpa_interface*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpa_params, align 8
  %13 = alloca %struct.wpa_global*, align 8
  %14 = alloca %struct.wpa_supplicant*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %11, align 4
  %15 = call i64 (...) @os_program_init()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %246

18:                                               ; preds = %2
  %19 = call i32 @os_memset(%struct.wpa_params* %12, i32 0, i32 168)
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 11
  store i32 %20, i32* %21, align 8
  %22 = call %struct.wpa_params* @os_zalloc(i32 168)
  %23 = bitcast %struct.wpa_params* %22 to %struct.wpa_interface*
  store %struct.wpa_interface* %23, %struct.wpa_interface** %8, align 8
  store %struct.wpa_interface* %23, %struct.wpa_interface** %9, align 8
  %24 = load %struct.wpa_interface*, %struct.wpa_interface** %8, align 8
  %25 = icmp eq %struct.wpa_interface* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %246

27:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  %28 = call i32 @wpa_supplicant_fd_workaround(i32 1)
  br label %29

29:                                               ; preds = %146, %27
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %147

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %144 [
    i32 98, label %38
    i32 66, label %42
    i32 99, label %46
    i32 67, label %51
    i32 68, label %56
    i32 100, label %60
    i32 101, label %64
    i32 103, label %67
    i32 71, label %71
    i32 104, label %74
    i32 105, label %76
    i32 73, label %81
    i32 75, label %85
    i32 76, label %89
    i32 111, label %91
    i32 79, label %94
    i32 112, label %97
    i32 80, label %101
    i32 113, label %108
    i32 116, label %112
    i32 118, label %116
    i32 87, label %119
    i32 78, label %123
  ]

38:                                               ; preds = %36
  %39 = load i8*, i8** @optarg, align 8
  %40 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %41 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %40, i32 0, i32 23
  store i8* %39, i8** %41, align 8
  br label %146

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 22
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %146

46:                                               ; preds = %36
  %47 = load i8*, i8** @optarg, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %50 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  br label %146

51:                                               ; preds = %36
  %52 = load i8*, i8** @optarg, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %55 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  br label %146

56:                                               ; preds = %36
  %57 = load i8*, i8** @optarg, align 8
  %58 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %59 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %58, i32 0, i32 21
  store i8* %57, i8** %59, align 8
  br label %146

60:                                               ; preds = %36
  %61 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 11
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  br label %146

64:                                               ; preds = %36
  %65 = load i8*, i8** @optarg, align 8
  %66 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 20
  store i8* %65, i8** %66, align 8
  br label %146

67:                                               ; preds = %36
  %68 = load i8*, i8** @optarg, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 4
  store i32* %69, i32** %70, align 8
  br label %146

71:                                               ; preds = %36
  %72 = load i8*, i8** @optarg, align 8
  %73 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 18
  store i8* %72, i8** %73, align 8
  br label %146

74:                                               ; preds = %36
  %75 = call i32 (...) @usage()
  store i32 0, i32* %11, align 4
  br label %236

76:                                               ; preds = %36
  %77 = load i8*, i8** @optarg, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %80 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %79, i32 0, i32 5
  store i32* %78, i32** %80, align 8
  br label %146

81:                                               ; preds = %36
  %82 = load i8*, i8** @optarg, align 8
  %83 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %84 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %83, i32 0, i32 17
  store i8* %82, i8** %84, align 8
  br label %146

85:                                               ; preds = %36
  %86 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 16
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %146

89:                                               ; preds = %36
  %90 = call i32 (...) @license()
  store i32 0, i32* %11, align 4
  br label %236

91:                                               ; preds = %36
  %92 = load i8*, i8** @optarg, align 8
  %93 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 14
  store i8* %92, i8** %93, align 8
  br label %146

94:                                               ; preds = %36
  %95 = load i8*, i8** @optarg, align 8
  %96 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 13
  store i8* %95, i8** %96, align 8
  br label %146

97:                                               ; preds = %36
  %98 = load i8*, i8** @optarg, align 8
  %99 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %100 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %99, i32 0, i32 12
  store i8* %98, i8** %100, align 8
  br label %146

101:                                              ; preds = %36
  %102 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 2
  %103 = load %struct.wpa_params*, %struct.wpa_params** %102, align 8
  %104 = call i32 @os_free(%struct.wpa_params* %103)
  %105 = load i8*, i8** @optarg, align 8
  %106 = call %struct.wpa_params* @os_rel2abs_path(i8* %105)
  %107 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 2
  store %struct.wpa_params* %106, %struct.wpa_params** %107, align 8
  br label %146

108:                                              ; preds = %36
  %109 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 11
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  br label %146

112:                                              ; preds = %36
  %113 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %146

116:                                              ; preds = %36
  %117 = load i8*, i8** @wpa_supplicant_version, align 8
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %117)
  store i32 0, i32* %11, align 4
  br label %236

119:                                              ; preds = %36
  %120 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %146

123:                                              ; preds = %36
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = load %struct.wpa_interface*, %struct.wpa_interface** %8, align 8
  %127 = bitcast %struct.wpa_interface* %126 to %struct.wpa_params*
  %128 = load i32, i32* %10, align 4
  %129 = call %struct.wpa_params* @os_realloc_array(%struct.wpa_params* %127, i32 %128, i32 168)
  %130 = bitcast %struct.wpa_params* %129 to %struct.wpa_interface*
  store %struct.wpa_interface* %130, %struct.wpa_interface** %9, align 8
  %131 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %132 = icmp eq %struct.wpa_interface* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %236

134:                                              ; preds = %123
  %135 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  store %struct.wpa_interface* %135, %struct.wpa_interface** %8, align 8
  %136 = load %struct.wpa_interface*, %struct.wpa_interface** %8, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %136, i64 %139
  store %struct.wpa_interface* %140, %struct.wpa_interface** %9, align 8
  %141 = load %struct.wpa_interface*, %struct.wpa_interface** %9, align 8
  %142 = bitcast %struct.wpa_interface* %141 to %struct.wpa_params*
  %143 = call i32 @os_memset(%struct.wpa_params* %142, i32 0, i32 168)
  br label %146

144:                                              ; preds = %36
  %145 = call i32 (...) @usage()
  store i32 0, i32* %11, align 4
  br label %236

146:                                              ; preds = %134, %119, %112, %108, %101, %97, %94, %91, %85, %81, %76, %71, %67, %64, %60, %56, %51, %46, %42, %38
  br label %29

147:                                              ; preds = %35
  store i32 0, i32* %11, align 4
  %148 = call %struct.wpa_global* @wpa_supplicant_init(%struct.wpa_params* %12)
  store %struct.wpa_global* %148, %struct.wpa_global** %13, align 8
  %149 = load %struct.wpa_global*, %struct.wpa_global** %13, align 8
  %150 = icmp eq %struct.wpa_global* %149, null
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @MSG_ERROR, align 4
  %153 = call i32 @wpa_printf(i32 %152, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %236

154:                                              ; preds = %147
  %155 = load i32, i32* @MSG_INFO, align 4
  %156 = call i32 @wpa_printf(i32 %155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154
  %158 = call i64 (...) @fst_global_init()
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* @MSG_ERROR, align 4
  %162 = call i32 @wpa_printf(i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %236

163:                                              ; preds = %157
  store i32 0, i32* %7, align 4
  br label %164

164:                                              ; preds = %223, %163
  %165 = load i32, i32* %11, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %168, %169
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i1 [ false, %164 ], [ %170, %167 ]
  br i1 %172, label %173, label %226

173:                                              ; preds = %171
  %174 = load %struct.wpa_interface*, %struct.wpa_interface** %8, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %174, i64 %176
  %178 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %173
  %182 = load %struct.wpa_interface*, %struct.wpa_interface** %8, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %182, i64 %184
  %186 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %185, i32 0, i32 4
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %197, label %189

189:                                              ; preds = %181, %173
  %190 = load %struct.wpa_interface*, %struct.wpa_interface** %8, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %190, i64 %192
  %194 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %193, i32 0, i32 5
  %195 = load i32*, i32** %194, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %211

197:                                              ; preds = %189, %181
  %198 = load i32, i32* %10, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204, %200
  br label %226

209:                                              ; preds = %204, %197
  %210 = call i32 (...) @usage()
  store i32 -1, i32* %11, align 4
  br label %226

211:                                              ; preds = %189
  %212 = load %struct.wpa_global*, %struct.wpa_global** %13, align 8
  %213 = load %struct.wpa_interface*, %struct.wpa_interface** %8, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.wpa_interface, %struct.wpa_interface* %213, i64 %215
  %217 = bitcast %struct.wpa_interface* %216 to %struct.wpa_params*
  %218 = call %struct.wpa_supplicant* @wpa_supplicant_add_iface(%struct.wpa_global* %212, %struct.wpa_params* %217, i32* null)
  store %struct.wpa_supplicant* %218, %struct.wpa_supplicant** %14, align 8
  %219 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  %220 = icmp eq %struct.wpa_supplicant* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  store i32 -1, i32* %11, align 4
  br label %226

222:                                              ; preds = %211
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  br label %164

226:                                              ; preds = %221, %209, %208, %171
  %227 = load i32, i32* %11, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.wpa_global*, %struct.wpa_global** %13, align 8
  %231 = call i32 @wpa_supplicant_run(%struct.wpa_global* %230)
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %229, %226
  %233 = load %struct.wpa_global*, %struct.wpa_global** %13, align 8
  %234 = call i32 @wpa_supplicant_deinit(%struct.wpa_global* %233)
  %235 = call i32 (...) @fst_global_deinit()
  br label %236

236:                                              ; preds = %232, %160, %151, %144, %133, %116, %89, %74
  %237 = call i32 @wpa_supplicant_fd_workaround(i32 0)
  %238 = load %struct.wpa_interface*, %struct.wpa_interface** %8, align 8
  %239 = bitcast %struct.wpa_interface* %238 to %struct.wpa_params*
  %240 = call i32 @os_free(%struct.wpa_params* %239)
  %241 = getelementptr inbounds %struct.wpa_params, %struct.wpa_params* %12, i32 0, i32 2
  %242 = load %struct.wpa_params*, %struct.wpa_params** %241, align 8
  %243 = call i32 @os_free(%struct.wpa_params* %242)
  %244 = call i32 (...) @os_program_deinit()
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %236, %26, %17
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i64 @os_program_init(...) #1

declare dso_local i32 @os_memset(%struct.wpa_params*, i32, i32) #1

declare dso_local %struct.wpa_params* @os_zalloc(i32) #1

declare dso_local i32 @wpa_supplicant_fd_workaround(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @license(...) #1

declare dso_local i32 @os_free(%struct.wpa_params*) #1

declare dso_local %struct.wpa_params* @os_rel2abs_path(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.wpa_params* @os_realloc_array(%struct.wpa_params*, i32, i32) #1

declare dso_local %struct.wpa_global* @wpa_supplicant_init(%struct.wpa_params*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @fst_global_init(...) #1

declare dso_local %struct.wpa_supplicant* @wpa_supplicant_add_iface(%struct.wpa_global*, %struct.wpa_params*, i32*) #1

declare dso_local i32 @wpa_supplicant_run(%struct.wpa_global*) #1

declare dso_local i32 @wpa_supplicant_deinit(%struct.wpa_global*) #1

declare dso_local i32 @fst_global_deinit(...) #1

declare dso_local i32 @os_program_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
