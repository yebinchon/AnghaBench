; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c___collate_load_tables_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c___collate_load_tables_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlocale_collate = type { i32, i32*, i32*, i32**, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"C.\00", align 1
@_LDP_CACHE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"%s/%s/LC_COLLATE\00", align 1
@_PathLocale = common dso_local global i32 0, align 4
@_LDP_ERROR = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@COLLATE_STR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@COLLATE_VERSION = common dso_local global i8* null, align 8
@COLL_WEIGHTS_MAX = common dso_local global i32 0, align 4
@UCHAR_MAX = common dso_local global i32 0, align 4
@_LDP_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__collate_load_tables_l(i8* %0, %struct.xlocale_collate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xlocale_collate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.xlocale_collate* %1, %struct.xlocale_collate** %5, align 8
  %15 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %16 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20, %2
  %29 = load i32, i32* @_LDP_CACHE, align 4
  store i32 %29, i32* %3, align 4
  br label %277

30:                                               ; preds = %24
  %31 = load i32, i32* @_PathLocale, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %31, i8* %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %277

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @O_RDONLY, align 4
  %40 = call i32 @_open(i8* %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %277

46:                                               ; preds = %37
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @_fstat(i32 %49, %struct.stat* %13)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @_close(i32 %53)
  %55 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %55, i32* %3, align 4
  br label %277

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* @COLLATE_STR_LEN, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @_close(i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* @errno, align 4
  %68 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %68, i32* %3, align 4
  br label %277

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PROT_READ, align 4
  %73 = load i32, i32* @MAP_PRIVATE, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i8* @mmap(i32* null, i32 %71, i32 %72, i32 %73, i32 %74, i32 0)
  store i8* %75, i8** %11, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @_close(i32 %76)
  %78 = load i8*, i8** %11, align 8
  store i8* %78, i8** %10, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %81, i32* %3, align 4
  br label %277

82:                                               ; preds = %69
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** @COLLATE_VERSION, align 8
  %85 = load i32, i32* @COLLATE_STR_LEN, align 4
  %86 = call i64 @strncmp(i8* %83, i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @munmap(i8* %89, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  store i32 %93, i32* @errno, align 4
  %94 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %94, i32* %3, align 4
  br label %277

95:                                               ; preds = %82
  %96 = load i32, i32* @COLLATE_STR_LEN, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = bitcast i8* %100 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %101, %struct.TYPE_2__** %12, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 24
  store i8* %103, i8** %10, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %106, 1
  br i1 %107, label %119, label %108

108:                                              ; preds = %95
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @COLL_WEIGHTS_MAX, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114, %108, %95
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @munmap(i8* %120, i32 %122)
  %124 = load i32, i32* @EINVAL, align 4
  store i32 %124, i32* @errno, align 4
  %125 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %125, i32* %3, align 4
  br label %277

126:                                              ; preds = %114
  %127 = load i32, i32* @UCHAR_MAX, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = mul i64 4, %129
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 4, %132
  %134 = add i64 %130, %133
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 4, %138
  %140 = add i64 %134, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %162, %126
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %142
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 4, %156
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = add i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %148
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %142

165:                                              ; preds = %142
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = load i8*, i8** %10, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sub nsw i64 %170, %175
  %177 = icmp ne i64 %167, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %165
  %179 = load i8*, i8** %11, align 8
  %180 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @munmap(i8* %179, i32 %181)
  %183 = load i32, i32* @EINVAL, align 4
  store i32 %183, i32* @errno, align 4
  %184 = load i32, i32* @_LDP_ERROR, align 4
  store i32 %184, i32* %3, align 4
  br label %277

185:                                              ; preds = %165
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %187 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %188 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %187, i32 0, i32 5
  store %struct.TYPE_2__* %186, %struct.TYPE_2__** %188, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %191 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %190, i32 0, i32 4
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* @UCHAR_MAX, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = mul i64 4, %194
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 %195
  store i8* %197, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %241, %185
  %199 = load i32, i32* %8, align 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %244

204:                                              ; preds = %198
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %204
  %214 = load i8*, i8** %10, align 8
  %215 = bitcast i8* %214 to i32*
  %216 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %217 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %216, i32 0, i32 3
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  store i32* %215, i32** %221, align 8
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = mul i64 %229, 4
  %231 = load i8*, i8** %10, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 %230
  store i8* %232, i8** %10, align 8
  br label %240

233:                                              ; preds = %204
  %234 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %235 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %234, i32 0, i32 3
  %236 = load i32**, i32*** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  store i32* null, i32** %239, align 8
  br label %240

240:                                              ; preds = %233, %213
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %198

244:                                              ; preds = %198
  %245 = load i32, i32* %7, align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %244
  %248 = load i8*, i8** %10, align 8
  %249 = bitcast i8* %248 to i32*
  %250 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %251 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %250, i32 0, i32 2
  store i32* %249, i32** %251, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = mul i64 %253, 4
  %255 = load i8*, i8** %10, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 %254
  store i8* %256, i8** %10, align 8
  br label %260

257:                                              ; preds = %244
  %258 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %259 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %258, i32 0, i32 2
  store i32* null, i32** %259, align 8
  br label %260

260:                                              ; preds = %257, %247
  %261 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load i8*, i8** %10, align 8
  %267 = bitcast i8* %266 to i32*
  %268 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %269 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %268, i32 0, i32 1
  store i32* %267, i32** %269, align 8
  br label %273

270:                                              ; preds = %260
  %271 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %272 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %271, i32 0, i32 1
  store i32* null, i32** %272, align 8
  br label %273

273:                                              ; preds = %270, %265
  %274 = load %struct.xlocale_collate*, %struct.xlocale_collate** %5, align 8
  %275 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %274, i32 0, i32 0
  store i32 0, i32* %275, align 8
  %276 = load i32, i32* @_LDP_LOADED, align 4
  store i32 %276, i32* %3, align 4
  br label %277

277:                                              ; preds = %273, %178, %119, %88, %80, %64, %52, %42, %35, %28
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @_open(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @_fstat(i32, %struct.stat*) #1

declare dso_local i32 @_close(i32) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
