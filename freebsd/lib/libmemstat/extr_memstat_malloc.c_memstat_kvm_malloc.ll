; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat_malloc.c_memstat_kvm_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmemstat/extr_memstat_malloc.c_memstat_kvm_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.memory_type_list = type { i32, i32 }
%struct.memory_type = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64 }
%struct.malloc_type_stats = type { i32, i64, i64, i64, i64 }
%struct.malloc_type_internal = type { i64, %struct.malloc_type_internal*, i64, %struct.malloc_type_internal* }
%struct.malloc_type = type { i64, %struct.malloc_type*, i64, %struct.malloc_type* }

@MEMTYPE_MAXNAME = common dso_local global i32 0, align 4
@namelist = common dso_local global %struct.TYPE_4__* null, align 8
@MEMSTAT_ERROR_KVM = common dso_local global i32 0, align 4
@X_KMEMSTATISTICS = common dso_local global i64 0, align 8
@MEMSTAT_ERROR_KVM_NOSYMBOL = common dso_local global i32 0, align 4
@X_MP_MAXCPUS = common dso_local global i64 0, align 8
@ALLOCATOR_MALLOC = common dso_local global i32 0, align 4
@MEMSTAT_ERROR_NOMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memstat_kvm_malloc(%struct.memory_type_list* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memory_type_list*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.memory_type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.malloc_type_stats, align 8
  %16 = alloca %struct.malloc_type_internal, align 8
  %17 = alloca %struct.malloc_type_internal*, align 8
  %18 = alloca %struct.malloc_type, align 8
  %19 = alloca %struct.malloc_type*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.memory_type_list* %0, %struct.memory_type_list** %4, align 8
  store i8* %1, i8** %5, align 8
  %22 = load i32, i32* @MEMTYPE_MAXNAME, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %20, align 8
  %28 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %29 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %28, i32 0, i32 1
  %30 = call i32 @LIST_EMPTY(i32* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %20, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @namelist, align 8
  %33 = call i64 @kvm_nlist(i32* %31, %struct.TYPE_4__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @MEMSTAT_ERROR_KVM, align 4
  %37 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %38 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

39:                                               ; preds = %2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @namelist, align 8
  %41 = load i64, i64* @X_KMEMSTATISTICS, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @namelist, align 8
  %48 = load i64, i64* @X_KMEMSTATISTICS, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46, %39
  %54 = load i32, i32* @MEMSTAT_ERROR_KVM_NOSYMBOL, align 4
  %55 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %56 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

57:                                               ; preds = %46
  %58 = load i32*, i32** %20, align 8
  %59 = load i64, i64* @X_MP_MAXCPUS, align 8
  %60 = call i32 (i32*, i64, ...) @kread_symbol(i32* %58, i64 %59, i32* %10, i64 4, i32 0)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %66 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

67:                                               ; preds = %57
  %68 = load i32*, i32** %20, align 8
  %69 = load i64, i64* @X_KMEMSTATISTICS, align 8
  %70 = call i32 (i32*, i64, ...) @kread_symbol(i32* %68, i64 %69, i8** %7, i64 8, i32 0)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %76 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

77:                                               ; preds = %67
  %78 = load i32*, i32** %20, align 8
  %79 = call i32 @kvm_getncpus(i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = bitcast i8* %80 to %struct.malloc_type*
  store %struct.malloc_type* %81, %struct.malloc_type** %19, align 8
  br label %82

82:                                               ; preds = %291, %77
  %83 = load %struct.malloc_type*, %struct.malloc_type** %19, align 8
  %84 = icmp ne %struct.malloc_type* %83, null
  br i1 %84, label %85, label %294

85:                                               ; preds = %82
  %86 = load i32*, i32** %20, align 8
  %87 = load %struct.malloc_type*, %struct.malloc_type** %19, align 8
  %88 = bitcast %struct.malloc_type* %87 to %struct.malloc_type_internal*
  %89 = bitcast %struct.malloc_type* %18 to %struct.malloc_type_internal*
  %90 = call i32 @kread(i32* %86, %struct.malloc_type_internal* %88, %struct.malloc_type_internal* %89, i32 32, i32 0)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %95 = call i32 @_memstat_mtl_empty(%struct.memory_type_list* %94)
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %98 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

99:                                               ; preds = %85
  %100 = load i32*, i32** %20, align 8
  %101 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %18, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load i32, i32* @MEMTYPE_MAXNAME, align 4
  %105 = call i32 @kread_string(i32* %100, i8* %103, i8* %25, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %99
  %109 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %110 = call i32 @_memstat_mtl_empty(%struct.memory_type_list* %109)
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %113 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

114:                                              ; preds = %99
  %115 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %18, i32 0, i32 1
  %116 = load %struct.malloc_type*, %struct.malloc_type** %115, align 8
  %117 = bitcast %struct.malloc_type* %116 to %struct.malloc_type_internal*
  store %struct.malloc_type_internal* %117, %struct.malloc_type_internal** %17, align 8
  %118 = load i32*, i32** %20, align 8
  %119 = load %struct.malloc_type_internal*, %struct.malloc_type_internal** %17, align 8
  %120 = call i32 @kread(i32* %118, %struct.malloc_type_internal* %119, %struct.malloc_type_internal* %16, i32 32, i32 0)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %114
  %124 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %125 = call i32 @_memstat_mtl_empty(%struct.memory_type_list* %124)
  %126 = load i32, i32* %12, align 4
  %127 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %128 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

129:                                              ; preds = %114
  %130 = load i32, i32* %8, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %134 = load i32, i32* @ALLOCATOR_MALLOC, align 4
  %135 = call %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list* %133, i32 %134, i8* %25)
  store %struct.memory_type* %135, %struct.memory_type** %6, align 8
  br label %137

136:                                              ; preds = %129
  store %struct.memory_type* null, %struct.memory_type** %6, align 8
  br label %137

137:                                              ; preds = %136, %132
  %138 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %139 = icmp eq %struct.memory_type* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %142 = load i32, i32* @ALLOCATOR_MALLOC, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call %struct.memory_type* @_memstat_mt_allocate(%struct.memory_type_list* %141, i32 %142, i8* %25, i32 %143)
  store %struct.memory_type* %144, %struct.memory_type** %6, align 8
  br label %145

145:                                              ; preds = %140, %137
  %146 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %147 = icmp eq %struct.memory_type* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %150 = call i32 @_memstat_mtl_empty(%struct.memory_type_list* %149)
  %151 = load i32, i32* @MEMSTAT_ERROR_NOMEMORY, align 4
  %152 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %153 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

154:                                              ; preds = %145
  %155 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @_memstat_mt_reset_stats(%struct.memory_type* %155, i32 %156)
  store i32 0, i32* %9, align 4
  br label %158

158:                                              ; preds = %253, %154
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %256

162:                                              ; preds = %158
  %163 = load i32*, i32** %20, align 8
  %164 = getelementptr inbounds %struct.malloc_type_internal, %struct.malloc_type_internal* %16, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @kread_zpcpu(i32* %163, i32 %166, %struct.malloc_type_stats* %15, i32 40, i32 %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %162
  %172 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %173 = call i32 @_memstat_mtl_empty(%struct.memory_type_list* %172)
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.memory_type_list*, %struct.memory_type_list** %4, align 8
  %176 = getelementptr inbounds %struct.memory_type_list, %struct.memory_type_list* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

177:                                              ; preds = %162
  %178 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %181 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %187 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, %185
  store i64 %189, i64* %187, align 8
  %190 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %193 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %194, %191
  store i64 %195, i64* %193, align 8
  %196 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %199 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %200, %197
  store i64 %201, i64* %199, align 8
  %202 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %205 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %211 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %210, i32 0, i32 6
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 4
  store i64 %209, i64* %216, align 8
  %217 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %220 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %219, i32 0, i32 6
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 3
  store i64 %218, i64* %225, align 8
  %226 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %229 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %228, i32 0, i32 6
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  store i64 %227, i64* %234, align 8
  %235 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %238 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %237, i32 0, i32 6
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  store i64 %236, i64* %243, align 8
  %244 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %15, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %247 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %246, i32 0, i32 6
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  store i32 %245, i32* %252, align 8
  br label %253

253:                                              ; preds = %177
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %158

256:                                              ; preds = %158
  br label %257

257:                                              ; preds = %269, %256
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %10, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %257
  %262 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %263 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %262, i32 0, i32 6
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = load i32, i32* %9, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i64 %266
  %268 = call i32 @bzero(%struct.TYPE_5__* %267, i32 40)
  br label %269

269:                                              ; preds = %261
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  br label %257

272:                                              ; preds = %257
  %273 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %274 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %277 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = sub nsw i64 %275, %278
  %280 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %281 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %280, i32 0, i32 5
  store i64 %279, i64* %281, align 8
  %282 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %283 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %286 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = sub nsw i64 %284, %287
  %289 = load %struct.memory_type*, %struct.memory_type** %6, align 8
  %290 = getelementptr inbounds %struct.memory_type, %struct.memory_type* %289, i32 0, i32 2
  store i64 %288, i64* %290, align 8
  br label %291

291:                                              ; preds = %272
  %292 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %18, i32 0, i32 3
  %293 = load %struct.malloc_type*, %struct.malloc_type** %292, align 8
  store %struct.malloc_type* %293, %struct.malloc_type** %19, align 8
  br label %82

294:                                              ; preds = %82
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %295

295:                                              ; preds = %294, %171, %148, %123, %108, %93, %73, %63, %53, %35
  %296 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %296)
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LIST_EMPTY(i32*) #2

declare dso_local i64 @kvm_nlist(i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @kread_symbol(i32*, i64, ...) #2

declare dso_local i32 @kvm_getncpus(i32*) #2

declare dso_local i32 @kread(i32*, %struct.malloc_type_internal*, %struct.malloc_type_internal*, i32, i32) #2

declare dso_local i32 @_memstat_mtl_empty(%struct.memory_type_list*) #2

declare dso_local i32 @kread_string(i32*, i8*, i8*, i32) #2

declare dso_local %struct.memory_type* @memstat_mtl_find(%struct.memory_type_list*, i32, i8*) #2

declare dso_local %struct.memory_type* @_memstat_mt_allocate(%struct.memory_type_list*, i32, i8*, i32) #2

declare dso_local i32 @_memstat_mt_reset_stats(%struct.memory_type*, i32) #2

declare dso_local i32 @kread_zpcpu(i32*, i32, %struct.malloc_type_stats*, i32, i32) #2

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
