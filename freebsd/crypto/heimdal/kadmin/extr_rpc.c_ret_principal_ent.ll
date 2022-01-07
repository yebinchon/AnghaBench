; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_ret_principal_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_rpc.c_ret_principal_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_11__*)* @ret_principal_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ret_principal_ent(i32 %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = call i32 @memset(%struct.TYPE_11__* %13, i32 0, i32 96)
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 19
  %19 = call i32 @ret_principal_xdr(i32 %15, i32* %16, i32* %18)
  %20 = call i32 @CHECK(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @krb5_ret_uint32(i32* %21, i32* %7)
  %23 = call i32 @CHECK(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @krb5_ret_uint32(i32* %27, i32* %7)
  %29 = call i32 @CHECK(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @krb5_ret_uint32(i32* %33, i32* %7)
  %35 = call i32 @CHECK(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @krb5_ret_uint32(i32* %39, i32* %7)
  %41 = call i32 @CHECK(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @krb5_ret_uint32(i32* %45, i32* %7)
  %47 = call i32 @CHECK(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %3
  %51 = load i32, i32* %4, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 18
  %55 = call i32 @ret_principal_xdr(i32 %51, i32* %52, i32* %54)
  br label %56

56:                                               ; preds = %50, %3
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @krb5_ret_uint32(i32* %57, i32* %7)
  %59 = call i32 @CHECK(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @krb5_ret_uint32(i32* %63, i32* %7)
  %65 = call i32 @CHECK(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @krb5_ret_uint32(i32* %69, i32* %7)
  %71 = call i32 @CHECK(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @krb5_ret_uint32(i32* %75, i32* %7)
  %77 = call i32 @CHECK(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 17
  %84 = call i32 @ret_string_xdr(i32* %81, i32* %83)
  %85 = call i32 @CHECK(i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @krb5_ret_uint32(i32* %86, i32* %7)
  %88 = call i32 @CHECK(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @krb5_ret_uint32(i32* %92, i32* %7)
  %94 = call i32 @CHECK(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @krb5_ret_uint32(i32* %98, i32* %7)
  %100 = call i32 @CHECK(i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 10
  store i32 %101, i32* %103, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @krb5_ret_uint32(i32* %104, i32* %7)
  %106 = call i32 @CHECK(i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 11
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @krb5_ret_uint32(i32* %110, i32* %7)
  %112 = call i32 @CHECK(i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 12
  store i32 %113, i32* %115, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @krb5_ret_uint32(i32* %116, i32* %7)
  %118 = call i32 @CHECK(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 13
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @krb5_ret_uint32(i32* %122, i32* %7)
  %124 = call i32 @CHECK(i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 14
  store i32 %125, i32* %127, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @krb5_ret_uint32(i32* %128, i32* %7)
  %130 = call i32 @CHECK(i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %186

133:                                              ; preds = %56
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 16
  store %struct.TYPE_9__** %135, %struct.TYPE_9__*** %10, align 8
  store i64 0, i64* %11, align 8
  br label %136

136:                                              ; preds = %133, %143
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @krb5_ret_uint32(i32* %137, i32* %7)
  %139 = call i32 @CHECK(i32 %138)
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %177

143:                                              ; preds = %136
  %144 = call i8* @calloc(i32 1, i32 24)
  %145 = bitcast i8* %144 to %struct.TYPE_9__*
  %146 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %146, align 8
  %147 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = icmp ne %struct.TYPE_9__* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i32 @INSIST(i32 %150)
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @krb5_ret_uint32(i32* %152, i32* %7)
  %154 = call i32 @CHECK(i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @ret_data_xdr(i32* %159, %struct.TYPE_10__* %12)
  %161 = call i32 @CHECK(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 3
  store i32 %163, i32* %166, align 4
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 8
  %172 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store %struct.TYPE_9__** %174, %struct.TYPE_9__*** %10, align 8
  %175 = load i64, i64* %11, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %11, align 8
  br label %136

177:                                              ; preds = %142
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 14
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %11, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @INSIST(i32 %184)
  br label %193

186:                                              ; preds = %56
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 14
  %189 = load i32, i32* %188, align 8
  %190 = icmp eq i32 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @INSIST(i32 %191)
  br label %193

193:                                              ; preds = %186, %177
  %194 = load i32*, i32** %5, align 8
  %195 = call i32 @krb5_ret_uint32(i32* %194, i32* %8)
  %196 = call i32 @CHECK(i32 %195)
  %197 = load i32, i32* %8, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 13
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %197, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @INSIST(i32 %202)
  %204 = load i32, i32* %8, align 4
  %205 = call i8* @calloc(i32 %204, i32 8)
  %206 = bitcast i8* %205 to %struct.TYPE_8__*
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 15
  store %struct.TYPE_8__* %206, %struct.TYPE_8__** %208, align 8
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 15
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = icmp ne %struct.TYPE_8__* %211, null
  %213 = zext i1 %212 to i32
  %214 = call i32 @INSIST(i32 %213)
  store i64 0, i64* %9, align 8
  br label %215

215:                                              ; preds = %258, %193
  %216 = load i64, i64* %9, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = icmp ult i64 %216, %218
  br i1 %219, label %220, label %261

220:                                              ; preds = %215
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 @krb5_ret_uint32(i32* %221, i32* %7)
  %223 = call i32 @CHECK(i32 %222)
  %224 = load i32, i32* %7, align 4
  %225 = icmp sgt i32 %224, 1
  %226 = zext i1 %225 to i32
  %227 = call i32 @INSIST(i32 %226)
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 @krb5_ret_uint32(i32* %228, i32* %7)
  %230 = call i32 @CHECK(i32 %229)
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @krb5_ret_uint32(i32* %234, i32* %7)
  %236 = call i32 @CHECK(i32 %235)
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 15
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %237, i32* %245, align 4
  %246 = load i32*, i32** %5, align 8
  %247 = call i32 @krb5_ret_uint32(i32* %246, i32* %7)
  %248 = call i32 @CHECK(i32 %247)
  %249 = load i32, i32* %7, align 4
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 15
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = load i64, i64* %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 %249, i32* %257, align 4
  br label %258

258:                                              ; preds = %220
  %259 = load i64, i64* %9, align 8
  %260 = add i64 %259, 1
  store i64 %260, i64* %9, align 8
  br label %215

261:                                              ; preds = %215
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @ret_principal_xdr(i32, i32*, i32*) #1

declare dso_local i32 @krb5_ret_uint32(i32*, i32*) #1

declare dso_local i32 @ret_string_xdr(i32*, i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @ret_data_xdr(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
