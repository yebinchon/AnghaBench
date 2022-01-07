; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat_uma.c_memstat_sysctl_uma.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat_uma.c_memstat_sysctl_uma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_type_list = type { i8*, i32 }
%struct.uma_stream_header = type { i64, i32, i32 }
%struct.uma_type_header = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.uma_percpu_stat = type { i64, i64, i64 }
%struct.memory_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"kern.smp.maxid\00", align 1
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@MEMSTAT_ERROR_PERMISSION = common dso_local global i8* null, align 8
@MEMSTAT_ERROR_DATAERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"vm.zone_count\00", align 1
@MEMSTAT_ERROR_VERSION = common dso_local global i8* null, align 8
@MEMSTAT_ERROR_NOMEMORY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"vm.zone_stats\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@UMA_STREAM_VERSION = common dso_local global i64 0, align 8
@ALLOCATOR_UMA = common dso_local global i32 0, align 4
@UTH_ZONE_SECONDARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memstat_sysctl_uma(%struct.memory_type_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memory_type_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uma_stream_header*, align 8
  %7 = alloca %struct.uma_type_header*, align 8
  %8 = alloca %struct.uma_percpu_stat*, align 8
  %9 = alloca %struct.memory_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.memory_type_list* %0, %struct.memory_type_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %20 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %19, i32 0, i32 1
  %21 = call i32 @LIST_EMPTY(i32* %20)
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %102, %2
  store i64 4, i64* %18, align 8
  %23 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %15, i64* %18, i8* null, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EACCES, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @EPERM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %25
  %34 = load i8*, i8** @MEMSTAT_ERROR_PERMISSION, align 8
  %35 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %36 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %41

37:                                               ; preds = %29
  %38 = load i8*, i8** @MEMSTAT_ERROR_DATAERROR, align 8
  %39 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %40 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  store i32 -1, i32* %3, align 4
  br label %401

42:                                               ; preds = %22
  %43 = load i64, i64* %18, align 8
  %44 = icmp ne i64 %43, 4
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** @MEMSTAT_ERROR_DATAERROR, align 8
  %47 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %48 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  store i32 -1, i32* %3, align 4
  br label %401

49:                                               ; preds = %42
  store i64 4, i64* %18, align 8
  %50 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %10, i64* %18, i8* null, i32 0)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EACCES, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @EPERM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56, %52
  %61 = load i8*, i8** @MEMSTAT_ERROR_PERMISSION, align 8
  %62 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %63 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %68

64:                                               ; preds = %56
  %65 = load i8*, i8** @MEMSTAT_ERROR_VERSION, align 8
  %66 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %67 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %60
  store i32 -1, i32* %3, align 4
  br label %401

69:                                               ; preds = %49
  %70 = load i64, i64* %18, align 8
  %71 = icmp ne i64 %70, 4
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i8*, i8** @MEMSTAT_ERROR_DATAERROR, align 8
  %74 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %75 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  store i32 -1, i32* %3, align 4
  br label %401

76:                                               ; preds = %69
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul i64 24, %81
  %83 = add i64 64, %82
  %84 = mul i64 %78, %83
  %85 = add i64 64, %84
  store i64 %85, i64* %18, align 8
  %86 = load i64, i64* %18, align 8
  %87 = call i8* @malloc(i64 %86)
  store i8* %87, i8** %16, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %76
  %91 = load i8*, i8** @MEMSTAT_ERROR_NOMEMORY, align 8
  %92 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %93 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  store i32 -1, i32* %3, align 4
  br label %401

94:                                               ; preds = %76
  %95 = load i8*, i8** %16, align 8
  %96 = call i64 (i8*, ...) @sysctlbyname(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %95, i64* %18, i8* null, i32 0)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = load i64, i64* @errno, align 8
  %100 = load i64, i64* @ENOMEM, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i8*, i8** %16, align 8
  %104 = call i32 @free(i8* %103)
  br label %22

105:                                              ; preds = %98
  %106 = load i64, i64* @errno, align 8
  %107 = load i64, i64* @EACCES, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* @errno, align 8
  %111 = load i64, i64* @EPERM, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109, %105
  %114 = load i8*, i8** @MEMSTAT_ERROR_PERMISSION, align 8
  %115 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %116 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  br label %121

117:                                              ; preds = %109
  %118 = load i8*, i8** @MEMSTAT_ERROR_VERSION, align 8
  %119 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %120 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i8*, i8** %16, align 8
  %123 = call i32 @free(i8* %122)
  store i32 -1, i32* %3, align 4
  br label %401

124:                                              ; preds = %94
  %125 = load i64, i64* %18, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i8*, i8** %16, align 8
  %129 = call i32 @free(i8* %128)
  store i32 0, i32* %3, align 4
  br label %401

130:                                              ; preds = %124
  %131 = load i64, i64* %18, align 8
  %132 = icmp ult i64 %131, 16
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i8*, i8** @MEMSTAT_ERROR_VERSION, align 8
  %135 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %136 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** %16, align 8
  %138 = call i32 @free(i8* %137)
  store i32 -1, i32* %3, align 4
  br label %401

139:                                              ; preds = %130
  %140 = load i8*, i8** %16, align 8
  store i8* %140, i8** %17, align 8
  %141 = load i8*, i8** %17, align 8
  %142 = bitcast i8* %141 to %struct.uma_stream_header*
  store %struct.uma_stream_header* %142, %struct.uma_stream_header** %6, align 8
  %143 = load i8*, i8** %17, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 16
  store i8* %144, i8** %17, align 8
  %145 = load %struct.uma_stream_header*, %struct.uma_stream_header** %6, align 8
  %146 = getelementptr inbounds %struct.uma_stream_header, %struct.uma_stream_header* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @UMA_STREAM_VERSION, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %139
  %151 = load i8*, i8** @MEMSTAT_ERROR_VERSION, align 8
  %152 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %153 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** %16, align 8
  %155 = call i32 @free(i8* %154)
  store i32 -1, i32* %3, align 4
  br label %401

156:                                              ; preds = %139
  %157 = load %struct.uma_stream_header*, %struct.uma_stream_header** %6, align 8
  %158 = getelementptr inbounds %struct.uma_stream_header, %struct.uma_stream_header* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %14, align 4
  %160 = load %struct.uma_stream_header*, %struct.uma_stream_header** %6, align 8
  %161 = getelementptr inbounds %struct.uma_stream_header, %struct.uma_stream_header* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %395, %156
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %398

167:                                              ; preds = %163
  %168 = load i8*, i8** %17, align 8
  %169 = bitcast i8* %168 to %struct.uma_type_header*
  store %struct.uma_type_header* %169, %struct.uma_type_header** %7, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 64
  store i8* %171, i8** %17, align 8
  %172 = load i32, i32* %11, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %167
  %175 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %176 = load i32, i32* @ALLOCATOR_UMA, align 4
  %177 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %178 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %177, i32 0, i32 11
  %179 = load i32, i32* %178, align 8
  %180 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %175, i32 %176, i32 %179)
  store %struct.memory_type* %180, %struct.memory_type** %9, align 8
  br label %182

181:                                              ; preds = %167
  store %struct.memory_type* null, %struct.memory_type** %9, align 8
  br label %182

182:                                              ; preds = %181, %174
  %183 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %184 = icmp eq %struct.memory_type* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %182
  %186 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %187 = load i32, i32* @ALLOCATOR_UMA, align 4
  %188 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %189 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %188, i32 0, i32 11
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  %193 = call %struct.memory_type* @_memstat_mt_allocate(%struct.memory_type_list* %186, i32 %187, i32 %190, i32 %192)
  store %struct.memory_type* %193, %struct.memory_type** %9, align 8
  br label %194

194:                                              ; preds = %185, %182
  %195 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %196 = icmp eq %struct.memory_type* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %199 = call i32 @_memstat_mtl_empty(%struct.memory_type_list* %198)
  %200 = load i8*, i8** %16, align 8
  %201 = call i32 @free(i8* %200)
  %202 = load i8*, i8** @MEMSTAT_ERROR_NOMEMORY, align 8
  %203 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %204 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  store i32 -1, i32* %3, align 4
  br label %401

205:                                              ; preds = %194
  %206 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 @_memstat_mt_reset_stats(%struct.memory_type* %206, i32 %208)
  %210 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %211 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %214 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %216 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %219 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %221 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %220, i32 0, i32 10
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %224 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %223, i32 0, i32 16
  store i32 %222, i32* %224, align 8
  %225 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %226 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %229 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %228, i32 0, i32 15
  store i32 %227, i32* %229, align 4
  %230 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %231 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %234 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %233, i32 0, i32 14
  store i32 %232, i32* %234, align 8
  store i32 0, i32* %13, align 4
  br label %235

235:                                              ; preds = %281, %205
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %14, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %284

239:                                              ; preds = %235
  %240 = load i8*, i8** %17, align 8
  %241 = bitcast i8* %240 to %struct.uma_percpu_stat*
  store %struct.uma_percpu_stat* %241, %struct.uma_percpu_stat** %8, align 8
  %242 = load i8*, i8** %17, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 24
  store i8* %243, i8** %17, align 8
  %244 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %8, align 8
  %245 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %248 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %247, i32 0, i32 13
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  store i64 %246, i64* %253, align 8
  %254 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %8, align 8
  %255 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %258 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %260, %256
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %258, align 8
  %263 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %8, align 8
  %264 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %267 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %265
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 8
  %272 = load %struct.uma_percpu_stat*, %struct.uma_percpu_stat** %8, align 8
  %273 = getelementptr inbounds %struct.uma_percpu_stat, %struct.uma_percpu_stat* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %276 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %278, %274
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 4
  br label %281

281:                                              ; preds = %239
  %282 = load i32, i32* %13, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %13, align 4
  br label %235

284:                                              ; preds = %235
  %285 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %286 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %289 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = icmp slt i32 %287, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %284
  %293 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %294 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %297 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  br label %298

298:                                              ; preds = %292, %284
  %299 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %300 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %303 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %302, i32 0, i32 2
  store i32 %301, i32* %303, align 8
  %304 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %305 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %308 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %307, i32 0, i32 12
  store i32 %306, i32* %308, align 8
  %309 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %310 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %313 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = mul nsw i32 %311, %314
  %316 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %317 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %316, i32 0, i32 3
  store i32 %315, i32* %317, align 4
  %318 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %319 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %322 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = mul nsw i32 %320, %323
  %325 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %326 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %325, i32 0, i32 4
  store i32 %324, i32* %326, align 8
  %327 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %328 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %331 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 8
  %333 = sub nsw i32 %329, %332
  %334 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %335 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %334, i32 0, i32 5
  store i32 %333, i32* %335, align 4
  %336 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %337 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %340 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %339, i32 0, i32 6
  store i32 %338, i32* %340, align 8
  %341 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %342 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %345 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 8
  %347 = mul nsw i32 %343, %346
  %348 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %349 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %348, i32 0, i32 7
  store i32 %347, i32* %349, align 4
  %350 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %351 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %354 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = sub nsw i32 %352, %355
  %357 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %358 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %357, i32 0, i32 8
  store i32 %356, i32* %358, align 8
  %359 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %360 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %359, i32 0, i32 6
  %361 = load i64, i64* %360, align 8
  %362 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %363 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %362, i32 0, i32 9
  store i64 %361, i64* %363, align 8
  %364 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %365 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @UTH_ZONE_SECONDARY, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %385, label %370

370:                                              ; preds = %298
  %371 = load %struct.uma_type_header*, %struct.uma_type_header** %7, align 8
  %372 = getelementptr inbounds %struct.uma_type_header, %struct.uma_type_header* %371, i32 0, i32 5
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %375 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %374, i32 0, i32 11
  store i64 %373, i64* %375, align 8
  %376 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %377 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %376, i32 0, i32 11
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %380 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %379, i32 0, i32 10
  %381 = load i32, i32* %380, align 8
  %382 = sext i32 %381 to i64
  %383 = add nsw i64 %382, %378
  %384 = trunc i64 %383 to i32
  store i32 %384, i32* %380, align 8
  br label %385

385:                                              ; preds = %370, %298
  %386 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %387 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %386, i32 0, i32 9
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.memory_type*, %struct.memory_type** %9, align 8
  %390 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %389, i32 0, i32 10
  %391 = load i32, i32* %390, align 8
  %392 = sext i32 %391 to i64
  %393 = add nsw i64 %392, %388
  %394 = trunc i64 %393 to i32
  store i32 %394, i32* %390, align 8
  br label %395

395:                                              ; preds = %385
  %396 = load i32, i32* %12, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %12, align 4
  br label %163

398:                                              ; preds = %163
  %399 = load i8*, i8** %16, align 8
  %400 = call i32 @free(i8* %399)
  store i32 0, i32* %3, align 4
  br label %401

401:                                              ; preds = %398, %197, %150, %133, %127, %121, %90, %72, %68, %45, %41
  %402 = load i32, i32* %3, align 4
  ret i32 %402
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
