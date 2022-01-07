; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, %struct.evbuffer_chain**, %struct.evbuffer_chain*, i64 }
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
  %17 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %248

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
  br label %248

30:                                               ; preds = %21
  %31 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %32 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %31, i32 0, i32 2
  %33 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %32, align 8
  %34 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %33, align 8
  %35 = icmp eq %struct.evbuffer_chain* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %38 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %37, i32 0, i32 3
  %39 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %38, align 8
  store %struct.evbuffer_chain* %39, %struct.evbuffer_chain** %7, align 8
  br label %45

40:                                               ; preds = %30
  %41 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %42 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %41, i32 0, i32 2
  %43 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %42, align 8
  %44 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %43, align 8
  store %struct.evbuffer_chain* %44, %struct.evbuffer_chain** %7, align 8
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %47 = icmp eq %struct.evbuffer_chain* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %49)
  store %struct.evbuffer_chain* %50, %struct.evbuffer_chain** %7, align 8
  %51 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %52 = icmp ne %struct.evbuffer_chain* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %248

54:                                               ; preds = %48
  %55 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %56 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %57 = call i32 @evbuffer_chain_insert(%struct.evbuffer* %55, %struct.evbuffer_chain* %56)
  br label %58

58:                                               ; preds = %54, %45
  %59 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %60 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @EVBUFFER_IMMUTABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %163

65:                                               ; preds = %58
  %66 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %67 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %72 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EVBUFFER_CHAIN_MAX, align 8
  %75 = icmp sle i64 %73, %74
  br label %76

76:                                               ; preds = %70, %65
  %77 = phi i1 [ false, %65 ], [ %75, %70 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @EVUTIL_ASSERT(i32 %78)
  %80 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %81 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %84 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %82, %85
  %87 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %88 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %86, %89
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp uge i64 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %76
  %95 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %96 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %99 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %103 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %101, %104
  %106 = load i8*, i8** %9, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @memcpy(i64 %105, i8* %106, i64 %107)
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %111 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %116 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %121 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, %119
  store i64 %123, i64* %121, align 8
  br label %245

124:                                              ; preds = %76
  %125 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %126 = call i32 @CHAIN_PINNED(%struct.evbuffer_chain* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %161, label %128

128:                                              ; preds = %124
  %129 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i64 @evbuffer_chain_should_realign(%struct.evbuffer_chain* %129, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %161

133:                                              ; preds = %128
  %134 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %135 = call i32 @evbuffer_chain_align(%struct.evbuffer_chain* %134)
  %136 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %137 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %140 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %138, %141
  %143 = load i8*, i8** %9, align 8
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @memcpy(i64 %142, i8* %143, i64 %144)
  %146 = load i64, i64* %6, align 8
  %147 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %148 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %153 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = add i64 %154, %151
  store i64 %155, i64* %153, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %158 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add i64 %159, %156
  store i64 %160, i64* %158, align 8
  br label %245

161:                                              ; preds = %128, %124
  br label %162

162:                                              ; preds = %161
  br label %164

163:                                              ; preds = %58
  store i64 0, i64* %10, align 8
  br label %164

164:                                              ; preds = %163, %162
  %165 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %166 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %11, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i32, i32* @EVBUFFER_CHAIN_MAX_AUTO_SIZE, align 4
  %170 = sdiv i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = icmp ule i64 %168, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load i64, i64* %11, align 8
  %175 = shl i64 %174, 1
  store i64 %175, i64* %11, align 8
  br label %176

176:                                              ; preds = %173, %164
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* %11, align 8
  %179 = icmp ugt i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i64, i64* %6, align 8
  store i64 %181, i64* %11, align 8
  br label %182

182:                                              ; preds = %180, %176
  %183 = load i64, i64* %11, align 8
  %184 = call %struct.evbuffer_chain* @evbuffer_chain_new(i64 %183)
  store %struct.evbuffer_chain* %184, %struct.evbuffer_chain** %8, align 8
  %185 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %186 = icmp eq %struct.evbuffer_chain* %185, null
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  br label %248

188:                                              ; preds = %182
  %189 = load i64, i64* %10, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %221

191:                                              ; preds = %188
  %192 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %193 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %196 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %194, %197
  %199 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %200 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %198, %201
  %203 = load i8*, i8** %9, align 8
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @memcpy(i64 %202, i8* %203, i64 %204)
  %206 = load i64, i64* %10, align 8
  %207 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %208 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, %206
  store i64 %210, i64* %208, align 8
  %211 = load i64, i64* %10, align 8
  %212 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %213 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add i64 %214, %211
  store i64 %215, i64* %213, align 8
  %216 = load i64, i64* %10, align 8
  %217 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %218 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, %216
  store i64 %220, i64* %218, align 8
  br label %221

221:                                              ; preds = %191, %188
  %222 = load i64, i64* %10, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 %222
  store i8* %224, i8** %9, align 8
  %225 = load i64, i64* %10, align 8
  %226 = load i64, i64* %6, align 8
  %227 = sub i64 %226, %225
  store i64 %227, i64* %6, align 8
  %228 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %229 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %228, i32 0, i32 4
  %230 = load i64, i64* %229, align 8
  %231 = load i8*, i8** %9, align 8
  %232 = load i64, i64* %6, align 8
  %233 = call i32 @memcpy(i64 %230, i8* %231, i64 %232)
  %234 = load i64, i64* %6, align 8
  %235 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %236 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %235, i32 0, i32 3
  store i64 %234, i64* %236, align 8
  %237 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %238 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %239 = call i32 @evbuffer_chain_insert(%struct.evbuffer* %237, %struct.evbuffer_chain* %238)
  %240 = load i64, i64* %6, align 8
  %241 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %242 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, %240
  store i64 %244, i64* %242, align 8
  br label %245

245:                                              ; preds = %221, %133, %94
  %246 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %247 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %246)
  store i32 0, i32* %12, align 4
  br label %248

248:                                              ; preds = %245, %187, %53, %29, %20
  %249 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %250 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %249)
  %251 = load i32, i32* %12, align 4
  ret i32 %251
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
