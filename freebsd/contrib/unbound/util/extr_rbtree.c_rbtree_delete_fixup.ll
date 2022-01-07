; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rbtree.c_rbtree_delete_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rbtree.c_rbtree_delete_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@RBTREE_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@RED = common dso_local global i64 0, align 8
@BLACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @rbtree_delete_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbtree_delete_fixup(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i32 1, i32* %8, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = icmp eq %struct.TYPE_7__* %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %7, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  br label %22

22:                                               ; preds = %18, %14
  br label %23

23:                                               ; preds = %128, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %129

26:                                               ; preds = %23
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RBTREE_NULL, align 8
  %29 = icmp eq %struct.TYPE_7__* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %333

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = load i64, i64* @RED, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* @BLACK, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = icmp eq %struct.TYPE_7__* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = call i32 @rbtree_rotate_right(i32* %50, %struct.TYPE_7__* %51)
  br label %57

53:                                               ; preds = %37
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = call i32 @rbtree_rotate_left(i32* %54, %struct.TYPE_7__* %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = icmp eq %struct.TYPE_7__* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %7, align 8
  br label %71

67:                                               ; preds = %57
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %7, align 8
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71, %31
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @BLACK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %127

78:                                               ; preds = %72
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BLACK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %127

84:                                               ; preds = %78
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BLACK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %84
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BLACK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %92
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RBTREE_NULL, align 8
  %103 = icmp ne %struct.TYPE_7__* %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64, i64* @RED, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %5, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %6, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = icmp eq %struct.TYPE_7__* %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %7, align 8
  br label %126

122:                                              ; preds = %108
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %7, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %128

127:                                              ; preds = %92, %84, %78, %72
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %127, %126
  br label %23

129:                                              ; preds = %23
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @RED, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %169

135:                                              ; preds = %129
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @BLACK, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %169

141:                                              ; preds = %135
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @BLACK, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %141
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BLACK, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %149
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RBTREE_NULL, align 8
  %160 = icmp ne %struct.TYPE_7__* %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i64, i64* @RED, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %157
  %166 = load i64, i64* @BLACK, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  br label %333

169:                                              ; preds = %149, %141, %135, %129
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @RBTREE_NULL, align 8
  %172 = icmp ne %struct.TYPE_7__* %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @log_assert(i32 %173)
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %179 = icmp eq %struct.TYPE_7__* %177, %178
  br i1 %179, label %180, label %228

180:                                              ; preds = %169
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @BLACK, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %228

186:                                              ; preds = %180
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @RED, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %228

194:                                              ; preds = %186
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @BLACK, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %228

202:                                              ; preds = %194
  %203 = load i64, i64* @RED, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  %206 = load i64, i64* @BLACK, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  store i64 %206, i64* %210, align 8
  %211 = load i32*, i32** %4, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %213 = call i32 @rbtree_rotate_left(i32* %211, %struct.TYPE_7__* %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %218 = icmp eq %struct.TYPE_7__* %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %202
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  store %struct.TYPE_7__* %222, %struct.TYPE_7__** %7, align 8
  br label %227

223:                                              ; preds = %202
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  store %struct.TYPE_7__* %226, %struct.TYPE_7__** %7, align 8
  br label %227

227:                                              ; preds = %223, %219
  br label %283

228:                                              ; preds = %194, %186, %180, %169
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %233 = icmp eq %struct.TYPE_7__* %231, %232
  br i1 %233, label %234, label %282

234:                                              ; preds = %228
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @BLACK, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %282

240:                                              ; preds = %234
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @RED, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %282

248:                                              ; preds = %240
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @BLACK, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %282

256:                                              ; preds = %248
  %257 = load i64, i64* @RED, align 8
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  store i64 %257, i64* %259, align 8
  %260 = load i64, i64* @BLACK, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  store i64 %260, i64* %264, align 8
  %265 = load i32*, i32** %4, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %267 = call i32 @rbtree_rotate_right(i32* %265, %struct.TYPE_7__* %266)
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %269, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %272 = icmp eq %struct.TYPE_7__* %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %256
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  store %struct.TYPE_7__* %276, %struct.TYPE_7__** %7, align 8
  br label %281

277:                                              ; preds = %256
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %279, align 8
  store %struct.TYPE_7__* %280, %struct.TYPE_7__** %7, align 8
  br label %281

281:                                              ; preds = %277, %273
  br label %282

282:                                              ; preds = %281, %248, %240, %234, %228
  br label %283

283:                                              ; preds = %282, %227
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  store i64 %286, i64* %288, align 8
  %289 = load i64, i64* @BLACK, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  store i64 %289, i64* %291, align 8
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %296 = icmp eq %struct.TYPE_7__* %294, %295
  br i1 %296, label %297, label %315

297:                                              ; preds = %283
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @RED, align 8
  %304 = icmp eq i64 %302, %303
  %305 = zext i1 %304 to i32
  %306 = call i32 @log_assert(i32 %305)
  %307 = load i64, i64* @BLACK, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 2
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 0
  store i64 %307, i64* %311, align 8
  %312 = load i32*, i32** %4, align 8
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %314 = call i32 @rbtree_rotate_right(i32* %312, %struct.TYPE_7__* %313)
  br label %333

315:                                              ; preds = %283
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @RED, align 8
  %322 = icmp eq i64 %320, %321
  %323 = zext i1 %322 to i32
  %324 = call i32 @log_assert(i32 %323)
  %325 = load i64, i64* @BLACK, align 8
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  store i64 %325, i64* %329, align 8
  %330 = load i32*, i32** %4, align 8
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %332 = call i32 @rbtree_rotate_left(i32* %330, %struct.TYPE_7__* %331)
  br label %333

333:                                              ; preds = %30, %165, %315, %297
  ret void
}

declare dso_local i32 @rbtree_rotate_right(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @rbtree_rotate_left(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
