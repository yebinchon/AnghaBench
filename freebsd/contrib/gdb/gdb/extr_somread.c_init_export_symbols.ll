; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somread.c_init_export_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_somread.c_init_export_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.SomExportEntry = type { i32, i32, i32, i32, i8, i8, i16 }

@.str = private unnamed_addr constant [13 x i8] c"$SHLIB_INFO$\00", align 1
@SOM_READ_EXPORTS_CHUNK_SIZE = common dso_local global i32 0, align 4
@SOM_READ_EXPORTS_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_export_symbols(%struct.objfile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [12 x i32], align 16
  %14 = alloca [100 x %struct.SomExportEntry], align 16
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  %15 = load %struct.objfile*, %struct.objfile** %3, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %16, align 8
  %17 = load %struct.objfile*, %struct.objfile** %3, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.objfile*, %struct.objfile** %3, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @bfd_get_section_by_name(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %294

26:                                               ; preds = %1
  %27 = load %struct.objfile*, %struct.objfile** %3, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 0
  %32 = call i32 (i32, i32*, ...) @bfd_get_section_contents(i32 %29, i32* %30, i32* %31, i32 0, i64 48)
  %33 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp ne i32 %34, 93092112
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %294

37:                                               ; preds = %26
  %38 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 8
  %39 = load i32, i32* %38, align 16
  store i32 %39, i32* %4, align 4
  %40 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 9
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %294

45:                                               ; preds = %37
  %46 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 10
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %13, i64 0, i64 11
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %294

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @xmalloc(i32 %54)
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %8, align 8
  %57 = load %struct.objfile*, %struct.objfile** %3, align 8
  %58 = getelementptr inbounds %struct.objfile, %struct.objfile* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i32, i32*, ...) @bfd_get_section_contents(i32 %59, i32* %60, i8* %61, i32 %62, i32 %63)
  %65 = load %struct.objfile*, %struct.objfile** %3, align 8
  %66 = getelementptr inbounds %struct.objfile, %struct.objfile* %65, i32 0, i32 2
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = mul i64 %68, 16
  %70 = trunc i64 %69 to i32
  %71 = call i64 @obstack_alloc(i32* %66, i32 %70)
  %72 = inttoptr i64 %71 to %struct.TYPE_2__*
  %73 = load %struct.objfile*, %struct.objfile** %3, align 8
  %74 = getelementptr inbounds %struct.objfile, %struct.objfile* %73, i32 0, i32 1
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %74, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %177, %53
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %5, align 4
  %78 = udiv i32 %77, 100
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %80, label %180

80:                                               ; preds = %75
  %81 = load %struct.objfile*, %struct.objfile** %3, align 8
  %82 = getelementptr inbounds %struct.objfile, %struct.objfile* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 0
  %86 = load i32, i32* %4, align 4
  %87 = zext i32 %86 to i64
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 2000
  %91 = add i64 %87, %90
  %92 = call i32 (i32, i32*, ...) @bfd_get_section_contents(i32 %83, i32* %84, %struct.SomExportEntry* %85, i64 %91, i64 2000)
  store i32 0, i32* %9, align 4
  br label %93

93:                                               ; preds = %171, %80
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 100
  br i1 %95, label %96, label %176

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.SomExportEntry, %struct.SomExportEntry* %99, i32 0, i32 4
  %101 = load i8, i8* %100, align 4
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %155

104:                                              ; preds = %96
  %105 = load %struct.objfile*, %struct.objfile** %3, align 8
  %106 = getelementptr inbounds %struct.objfile, %struct.objfile* %105, i32 0, i32 2
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.SomExportEntry, %struct.SomExportEntry* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %107, i64 %113
  %115 = call i32 @strlen(i8* %114)
  %116 = add nsw i32 %115, 1
  %117 = call i64 @obstack_alloc(i32* %106, i32 %116)
  %118 = inttoptr i64 %117 to i8*
  %119 = load %struct.objfile*, %struct.objfile** %3, align 8
  %120 = getelementptr inbounds %struct.objfile, %struct.objfile* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i8* %118, i8** %125, align 8
  %126 = load %struct.objfile*, %struct.objfile** %3, align 8
  %127 = getelementptr inbounds %struct.objfile, %struct.objfile* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.SomExportEntry, %struct.SomExportEntry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %134, i64 %140
  %142 = call i32 @strcpy(i8* %133, i8* %141)
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.SomExportEntry, %struct.SomExportEntry* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.objfile*, %struct.objfile** %3, align 8
  %149 = getelementptr inbounds %struct.objfile, %struct.objfile* %148, i32 0, i32 1
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i32 %147, i32* %154, align 8
  br label %170

155:                                              ; preds = %96
  %156 = load %struct.objfile*, %struct.objfile** %3, align 8
  %157 = getelementptr inbounds %struct.objfile, %struct.objfile* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  store i8* null, i8** %162, align 8
  %163 = load %struct.objfile*, %struct.objfile** %3, align 8
  %164 = getelementptr inbounds %struct.objfile, %struct.objfile* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  store i32 0, i32* %169, align 8
  br label %170

170:                                              ; preds = %155, %104
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %93

176:                                              ; preds = %93
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %75

180:                                              ; preds = %75
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %5, align 4
  %183 = icmp ult i32 %181, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %180
  %185 = load %struct.objfile*, %struct.objfile** %3, align 8
  %186 = getelementptr inbounds %struct.objfile, %struct.objfile* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 0
  %190 = load i32, i32* %4, align 4
  %191 = zext i32 %190 to i64
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 20
  %195 = add i64 %191, %194
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %11, align 4
  %198 = sub i32 %196, %197
  %199 = zext i32 %198 to i64
  %200 = mul i64 %199, 20
  %201 = call i32 (i32, i32*, ...) @bfd_get_section_contents(i32 %187, i32* %188, %struct.SomExportEntry* %189, i64 %195, i64 %200)
  br label %202

202:                                              ; preds = %184, %180
  store i32 0, i32* %9, align 4
  br label %203

203:                                              ; preds = %282, %202
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %207, label %287

207:                                              ; preds = %203
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 %209
  %211 = getelementptr inbounds %struct.SomExportEntry, %struct.SomExportEntry* %210, i32 0, i32 4
  %212 = load i8, i8* %211, align 4
  %213 = zext i8 %212 to i32
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %266

215:                                              ; preds = %207
  %216 = load %struct.objfile*, %struct.objfile** %3, align 8
  %217 = getelementptr inbounds %struct.objfile, %struct.objfile* %216, i32 0, i32 2
  %218 = load i8*, i8** %8, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.SomExportEntry, %struct.SomExportEntry* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8, i8* %218, i64 %224
  %226 = call i32 @strlen(i8* %225)
  %227 = add nsw i32 %226, 1
  %228 = call i64 @obstack_alloc(i32* %217, i32 %227)
  %229 = inttoptr i64 %228 to i8*
  %230 = load %struct.objfile*, %struct.objfile** %3, align 8
  %231 = getelementptr inbounds %struct.objfile, %struct.objfile* %230, i32 0, i32 1
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  store i8* %229, i8** %236, align 8
  %237 = load %struct.objfile*, %struct.objfile** %3, align 8
  %238 = getelementptr inbounds %struct.objfile, %struct.objfile* %237, i32 0, i32 1
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = load i8*, i8** %8, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 %247
  %249 = getelementptr inbounds %struct.SomExportEntry, %struct.SomExportEntry* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %245, i64 %251
  %253 = call i32 @strcpy(i8* %244, i8* %252)
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [100 x %struct.SomExportEntry], [100 x %struct.SomExportEntry]* %14, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.SomExportEntry, %struct.SomExportEntry* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.objfile*, %struct.objfile** %3, align 8
  %260 = getelementptr inbounds %struct.objfile, %struct.objfile* %259, i32 0, i32 1
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %260, align 8
  %262 = load i32, i32* %11, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  store i32 %258, i32* %265, align 8
  br label %281

266:                                              ; preds = %207
  %267 = load %struct.objfile*, %struct.objfile** %3, align 8
  %268 = getelementptr inbounds %struct.objfile, %struct.objfile* %267, i32 0, i32 1
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = load i32, i32* %11, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 0
  store i8* null, i8** %273, align 8
  %274 = load %struct.objfile*, %struct.objfile** %3, align 8
  %275 = getelementptr inbounds %struct.objfile, %struct.objfile* %274, i32 0, i32 1
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** %275, align 8
  %277 = load i32, i32* %11, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 1
  store i32 0, i32* %280, align 8
  br label %281

281:                                              ; preds = %266, %215
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %9, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %9, align 4
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %11, align 4
  br label %203

287:                                              ; preds = %203
  %288 = load i32, i32* %5, align 4
  %289 = load %struct.objfile*, %struct.objfile** %3, align 8
  %290 = getelementptr inbounds %struct.objfile, %struct.objfile* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load i8*, i8** %8, align 8
  %292 = call i32 @xfree(i8* %291)
  %293 = load i32, i32* %5, align 4
  store i32 %293, i32* %2, align 4
  br label %294

294:                                              ; preds = %287, %52, %44, %36, %25
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i32* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @bfd_get_section_contents(i32, i32*, ...) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
