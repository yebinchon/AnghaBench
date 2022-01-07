; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.h_cvmx_cmd_queue_write2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@CVMX_ENABLE_PARAMETER_CHECKING = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_INVALID_PARAM = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_FULL = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_NO_MEMORY = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @cvmx_cmd_queue_write2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_cmd_queue_write2(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_5__* @__cvmx_cmd_queue_get_state(i32 %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %10, align 8
  %17 = load i64, i64* @CVMX_ENABLE_PARAMETER_CHECKING, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

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
  br label %184

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @cvmx_likely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %35 = call i32 @__cvmx_cmd_queue_lock(i32 %33, %struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i64, i64* @CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @cvmx_unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @cvmx_cmd_queue_length(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = call i64 @cvmx_unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @cvmx_likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* @CVMX_CMD_QUEUE_FULL, align 4
  store i32 %63, i32* %5, align 4
  br label %184

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %39, %36
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @cvmx_likely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %65
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 7
  %82 = call i64 @cvmx_phys_to_ptr(i32 %81)
  %83 = inttoptr i64 %82 to i32*
  store i32* %83, i32** %11, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %11, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 %97, i32* %99, align 4
  br label %175

100:                                              ; preds = %65
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %13, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @cvmx_fpa_alloc(i32 %110)
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %14, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = icmp eq i32* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i64 @cvmx_unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %100
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @cvmx_likely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %124 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %123)
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* @CVMX_CMD_QUEUE_NO_MEMORY, align 4
  store i32 %126, i32* %5, align 4
  br label %184

127:                                              ; preds = %100
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %13, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 7
  %134 = call i64 @cvmx_phys_to_ptr(i32 %133)
  %135 = inttoptr i64 %134 to i32*
  store i32* %135, i32** %12, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %12, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %12, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32*, i32** %12, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %12, align 8
  store i32 %142, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i64 @cvmx_likely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %127
  %149 = load i32, i32* %9, align 4
  %150 = load i32*, i32** %12, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %12, align 8
  store i32 %149, i32* %150, align 4
  br label %152

152:                                              ; preds = %148, %127
  %153 = load i32*, i32** %14, align 8
  %154 = call i32 @cvmx_ptr_to_phys(i32* %153)
  %155 = load i32*, i32** %12, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %156, align 4
  %158 = ashr i32 %157, 7
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store i32 0, i32* %162, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i32
  %166 = call i64 @cvmx_unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %152
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  store i32 1, i32* %170, align 4
  %171 = load i32, i32* %9, align 4
  %172 = load i32*, i32** %14, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %168, %152
  br label %175

175:                                              ; preds = %174, %77
  %176 = load i32, i32* %7, align 4
  %177 = call i64 @cvmx_likely(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %181 = call i32 @__cvmx_cmd_queue_unlock(%struct.TYPE_5__* %180)
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %182, %125, %62, %25
  %185 = load i32, i32* %5, align 4
  ret i32 %185
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
