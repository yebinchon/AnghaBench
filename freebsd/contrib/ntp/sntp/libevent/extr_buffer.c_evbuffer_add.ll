; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, %struct.evbuffer_chain*, i64 }
%struct.evbuffer_chain = type { i32, i64, i64, i64, i64 }

@EV_SIZE_MAX = common dso_local global i64 0, align 8
@EVBUFFER_IMMUTABLE = common dso_local global i32 0, align 4
@EVBUFFER_CHAIN_MAX = common dso_local global i64 0, align 8
@EVBUFFER_CHAIN_MAX_AUTO_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_add(%struct.evbuffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.evbuffer_chain*, align 8
  %8 = alloca %struct.evbuffer_chain*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  store i32 -1, i32* %12, align 4
  %14 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %15 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %14)
  %16 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %17 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %236

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @EV_SIZE_MAX, align 8
  %24 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %25 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  %28 = icmp ugt i64 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %236

30:                                               ; preds = %21
  %31 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %32 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %31, i32 0, i32 2
  %33 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %32, align 8
  store %struct.evbuffer_chain* %33, %struct.evbuffer_chain** %7, align 8
  %34 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %35 = icmp eq %struct.evbuffer_chain* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i64, i64* %6, align 8
  %38 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %37)
  store %struct.evbuffer_chain* %38, %struct.evbuffer_chain** %7, align 8
  %39 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %40 = icmp ne %struct.evbuffer_chain* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %236

42:                                               ; preds = %36
  %43 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %44 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %45 = call i32 @evbuffer_chain_insert(%struct.evbuffer* %43, %struct.evbuffer_chain* %44)
  br label %46

46:                                               ; preds = %42, %30
  %47 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %48 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EVBUFFER_IMMUTABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %151

53:                                               ; preds = %46
  %54 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %55 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %60 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @EVBUFFER_CHAIN_MAX, align 8
  %63 = icmp sle i64 %61, %62
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i1 [ false, %53 ], [ %63, %58 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @EVUTIL_ASSERT(i32 %66)
  %68 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %69 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %72 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %70, %73
  %75 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %76 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %74, %77
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp uge i64 %79, %80
  br i1 %81, label %82, label %112

82:                                               ; preds = %64
  %83 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %84 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %87 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %91 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = load i8*, i8** %9, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @memcpy(i64 %93, i8* %94, i64 %95)
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %99 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %104 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %109 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %107
  store i64 %111, i64* %109, align 8
  br label %233

112:                                              ; preds = %64
  %113 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %114 = call i32 @CHAIN_PINNED(%struct.evbuffer_chain* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %149, label %116

116:                                              ; preds = %112
  %117 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i64 @evbuffer_chain_should_realign(%struct.evbuffer_chain* %117, i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %116
  %122 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %123 = call i32 @evbuffer_chain_align(%struct.evbuffer_chain* %122)
  %124 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %125 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %128 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %126, %129
  %131 = load i8*, i8** %9, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @memcpy(i64 %130, i8* %131, i64 %132)
  %134 = load i64, i64* %6, align 8
  %135 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %136 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = add i64 %137, %134
  store i64 %138, i64* %136, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %141 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %146 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, %144
  store i64 %148, i64* %146, align 8
  br label %233

149:                                              ; preds = %116, %112
  br label %150

150:                                              ; preds = %149
  br label %152

151:                                              ; preds = %46
  store i64 0, i64* %10, align 8
  br label %152

152:                                              ; preds = %151, %150
  %153 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %154 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %11, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i32, i32* @EVBUFFER_CHAIN_MAX_AUTO_SIZE, align 4
  %158 = sdiv i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = icmp ule i64 %156, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %152
  %162 = load i64, i64* %11, align 8
  %163 = shl i64 %162, 1
  store i64 %163, i64* %11, align 8
  br label %164

164:                                              ; preds = %161, %152
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* %11, align 8
  %167 = icmp ugt i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i64, i64* %6, align 8
  store i64 %169, i64* %11, align 8
  br label %170

170:                                              ; preds = %168, %164
  %171 = load i64, i64* %11, align 8
  %172 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %171)
  store %struct.evbuffer_chain* %172, %struct.evbuffer_chain** %8, align 8
  %173 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %174 = icmp eq %struct.evbuffer_chain* %173, null
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %236

176:                                              ; preds = %170
  %177 = load i64, i64* %10, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %209

179:                                              ; preds = %176
  %180 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %181 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %184 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  %187 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %188 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %186, %189
  %191 = load i8*, i8** %9, align 8
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @memcpy(i64 %190, i8* %191, i64 %192)
  %194 = load i64, i64* %10, align 8
  %195 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %196 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, %194
  store i64 %198, i64* %196, align 8
  %199 = load i64, i64* %10, align 8
  %200 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %201 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, %199
  store i64 %203, i64* %201, align 8
  %204 = load i64, i64* %10, align 8
  %205 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %206 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, %204
  store i64 %208, i64* %206, align 8
  br label %209

209:                                              ; preds = %179, %176
  %210 = load i64, i64* %10, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 %210
  store i8* %212, i8** %9, align 8
  %213 = load i64, i64* %10, align 8
  %214 = load i64, i64* %6, align 8
  %215 = sub i64 %214, %213
  store i64 %215, i64* %6, align 8
  %216 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %217 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %216, i32 0, i32 4
  %218 = load i64, i64* %217, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = load i64, i64* %6, align 8
  %221 = call i32 @memcpy(i64 %218, i8* %219, i64 %220)
  %222 = load i64, i64* %6, align 8
  %223 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %224 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %223, i32 0, i32 3
  store i64 %222, i64* %224, align 8
  %225 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %226 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %227 = call i32 @evbuffer_chain_insert(%struct.evbuffer* %225, %struct.evbuffer_chain* %226)
  %228 = load i64, i64* %6, align 8
  %229 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %230 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, %228
  store i64 %232, i64* %230, align 8
  br label %233

233:                                              ; preds = %209, %121, %82
  %234 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %235 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %234)
  store i32 0, i32* %12, align 4
  br label %236

236:                                              ; preds = %233, %175, %41, %29, %20
  %237 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %238 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %237)
  %239 = load i32, i32* %12, align 4
  ret i32 %239
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local %struct.evbuffer_chain* @evbuffer_chain_new(i64) #1

declare dso_local i32 @evbuffer_chain_insert(%struct.evbuffer*, %struct.evbuffer_chain*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @CHAIN_PINNED(%struct.evbuffer_chain*) #1

declare dso_local i64 @evbuffer_chain_should_realign(%struct.evbuffer_chain*, i64) #1

declare dso_local i32 @evbuffer_chain_align(%struct.evbuffer_chain*) #1

declare dso_local i32 @evbuffer_invoke_callbacks_(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
