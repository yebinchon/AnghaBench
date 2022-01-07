; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@CVMX_ENABLE_PARAMETER_CHECKING = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_INVALID_PARAM = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @cvmx_cmd_queue_write3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_cmd_queue_write3(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %12, align 8
  %19 = load i64, i64* @CVMX_ENABLE_PARAMETER_CHECKING, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @cvmx_unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %28, i32* %6, align 4
  br label %205

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %5
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @cvmx_likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = call i32 @__cvmx_cmd_queue_lock(i32 %35, %struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* @CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @cvmx_unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cvmx_cmd_queue_length(i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @cvmx_unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @cvmx_likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %63 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %62)
  br label %64

64:                                               ; preds = %61, %57
  %65 = load i32, i32* @CVMX_CMD_QUEUE_FULL, align 4
  store i32 %65, i32* %6, align 4
  br label %205

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %41, %38
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @cvmx_likely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %67
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 7
  %84 = call i64 @cvmx_phys_to_ptr(i32 %83)
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %13, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 %88
  store i32* %90, i32** %13, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 3
  store i64 %94, i64* %92, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 %101, i32* %103, align 4
  br label %196

104:                                              ; preds = %67
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %15, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @cvmx_fpa_alloc(i32 %115)
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %16, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = icmp eq i32* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i64 @cvmx_unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %104
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @cvmx_likely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %129 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32, i32* @CVMX_CMD_QUEUE_NO_MEMORY, align 4
  store i32 %131, i32* %6, align 4
  br label %205

132:                                              ; preds = %104
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %15, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = shl i32 %137, 7
  %139 = call i64 @cvmx_phys_to_ptr(i32 %138)
  %140 = inttoptr i64 %139 to i32*
  store i32* %140, i32** %14, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 %143
  store i32* %145, i32** %14, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32*, i32** %14, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %14, align 8
  store i32 %146, i32* %147, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %132
  %152 = load i32, i32* %10, align 4
  %153 = load i32*, i32** %14, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %14, align 8
  store i32 %152, i32* %153, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %161

157:                                              ; preds = %151
  %158 = load i32, i32* %11, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %14, align 8
  store i32 %158, i32* %159, align 4
  br label %161

161:                                              ; preds = %157, %151
  br label %162

162:                                              ; preds = %161, %132
  %163 = load i32*, i32** %16, align 8
  %164 = call i32 @cvmx_ptr_to_phys(i32* %163)
  %165 = load i32*, i32** %14, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %167, 7
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load i32*, i32** %16, align 8
  store i32* %173, i32** %14, align 8
  %174 = load i32, i32* %15, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %162
  %177 = load i32, i32* %10, align 4
  %178 = load i32*, i32** %14, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %14, align 8
  store i32 %177, i32* %178, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %181, align 8
  br label %184

184:                                              ; preds = %176, %162
  %185 = load i32, i32* %15, align 4
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i32, i32* %11, align 4
  %189 = load i32*, i32** %14, align 8
  %190 = getelementptr inbounds i32, i32* %189, i32 1
  store i32* %190, i32** %14, align 8
  store i32 %188, i32* %189, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %192, align 8
  br label %195

195:                                              ; preds = %187, %184
  br label %196

196:                                              ; preds = %195, %79
  %197 = load i32, i32* %8, align 4
  %198 = call i64 @cvmx_likely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %202 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %201)
  br label %203

203:                                              ; preds = %200, %196
  %204 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  store i32 %204, i32* %6, align 4
  br label %205

205:                                              ; preds = %203, %130, %64, %27
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32) #1

declare dso_local i64 @cvmx_unlikely(i32) #1

declare dso_local i64 @cvmx_likely(i32) #1

declare dso_local i32 @__cvmx_cmd_queue_lock(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @cvmx_cmd_queue_length(i32) #1

declare dso_local i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__*) #1

declare dso_local i64 @cvmx_phys_to_ptr(i32) #1

declare dso_local i64 @cvmx_fpa_alloc(i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
