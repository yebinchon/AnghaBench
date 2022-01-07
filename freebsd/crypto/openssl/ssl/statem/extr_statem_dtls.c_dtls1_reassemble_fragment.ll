; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_reassemble_fragment.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_reassemble_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_23__*, i32, i32*, i8*, i32, i32, i64*)* }
%struct.hm_header_st = type { i64, i64, i64, i32 }
%struct.TYPE_22__ = type { i8*, i32*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_21__ = type { i64 }

@DTLS1_HM_FRAGMENT_RETRY = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.hm_header_st*)* @dtls1_reassemble_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtls1_reassemble_fragment(%struct.TYPE_23__* %0, %struct.hm_header_st* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.hm_header_st*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [256 x i8], align 16
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.hm_header_st* %1, %struct.hm_header_st** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  store i32 -1, i32* %8, align 4
  %14 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %15 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %18 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %23 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %2
  %27 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %28 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = call i64 @dtls1_max_handshake_message_len(%struct.TYPE_23__* %30)
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %2
  br label %231

34:                                               ; preds = %26
  %35 = load i64, i64* %11, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @DTLS1_HM_FRAGMENT_RETRY, align 4
  store i32 %38, i32* %3, align 4
  br label %238

39:                                               ; preds = %34
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %41 = call i32 @memset(i8* %40, i32 0, i32 8)
  %42 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %43 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = ashr i32 %44, 8
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 6
  store i8 %46, i8* %47, align 1
  %48 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %49 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = trunc i32 %50 to i8
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 7
  store i8 %51, i8* %52, align 1
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %59 = call %struct.TYPE_21__* @pqueue_find(i32 %57, i8* %58)
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %7, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %61 = icmp eq %struct.TYPE_21__* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %39
  %63 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %64 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.TYPE_22__* @dtls1_hm_fragment_new(i64 %65, i32 1)
  store %struct.TYPE_22__* %66, %struct.TYPE_22__** %6, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %68 = icmp eq %struct.TYPE_22__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %231

70:                                               ; preds = %62
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  %73 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %74 = call i32 @memcpy(%struct.TYPE_18__* %72, %struct.hm_header_st* %73, i32 32)
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  br label %100

85:                                               ; preds = %39
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %6, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %95 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  br label %231

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %136

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %130, %105
  %107 = load i64, i64* %11, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %106
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_23__*, i32, i32*, i8*, i32, i32, i64*)*, i32 (%struct.TYPE_23__*, i32, i32*, i8*, i32, i32, i64*)** %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %117 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %118 = load i64, i64* %11, align 8
  %119 = icmp ugt i64 %118, 256
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %123

121:                                              ; preds = %109
  %122 = load i64, i64* %11, align 8
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi i64 [ 256, %120 ], [ %122, %121 ]
  %125 = trunc i64 %124 to i32
  %126 = call i32 %114(%struct.TYPE_23__* %115, i32 %116, i32* null, i8* %117, i32 %125, i32 0, i64* %12)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %231

130:                                              ; preds = %123
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %11, align 8
  %133 = sub i64 %132, %131
  store i64 %133, i64* %11, align 8
  br label %106

134:                                              ; preds = %106
  %135 = load i32, i32* @DTLS1_HM_FRAGMENT_RETRY, align 4
  store i32 %135, i32* %3, align 4
  br label %238

136:                                              ; preds = %100
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_23__*, i32, i32*, i8*, i32, i32, i64*)*, i32 (%struct.TYPE_23__*, i32, i32*, i8*, i32, i32, i64*)** %140, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %143 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %148 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i64, i64* %11, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 %141(%struct.TYPE_23__* %142, i32 %143, i32* null, i8* %150, i32 %152, i32 0, i64* %12)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp sle i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %136
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %11, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %136
  store i32 -1, i32* %8, align 4
  br label %161

161:                                              ; preds = %160, %156
  %162 = load i32, i32* %8, align 4
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %231

165:                                              ; preds = %161
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %170 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %173 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %11, align 8
  %176 = add i64 %174, %175
  %177 = call i32 @RSMBLY_BITMASK_MARK(i32* %168, i64 %171, i64 %176)
  %178 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %179 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  %182 = zext i1 %181 to i32
  %183 = call i32 @ossl_assert(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %165
  br label %231

186:                                              ; preds = %165
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %191 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @RSMBLY_BITMASK_IS_COMPLETE(i32* %189, i64 %192, i32 %193)
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %186
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @OPENSSL_free(i32* %200)
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  store i32* null, i32** %203, align 8
  br label %204

204:                                              ; preds = %197, %186
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %206 = icmp eq %struct.TYPE_21__* %205, null
  br i1 %206, label %207, label %229

207:                                              ; preds = %204
  %208 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %210 = call %struct.TYPE_21__* @pitem_new(i8* %208, %struct.TYPE_22__* %209)
  store %struct.TYPE_21__* %210, %struct.TYPE_21__** %7, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %212 = icmp eq %struct.TYPE_21__* %211, null
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  store i32 -1, i32* %8, align 4
  br label %231

214:                                              ; preds = %207
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %221 = call %struct.TYPE_21__* @pqueue_insert(i32 %219, %struct.TYPE_21__* %220)
  store %struct.TYPE_21__* %221, %struct.TYPE_21__** %7, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %223 = icmp ne %struct.TYPE_21__* %222, null
  %224 = zext i1 %223 to i32
  %225 = call i32 @ossl_assert(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %214
  br label %231

228:                                              ; preds = %214
  br label %229

229:                                              ; preds = %228, %204
  %230 = load i32, i32* @DTLS1_HM_FRAGMENT_RETRY, align 4
  store i32 %230, i32* %3, align 4
  br label %238

231:                                              ; preds = %227, %213, %185, %164, %129, %98, %69, %33
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %233 = icmp eq %struct.TYPE_21__* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %236 = call i32 @dtls1_hm_fragment_free(%struct.TYPE_22__* %235)
  br label %237

237:                                              ; preds = %234, %231
  store i32 -1, i32* %3, align 4
  br label %238

238:                                              ; preds = %237, %229, %134, %37
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i64 @dtls1_max_handshake_message_len(%struct.TYPE_23__*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @pqueue_find(i32, i8*) #1

declare dso_local %struct.TYPE_22__* @dtls1_hm_fragment_new(i64, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.hm_header_st*, i32) #1

declare dso_local i32 @RSMBLY_BITMASK_MARK(i32*, i64, i64) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @RSMBLY_BITMASK_IS_COMPLETE(i32*, i64, i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local %struct.TYPE_21__* @pitem_new(i8*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @pqueue_insert(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @dtls1_hm_fragment_free(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
