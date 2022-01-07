; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat_malloc.c_memstat_sysctl_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat_malloc.c_memstat_sysctl_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_list = type { i8*, i32 }
%struct.malloc_type_stream_header = type { i64, i32, i32 }
%struct.malloc_type_header = type { i32 }
%struct.malloc_type_stats = type { i32, i64, i64, i64, i64 }
%struct.memory_type = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"kern.smp.maxcpus\00", align 1
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@MEMSTAT_ERROR_PERMISSION = common dso_local global i8* null, align 8
@MEMSTAT_ERROR_DATAERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"kern.malloc_count\00", align 1
@MEMSTAT_ERROR_VERSION = common dso_local global i8* null, align 8
@MEMSTAT_ERROR_NOMEMORY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"kern.malloc_stats\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@MALLOC_TYPE_STREAM_VERSION = common dso_local global i64 0, align 8
@ALLOCATOR_MALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memstat_sysctl_malloc(%struct.memory_type_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memory_type_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.malloc_type_stream_header*, align 8
  %7 = alloca %struct.malloc_type_header*, align 8
  %8 = alloca %struct.malloc_type_stats*, align 8
  %9 = alloca %struct.memory_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.memory_type_list* %0, %struct.memory_type_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %19 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %18, i32 0, i32 1
  %20 = call i32 @LIST_EMPTY(i32* %19)
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %100, %2
  store i64 4, i64* %17, align 8
  %22 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %14, i64* %17, i8* null, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EACCES, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EPERM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** @MEMSTAT_ERROR_PERMISSION, align 8
  %34 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %35 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  br label %40

36:                                               ; preds = %28
  %37 = load i8*, i8** @MEMSTAT_ERROR_DATAERROR, align 8
  %38 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %39 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  store i32 -1, i32* %3, align 4
  br label %328

41:                                               ; preds = %21
  %42 = load i64, i64* %17, align 8
  %43 = icmp ne i64 %42, 4
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i8*, i8** @MEMSTAT_ERROR_DATAERROR, align 8
  %46 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %47 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  store i32 -1, i32* %3, align 4
  br label %328

48:                                               ; preds = %41
  store i64 4, i64* %17, align 8
  %49 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %10, i64* %17, i8* null, i32 0)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load i64, i64* @errno, align 8
  %53 = load i64, i64* @EACCES, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EPERM, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55, %51
  %60 = load i8*, i8** @MEMSTAT_ERROR_PERMISSION, align 8
  %61 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %62 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %67

63:                                               ; preds = %55
  %64 = load i8*, i8** @MEMSTAT_ERROR_VERSION, align 8
  %65 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %66 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  store i32 -1, i32* %3, align 4
  br label %328

68:                                               ; preds = %48
  %69 = load i64, i64* %17, align 8
  %70 = icmp ne i64 %69, 4
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** @MEMSTAT_ERROR_DATAERROR, align 8
  %73 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %74 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  store i32 -1, i32* %3, align 4
  br label %328

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 40, %79
  %81 = add i64 4, %80
  %82 = mul i64 %77, %81
  %83 = add i64 4, %82
  store i64 %83, i64* %17, align 8
  %84 = load i64, i64* %17, align 8
  %85 = call i8* @malloc(i64 %84)
  store i8* %85, i8** %15, align 8
  %86 = load i8*, i8** %15, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load i8*, i8** @MEMSTAT_ERROR_NOMEMORY, align 8
  %90 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %91 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  store i32 -1, i32* %3, align 4
  br label %328

92:                                               ; preds = %75
  %93 = load i8*, i8** %15, align 8
  %94 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %93, i64* %17, i8* null, i32 0)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %92
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @ENOMEM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i8*, i8** %15, align 8
  %102 = call i32 @free(i8* %101)
  br label %21

103:                                              ; preds = %96
  %104 = load i64, i64* @errno, align 8
  %105 = load i64, i64* @EACCES, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @EPERM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107, %103
  %112 = load i8*, i8** @MEMSTAT_ERROR_PERMISSION, align 8
  %113 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %114 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  br label %119

115:                                              ; preds = %107
  %116 = load i8*, i8** @MEMSTAT_ERROR_VERSION, align 8
  %117 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %118 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @free(i8* %120)
  store i32 -1, i32* %3, align 4
  br label %328

122:                                              ; preds = %92
  %123 = load i64, i64* %17, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i8*, i8** %15, align 8
  %127 = call i32 @free(i8* %126)
  store i32 0, i32* %3, align 4
  br label %328

128:                                              ; preds = %122
  %129 = load i64, i64* %17, align 8
  %130 = icmp ult i64 %129, 16
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i8*, i8** @MEMSTAT_ERROR_VERSION, align 8
  %133 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %134 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @free(i8* %135)
  store i32 -1, i32* %3, align 4
  br label %328

137:                                              ; preds = %128
  %138 = load i8*, i8** %15, align 8
  store i8* %138, i8** %16, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = bitcast i8* %139 to %struct.malloc_type_stream_header*
  store %struct.malloc_type_stream_header* %140, %struct.malloc_type_stream_header** %6, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 16
  store i8* %142, i8** %16, align 8
  %143 = load %struct.malloc_type_stream_header*, %struct.malloc_type_stream_header** %6, align 8
  %144 = getelementptr inbounds %struct.malloc_type_stream_header, %struct.malloc_type_stream_header* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MALLOC_TYPE_STREAM_VERSION, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %137
  %149 = load i8*, i8** @MEMSTAT_ERROR_VERSION, align 8
  %150 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %151 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = call i32 @free(i8* %152)
  store i32 -1, i32* %3, align 4
  br label %328

154:                                              ; preds = %137
  %155 = load %struct.malloc_type_stream_header*, %struct.malloc_type_stream_header** %6, align 8
  %156 = getelementptr inbounds %struct.malloc_type_stream_header, %struct.malloc_type_stream_header* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %14, align 4
  %158 = load %struct.malloc_type_stream_header*, %struct.malloc_type_stream_header** %6, align 8
  %159 = getelementptr inbounds %struct.malloc_type_stream_header, %struct.malloc_type_stream_header* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %322, %154
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %325

165:                                              ; preds = %161
  %166 = load i8*, i8** %16, align 8
  %167 = bitcast i8* %166 to %struct.malloc_type_header*
  store %struct.malloc_type_header* %167, %struct.malloc_type_header** %7, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 4
  store i8* %169, i8** %16, align 8
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %174 = load i32, i32* @ALLOCATOR_MALLOC, align 4
  %175 = load %struct.malloc_type_header*, %struct.malloc_type_header** %7, align 8
  %176 = getelementptr inbounds %struct.malloc_type_header, %struct.malloc_type_header* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %173, i32 %174, i32 %177)
  store %struct.memory_type* %178, %struct.memory_type** %9, align 8
  br label %180

179:                                              ; preds = %165
  store %struct.memory_type* null, %struct.memory_type** %9, align 8
  br label %180

180:                                              ; preds = %179, %172
  %181 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %182 = icmp eq %struct.memory_type* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %180
  %184 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %185 = load i32, i32* @ALLOCATOR_MALLOC, align 4
  %186 = load %struct.malloc_type_header*, %struct.malloc_type_header** %7, align 8
  %187 = getelementptr inbounds %struct.malloc_type_header, %struct.malloc_type_header* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call %struct.memory_type* @_memstat_mt_allocate(%struct.memory_type_list* %184, i32 %185, i32 %188, i32 %189)
  store %struct.memory_type* %190, %struct.memory_type** %9, align 8
  br label %191

191:                                              ; preds = %183, %180
  %192 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %193 = icmp eq %struct.memory_type* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %196 = call i32 @_memstat_mtl_empty(%struct.memory_type_list* %195)
  %197 = load i8*, i8** %15, align 8
  %198 = call i32 @free(i8* %197)
  %199 = load i8*, i8** @MEMSTAT_ERROR_NOMEMORY, align 8
  %200 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %201 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %200, i32 0, i32 0
  store i8* %199, i8** %201, align 8
  store i32 -1, i32* %3, align 4
  br label %328

202:                                              ; preds = %191
  %203 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %204 = load i32, i32* %14, align 4
  %205 = call i32 @_memstat_mt_reset_stats(%struct.memory_type* %203, i32 %204)
  store i32 0, i32* %13, align 4
  br label %206

206:                                              ; preds = %300, %202
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %14, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %303

210:                                              ; preds = %206
  %211 = load i8*, i8** %16, align 8
  %212 = bitcast i8* %211 to %struct.malloc_type_stats*
  store %struct.malloc_type_stats* %212, %struct.malloc_type_stats** %8, align 8
  %213 = load i8*, i8** %16, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 40
  store i8* %214, i8** %16, align 8
  %215 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %216 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %219 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, %217
  store i64 %221, i64* %219, align 8
  %222 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %223 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %226 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, %224
  store i64 %228, i64* %226, align 8
  %229 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %230 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %233 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, %231
  store i64 %235, i64* %233, align 8
  %236 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %237 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %240 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %241, %238
  store i64 %242, i64* %240, align 8
  %243 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %244 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %247 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  %250 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %251 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %254 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %253, i32 0, i32 6
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 4
  store i64 %252, i64* %259, align 8
  %260 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %261 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %264 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %263, i32 0, i32 6
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 3
  store i64 %262, i64* %269, align 8
  %270 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %271 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %274 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %273, i32 0, i32 6
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 2
  store i64 %272, i64* %279, align 8
  %280 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %281 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %284 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %283, i32 0, i32 6
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** %284, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 1
  store i64 %282, i64* %289, align 8
  %290 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %291 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %294 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %293, i32 0, i32 6
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  store i32 %292, i32* %299, align 8
  br label %300

300:                                              ; preds = %210
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %13, align 4
  br label %206

303:                                              ; preds = %206
  %304 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %305 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %308 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = sub nsw i64 %306, %309
  %311 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %312 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %311, i32 0, i32 5
  store i64 %310, i64* %312, align 8
  %313 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %314 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %317 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = sub nsw i64 %315, %318
  %320 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %321 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %320, i32 0, i32 2
  store i64 %319, i64* %321, align 8
  br label %322

322:                                              ; preds = %303
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %12, align 4
  br label %161

325:                                              ; preds = %161
  %326 = load i8*, i8** %15, align 8
  %327 = call i32 @free(i8* %326)
  store i32 0, i32* %3, align 4
  br label %328

328:                                              ; preds = %325, %194, %148, %131, %125, %119, %88, %71, %67, %44, %40
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i64 @sysctlbyname(i8*, ...) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list*, i32, i32) #1

declare dso_local %struct.memory_type* @_memstat_mt_allocate(%struct.memory_type_list*, i32, i32, i32) #1

declare dso_local i32 @_memstat_mtl_empty(%struct.memory_type_list*) #1

declare dso_local i32 @_memstat_mt_reset_stats(%struct.memory_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
