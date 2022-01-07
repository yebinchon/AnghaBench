; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/talkd/extr_announce.c_print_mesg.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/talkd/extr_announce.c_print_mesg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.timeval = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32 }
%struct.iovec = type { i8*, i32 }

@N_LINES = common dso_local global i32 0, align 4
@N_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Message from Talk_Daemon@%s at %d:%02d on %d/%.2d/%.2d ...\00", align 1
@hostname = common dso_local global i8* null, align 8
@VIS_CSTYLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"talk: connection requested by %s@%s\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"talk: respond with:  talk %s@%s\00", align 1
@RING_WAIT = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_mesg(i8* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %24 = load i32, i32* @N_LINES, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* @N_CHARS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = mul nuw i64 %25, %27
  %30 = alloca i8, i64 %29, align 16
  store i64 %25, i64* %13, align 8
  store i64 %27, i64* %14, align 8
  %31 = load i32, i32* @N_LINES, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %34 = load i32, i32* @N_LINES, align 4
  %35 = load i32, i32* @N_CHARS, align 4
  %36 = mul nsw i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %16, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %39 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  %42 = call %struct.tm* @localtime(i32* %9)
  store %struct.tm* %42, %struct.tm** %10, align 8
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, %27
  %46 = getelementptr inbounds i8, i8* %30, i64 %45
  %47 = load i32, i32* @N_CHARS, align 4
  %48 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, %27
  %52 = getelementptr inbounds i8, i8* %30, i64 %51
  %53 = call i32 @strlen(i8* %52)
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %33, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %22, align 4
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %33, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @max(i32 %57, i32 %61)
  store i32 %62, i32* %22, align 4
  %63 = load i32, i32* %20, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, %27
  %68 = getelementptr inbounds i8, i8* %30, i64 %67
  %69 = load i32, i32* @N_CHARS, align 4
  %70 = load i8*, i8** @hostname, align 8
  %71 = load %struct.tm*, %struct.tm** %10, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tm*, %struct.tm** %10, align 8
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.tm*, %struct.tm** %10, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1900
  %81 = load %struct.tm*, %struct.tm** %10, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  %85 = load %struct.tm*, %struct.tm** %10, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 %69, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %70, i32 %73, i32 %76, i32 %80, i32 %84, i32 %87)
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, %27
  %92 = getelementptr inbounds i8, i8* %30, i64 %91
  %93 = call i32 @strlen(i8* %92)
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %33, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %33, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @max(i32 %97, i32 %101)
  store i32 %102, i32* %22, align 4
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %20, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = mul nsw i32 %108, 4
  %110 = add nsw i32 %109, 1
  %111 = call i8* @malloc(i32 %110)
  store i8* %111, i8** %19, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* @VIS_CSTYLE, align 4
  %117 = call i32 @strvis(i8* %112, i8* %115, i32 %116)
  %118 = load i32, i32* %20, align 4
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %119, %27
  %121 = getelementptr inbounds i8, i8* %30, i64 %120
  %122 = load i32, i32* @N_CHARS, align 4
  %123 = load i8*, i8** %19, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %121, i32 %122, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %123, i8* %124)
  %126 = load i32, i32* %20, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, %27
  %129 = getelementptr inbounds i8, i8* %30, i64 %128
  %130 = call i32 @strlen(i8* %129)
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %33, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %20, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %33, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @max(i32 %134, i32 %138)
  store i32 %139, i32* %22, align 4
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %143, %27
  %145 = getelementptr inbounds i8, i8* %30, i64 %144
  %146 = load i32, i32* @N_CHARS, align 4
  %147 = load i8*, i8** %19, align 8
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %145, i32 %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %147, i8* %148)
  %150 = load i32, i32* %20, align 4
  %151 = sext i32 %150 to i64
  %152 = mul nsw i64 %151, %27
  %153 = getelementptr inbounds i8, i8* %30, i64 %152
  %154 = call i32 @strlen(i8* %153)
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %33, i64 %156
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %33, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @max(i32 %158, i32 %162)
  store i32 %163, i32* %22, align 4
  %164 = load i32, i32* %20, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = mul nsw i64 %167, %27
  %169 = getelementptr inbounds i8, i8* %30, i64 %168
  %170 = load i32, i32* @N_CHARS, align 4
  %171 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %169, i32 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, %27
  %175 = getelementptr inbounds i8, i8* %30, i64 %174
  %176 = call i32 @strlen(i8* %175)
  %177 = load i32, i32* %20, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %33, i64 %178
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %33, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @max(i32 %180, i32 %184)
  store i32 %185, i32* %22, align 4
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %20, align 4
  store i8* %38, i8** %17, align 8
  %188 = load i8*, i8** %17, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %17, align 8
  store i8 7, i8* %188, align 1
  %190 = load i8*, i8** %17, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %17, align 8
  store i8 13, i8* %190, align 1
  %192 = load i8*, i8** %17, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %17, align 8
  store i8 10, i8* %192, align 1
  store i32 0, i32* %20, align 4
  br label %194

194:                                              ; preds = %235, %3
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* @N_LINES, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %238

198:                                              ; preds = %194
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %200, %27
  %202 = getelementptr inbounds i8, i8* %30, i64 %201
  store i8* %202, i8** %18, align 8
  br label %203

203:                                              ; preds = %208, %198
  %204 = load i8*, i8** %18, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load i8*, i8** %18, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %18, align 8
  %211 = load i8, i8* %209, align 1
  %212 = load i8*, i8** %17, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %17, align 8
  store i8 %211, i8* %212, align 1
  br label %203

214:                                              ; preds = %203
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %33, i64 %216
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %21, align 4
  br label %219

219:                                              ; preds = %227, %214
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %22, align 4
  %222 = add nsw i32 %221, 2
  %223 = icmp slt i32 %220, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load i8*, i8** %17, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %17, align 8
  store i8 32, i8* %225, align 1
  br label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %21, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %21, align 4
  br label %219

230:                                              ; preds = %219
  %231 = load i8*, i8** %17, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %17, align 8
  store i8 13, i8* %231, align 1
  %233 = load i8*, i8** %17, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %17, align 8
  store i8 10, i8* %233, align 1
  br label %235

235:                                              ; preds = %230
  %236 = load i32, i32* %20, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %20, align 4
  br label %194

238:                                              ; preds = %194
  %239 = load i8*, i8** %17, align 8
  store i8 0, i8* %239, align 1
  %240 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i8* %38, i8** %240, align 8
  %241 = load i8*, i8** %17, align 8
  %242 = ptrtoint i8* %241 to i64
  %243 = ptrtoint i8* %38 to i64
  %244 = sub i64 %242, %243
  %245 = trunc i64 %244 to i32
  %246 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  store i32 %245, i32* %246, align 8
  %247 = load i8*, i8** %5, align 8
  %248 = load i64, i64* @RING_WAIT, align 8
  %249 = sub nsw i64 %248, 5
  %250 = call i32* @ttymsg(%struct.iovec* %11, i32 1, i8* %247, i64 %249)
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %238
  %253 = load i32, i32* @FAILED, align 4
  store i32 %253, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %256

254:                                              ; preds = %238
  %255 = load i32, i32* @SUCCESS, align 4
  store i32 %255, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %256

256:                                              ; preds = %254, %252
  %257 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %257)
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @max(i32, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @strvis(i8*, i8*, i32) #2

declare dso_local i32* @ttymsg(%struct.iovec*, i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
