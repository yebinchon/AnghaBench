; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rrecv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i32, i64, i32, i64, i64, i64, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@idm = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@rs_opening = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@rs_conn_have_rdata = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@rs_readable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrecv(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsocket*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.rsocket* @idm_at(i32* @idm, i32 %16)
  store %struct.rsocket* %17, %struct.rsocket** %10, align 8
  %18 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %19 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SOCK_DGRAM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 7
  %26 = call i32 @fastlock_acquire(i32* %25)
  %27 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ds_recvfrom(%struct.rsocket* %27, i8* %28, i64 %29, i32 %30, i32* null, i32* null)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %33 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %32, i32 0, i32 7
  %34 = call i32 @fastlock_release(i32* %33)
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %5, align 4
  br label %255

36:                                               ; preds = %4
  %37 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @rs_opening, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %45 = call i32 @rs_do_connect(%struct.rsocket* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EINPROGRESS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* @EAGAIN, align 8
  store i64 %53, i64* @errno, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %5, align 4
  br label %255

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %36
  %58 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %59 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %58, i32 0, i32 7
  %60 = call i32 @fastlock_acquire(i32* %59)
  br label %61

61:                                               ; preds = %233, %57
  %62 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %63 = call i64 @rs_have_rdata(%struct.rsocket* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %67 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @rs_nonblocking(%struct.rsocket* %67, i32 %68)
  %70 = load i32, i32* @rs_conn_have_rdata, align 4
  %71 = call i32 @rs_get_comp(%struct.rsocket* %66, i32 %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %235

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %61
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @MSG_PEEK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @rs_peek(%struct.rsocket* %83, i8* %84, i64 %85)
  %87 = sub i64 %82, %86
  store i64 %87, i64* %11, align 8
  br label %235

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %213, %88
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %94 = call i64 @rs_have_rdata(%struct.rsocket* %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i1 [ false, %89 ], [ %95, %92 ]
  br i1 %97, label %98, label %217

98:                                               ; preds = %96
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %101 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %100, i32 0, i32 9
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %104 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %99, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %98
  %111 = load i64, i64* %11, align 8
  store i64 %111, i64* %13, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %114 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %113, i32 0, i32 9
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %117 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %121, %112
  store i64 %122, i64* %120, align 8
  br label %151

123:                                              ; preds = %98
  %124 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %125 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %129 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %128, i32 0, i32 9
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %132 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %13, align 8
  %137 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %138 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %142 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = icmp eq i64 %140, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %123
  %148 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %149 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  br label %150

150:                                              ; preds = %147, %123
  br label %151

151:                                              ; preds = %150, %110
  %152 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %153 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %156 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %154, %157
  store i64 %158, i64* %12, align 8
  %159 = load i64, i64* %13, align 8
  %160 = load i64, i64* %12, align 8
  %161 = icmp ugt i64 %159, %160
  br i1 %161, label %162, label %189

162:                                              ; preds = %151
  %163 = load i8*, i8** %7, align 8
  %164 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %165 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %164, i32 0, i32 8
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %168 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i64, i64* %12, align 8
  %172 = call i32 @memcpy(i8* %163, i32* %170, i64 %171)
  %173 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %174 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %173, i32 0, i32 5
  store i64 0, i64* %174, align 8
  %175 = load i64, i64* %12, align 8
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr i8, i8* %176, i64 %175
  store i8* %177, i8** %7, align 8
  %178 = load i64, i64* %12, align 8
  %179 = load i64, i64* %13, align 8
  %180 = sub i64 %179, %178
  store i64 %180, i64* %13, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %11, align 8
  %183 = sub i64 %182, %181
  store i64 %183, i64* %11, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %186 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %187, %184
  store i64 %188, i64* %186, align 8
  br label %189

189:                                              ; preds = %162, %151
  %190 = load i8*, i8** %7, align 8
  %191 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %192 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %191, i32 0, i32 8
  %193 = load i32*, i32** %192, align 8
  %194 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %195 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %194, i32 0, i32 5
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  %198 = load i64, i64* %13, align 8
  %199 = call i32 @memcpy(i8* %190, i32* %197, i64 %198)
  %200 = load i64, i64* %13, align 8
  %201 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %202 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = add i64 %203, %200
  store i64 %204, i64* %202, align 8
  %205 = load i64, i64* %13, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = getelementptr i8, i8* %206, i64 %205
  store i8* %207, i8** %7, align 8
  %208 = load i64, i64* %13, align 8
  %209 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %210 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, %208
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %189
  %214 = load i64, i64* %13, align 8
  %215 = load i64, i64* %11, align 8
  %216 = sub i64 %215, %214
  store i64 %216, i64* %11, align 8
  br label %89

217:                                              ; preds = %96
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %11, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @MSG_WAITALL, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %221
  %227 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %228 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @rs_readable, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br label %233

233:                                              ; preds = %226, %221, %218
  %234 = phi i1 [ false, %221 ], [ false, %218 ], [ %232, %226 ]
  br i1 %234, label %61, label %235

235:                                              ; preds = %233, %81, %74
  %236 = load %struct.rsocket*, %struct.rsocket** %10, align 8
  %237 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %236, i32 0, i32 7
  %238 = call i32 @fastlock_release(i32* %237)
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %235
  %242 = load i64, i64* %11, align 8
  %243 = load i64, i64* %8, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %241
  %246 = load i32, i32* %14, align 4
  %247 = sext i32 %246 to i64
  br label %252

248:                                              ; preds = %241, %235
  %249 = load i64, i64* %8, align 8
  %250 = load i64, i64* %11, align 8
  %251 = sub i64 %249, %250
  br label %252

252:                                              ; preds = %248, %245
  %253 = phi i64 [ %247, %245 ], [ %251, %248 ]
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %252, %54, %23
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local %struct.rsocket* @idm_at(i32*, i32) #1

declare dso_local i32 @fastlock_acquire(i32*) #1

declare dso_local i32 @ds_recvfrom(%struct.rsocket*, i8*, i64, i32, i32*, i32*) #1

declare dso_local i32 @fastlock_release(i32*) #1

declare dso_local i32 @rs_do_connect(%struct.rsocket*) #1

declare dso_local i64 @rs_have_rdata(%struct.rsocket*) #1

declare dso_local i32 @rs_get_comp(%struct.rsocket*, i32, i32) #1

declare dso_local i32 @rs_nonblocking(%struct.rsocket*, i32) #1

declare dso_local i64 @rs_peek(%struct.rsocket*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
