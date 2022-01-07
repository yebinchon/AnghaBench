; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_delete_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_rbtree.c_ldns_rbtree_delete_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }

@LDNS_RBTREE_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@RED = common dso_local global i64 0, align 8
@BLACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_7__*)* @ldns_rbtree_delete_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ldns_rbtree_delete_fixup(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
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
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @LDNS_RBTREE_NULL, align 8
  %29 = icmp eq %struct.TYPE_7__* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %310

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
  %52 = call i32 @ldns_rbtree_rotate_right(i32* %50, %struct.TYPE_7__* %51)
  br label %57

53:                                               ; preds = %37
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = call i32 @ldns_rbtree_rotate_left(i32* %54, %struct.TYPE_7__* %55)
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
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** @LDNS_RBTREE_NULL, align 8
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
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** @LDNS_RBTREE_NULL, align 8
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
  br label %310

169:                                              ; preds = %149, %141, %135, %129
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = icmp eq %struct.TYPE_7__* %172, %173
  br i1 %174, label %175, label %223

175:                                              ; preds = %169
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @BLACK, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %223

181:                                              ; preds = %175
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @RED, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %223

189:                                              ; preds = %181
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @BLACK, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %189
  %198 = load i64, i64* @RED, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* @BLACK, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  store i64 %201, i64* %205, align 8
  %206 = load i32*, i32** %4, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %208 = call i32 @ldns_rbtree_rotate_left(i32* %206, %struct.TYPE_7__* %207)
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %213 = icmp eq %struct.TYPE_7__* %211, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %197
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  store %struct.TYPE_7__* %217, %struct.TYPE_7__** %7, align 8
  br label %222

218:                                              ; preds = %197
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  store %struct.TYPE_7__* %221, %struct.TYPE_7__** %7, align 8
  br label %222

222:                                              ; preds = %218, %214
  br label %278

223:                                              ; preds = %189, %181, %175, %169
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %228 = icmp eq %struct.TYPE_7__* %226, %227
  br i1 %228, label %229, label %277

229:                                              ; preds = %223
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @BLACK, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %277

235:                                              ; preds = %229
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @RED, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %277

243:                                              ; preds = %235
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @BLACK, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %277

251:                                              ; preds = %243
  %252 = load i64, i64* @RED, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  %255 = load i64, i64* @BLACK, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  store i64 %255, i64* %259, align 8
  %260 = load i32*, i32** %4, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %262 = call i32 @ldns_rbtree_rotate_right(i32* %260, %struct.TYPE_7__* %261)
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %267 = icmp eq %struct.TYPE_7__* %265, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %251
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %270, align 8
  store %struct.TYPE_7__* %271, %struct.TYPE_7__** %7, align 8
  br label %276

272:                                              ; preds = %251
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %274, align 8
  store %struct.TYPE_7__* %275, %struct.TYPE_7__** %7, align 8
  br label %276

276:                                              ; preds = %272, %268
  br label %277

277:                                              ; preds = %276, %243, %235, %229, %223
  br label %278

278:                                              ; preds = %277, %222
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  store i64 %281, i64* %283, align 8
  %284 = load i64, i64* @BLACK, align 8
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %288, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %291 = icmp eq %struct.TYPE_7__* %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %278
  %293 = load i64, i64* @BLACK, align 8
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 2
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  store i64 %293, i64* %297, align 8
  %298 = load i32*, i32** %4, align 8
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %300 = call i32 @ldns_rbtree_rotate_right(i32* %298, %struct.TYPE_7__* %299)
  br label %310

301:                                              ; preds = %278
  %302 = load i64, i64* @BLACK, align 8
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  store i64 %302, i64* %306, align 8
  %307 = load i32*, i32** %4, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %309 = call i32 @ldns_rbtree_rotate_left(i32* %307, %struct.TYPE_7__* %308)
  br label %310

310:                                              ; preds = %30, %165, %301, %292
  ret void
}

declare dso_local i32 @ldns_rbtree_rotate_right(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ldns_rbtree_rotate_left(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
