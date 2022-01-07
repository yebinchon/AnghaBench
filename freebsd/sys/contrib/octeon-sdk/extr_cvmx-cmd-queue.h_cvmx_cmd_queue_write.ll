; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@CVMX_ENABLE_PARAMETER_CHECKING = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_INVALID_PARAM = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @cvmx_cmd_queue_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_cmd_queue_write(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  %17 = load i64, i64* @CVMX_ENABLE_PARAMETER_CHECKING, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i64 @cvmx_unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %26, i32* %5, align 4
  br label %214

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %31, 32
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ true, %27 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @cvmx_unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %39, i32* %5, align 4
  br label %214

40:                                               ; preds = %33
  %41 = load i32*, i32** %9, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i64 @cvmx_unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %47, i32* %5, align 4
  br label %214

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @cvmx_likely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = call i32 @__cvmx_cmd_queue_lock(i32 %54, %struct.TYPE_5__* %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i64, i64* @CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @cvmx_unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @cvmx_cmd_queue_length(i32 %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @cvmx_unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @cvmx_likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* @CVMX_CMD_QUEUE_FULL, align 4
  store i32 %84, i32* %5, align 4
  br label %214

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %60, %57
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @cvmx_likely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %86
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 7
  %104 = call i64 @cvmx_phys_to_ptr(i32 %103)
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %11, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %11, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %121, %99
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %8, align 4
  %120 = icmp ne i32 %118, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %9, align 8
  %124 = load i32, i32* %122, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  br label %117

127:                                              ; preds = %117
  br label %205

128:                                              ; preds = %86
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @cvmx_fpa_alloc(i32 %131)
  %133 = inttoptr i64 %132 to i32*
  store i32* %133, i32** %14, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = icmp eq i32* %134, null
  %136 = zext i1 %135 to i32
  %137 = call i64 @cvmx_unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %128
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @cvmx_likely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %145 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %144)
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i32, i32* @CVMX_CMD_QUEUE_NO_MEMORY, align 4
  store i32 %147, i32* %5, align 4
  br label %214

148:                                              ; preds = %128
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 7
  %153 = call i64 @cvmx_phys_to_ptr(i32 %152)
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %12, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %157, %160
  store i32 %161, i32* %13, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32* %167, i32** %12, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %175, %148
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %13, align 4
  %174 = icmp ne i32 %172, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %9, align 8
  %178 = load i32, i32* %176, align 4
  %179 = load i32*, i32** %12, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** %12, align 8
  store i32 %178, i32* %179, align 4
  br label %171

181:                                              ; preds = %171
  %182 = load i32*, i32** %14, align 8
  %183 = call i32 @cvmx_ptr_to_phys(i32* %182)
  %184 = load i32*, i32** %12, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32*, i32** %12, align 8
  %186 = load i32, i32* %185, align 4
  %187 = ashr i32 %186, 7
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load i32*, i32** %14, align 8
  store i32* %193, i32** %12, align 8
  br label %194

194:                                              ; preds = %198, %181
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, -1
  store i32 %196, i32* %8, align 4
  %197 = icmp ne i32 %195, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i32 1
  store i32* %200, i32** %9, align 8
  %201 = load i32, i32* %199, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %12, align 8
  store i32 %201, i32* %202, align 4
  br label %194

204:                                              ; preds = %194
  br label %205

205:                                              ; preds = %204, %127
  %206 = load i32, i32* %7, align 4
  %207 = call i64 @cvmx_likely(i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %211 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %210)
  br label %212

212:                                              ; preds = %209, %205
  %213 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %212, %146, %83, %46, %38, %25
  %215 = load i32, i32* %5, align 4
  ret i32 %215
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
