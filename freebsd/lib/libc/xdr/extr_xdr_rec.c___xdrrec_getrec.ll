; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_rec.c___xdrrec_getrec.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/xdr/extr_xdr_rec.c___xdrrec_getrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 (i32, i8*, i32)*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i32 }

@XPRT_DIED = common dso_local global i32 0, align 4
@XPRT_IDLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@XPRT_MOREREQS = common dso_local global i32 0, align 4
@LAST_FRAG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__xdrrec_getrec(%struct.TYPE_5__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 13
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %149, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 4, %31
  %33 = call i64 %22(i32 %25, i8* %28, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %19
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @XPRT_DIED, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @XPRT_IDLE, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i8*, i8** @FALSE, align 8
  store i8* %46, i8** %4, align 8
  br label %255

47:                                               ; preds = %19
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @XPRT_DIED, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** @FALSE, align 8
  store i8* %53, i8** %4, align 8
  br label %255

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %55
  store i8* %59, i8** %57, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 4
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = load i32, i32* @XPRT_MOREREQS, align 4
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i8*, i8** @FALSE, align 8
  store i8* %75, i8** %4, align 8
  br label %255

76:                                               ; preds = %54
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ntohl(i32 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @LAST_FRAG, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %76
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %97, %91, %76
  %108 = load i32, i32* @XPRT_DIED, align 4
  %109 = load i32*, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i8*, i8** @FALSE, align 8
  store i8* %110, i8** %4, align 8
  br label %255

111:                                              ; preds = %97
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %111
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @realloc_stream(%struct.TYPE_6__* %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %111
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @LAST_FRAG, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load i32, i32* @LAST_FRAG, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i8*, i8** @TRUE, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 12
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %137, %130
  %148 = load i8*, i8** @FALSE, align 8
  store i8* %148, i8** %7, align 8
  br label %149

149:                                              ; preds = %147, %3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %151, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 14
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 7
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %158, i64 %162
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %166, %169
  %171 = call i64 %152(i32 %155, i8* %163, i32 %170)
  store i64 %171, i64* %9, align 8
  %172 = load i64, i64* %9, align 8
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %149
  %175 = load i32, i32* @XPRT_DIED, align 4
  %176 = load i32*, i32** %6, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i8*, i8** @FALSE, align 8
  store i8* %177, i8** %4, align 8
  br label %255

178:                                              ; preds = %149
  %179 = load i64, i64* %9, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load i8*, i8** %7, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* @XPRT_DIED, align 4
  br label %188

186:                                              ; preds = %181
  %187 = load i32, i32* @XPRT_IDLE, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %190 = load i32*, i32** %6, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i8*, i8** @FALSE, align 8
  store i8* %191, i8** %4, align 8
  br label %255

192:                                              ; preds = %178
  %193 = load i64, i64* %9, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %193
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 8
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %202, %205
  br i1 %206, label %207, label %251

207:                                              ; preds = %192
  %208 = load i8*, i8** @FALSE, align 8
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 13
  store i8* %208, i8** %210, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 3
  %213 = bitcast i32* %212 to i8*
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  store i32 0, i32* %217, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 12
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %250

222:                                              ; preds = %207
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 9
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 7
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %230, i64 %234
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 10
  store i8* %235, i8** %237, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 7
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 11
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 8
  store i32 0, i32* %244, align 8
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 5
  store i32 0, i32* %246, align 4
  %247 = load i32, i32* @XPRT_MOREREQS, align 4
  %248 = load i32*, i32** %6, align 8
  store i32 %247, i32* %248, align 4
  %249 = load i8*, i8** @TRUE, align 8
  store i8* %249, i8** %4, align 8
  br label %255

250:                                              ; preds = %207
  br label %251

251:                                              ; preds = %250, %192
  %252 = load i32, i32* @XPRT_MOREREQS, align 4
  %253 = load i32*, i32** %6, align 8
  store i32 %252, i32* %253, align 4
  %254 = load i8*, i8** @FALSE, align 8
  store i8* %254, i8** %4, align 8
  br label %255

255:                                              ; preds = %251, %222, %188, %174, %107, %72, %50, %43
  %256 = load i8*, i8** %4, align 8
  ret i8* %256
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @realloc_stream(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
