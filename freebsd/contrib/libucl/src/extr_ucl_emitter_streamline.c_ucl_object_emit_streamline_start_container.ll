; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_start_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_start_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ucl_emitter_context_streamline = type { %struct.ucl_emitter_streamline_stack*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.ucl_emitter_streamline_stack = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 (%struct.ucl_emitter_context*, %struct.TYPE_7__*, i32)*, i32 (%struct.ucl_emitter_context*, %struct.TYPE_7__*, i32)* }

@UCL_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_object_emit_streamline_start_container(%struct.ucl_emitter_context* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.ucl_emitter_context*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.ucl_emitter_context_streamline*, align 8
  %6 = alloca %struct.ucl_emitter_streamline_stack*, align 8
  %7 = alloca %struct.ucl_emitter_streamline_stack*, align 8
  %8 = alloca i32, align 4
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %3, align 8
  %10 = call %struct.ucl_emitter_context_streamline* @TO_STREAMLINE(%struct.ucl_emitter_context* %9)
  store %struct.ucl_emitter_context_streamline* %10, %struct.ucl_emitter_context_streamline** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %12 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %18 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %17, i32 0, i32 2
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %21 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %20, i32 0, i32 0
  %22 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %21, align 8
  store %struct.ucl_emitter_streamline_stack* %22, %struct.ucl_emitter_streamline_stack** %7, align 8
  %23 = call %struct.ucl_emitter_streamline_stack* @malloc(i32 16)
  store %struct.ucl_emitter_streamline_stack* %23, %struct.ucl_emitter_streamline_stack** %6, align 8
  %24 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %6, align 8
  %25 = icmp ne %struct.ucl_emitter_streamline_stack* %24, null
  br i1 %25, label %26, label %79

26:                                               ; preds = %19
  %27 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %7, align 8
  %28 = icmp ne %struct.ucl_emitter_streamline_stack* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %7, align 8
  %31 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %29, %26
  %36 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %6, align 8
  %37 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %6, align 8
  %40 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %39, i32 0, i32 2
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UCL_ARRAY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %6, align 8
  %51 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %53 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32 (%struct.ucl_emitter_context*, %struct.TYPE_7__*, i32)*, i32 (%struct.ucl_emitter_context*, %struct.TYPE_7__*, i32)** %55, align 8
  %57 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %3, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 %56(%struct.ucl_emitter_context* %57, %struct.TYPE_7__* %58, i32 %59)
  br label %73

61:                                               ; preds = %43, %35
  %62 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %6, align 8
  %63 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %65 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (%struct.ucl_emitter_context*, %struct.TYPE_7__*, i32)*, i32 (%struct.ucl_emitter_context*, %struct.TYPE_7__*, i32)** %67, align 8
  %69 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %3, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 %68(%struct.ucl_emitter_context* %69, %struct.TYPE_7__* %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %49
  %74 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %75 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %74, i32 0, i32 0
  %76 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %75, align 8
  %77 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %6, align 8
  %78 = call i32 @LL_PREPEND(%struct.ucl_emitter_streamline_stack* %76, %struct.ucl_emitter_streamline_stack* %77)
  br label %79

79:                                               ; preds = %73, %19
  ret void
}

declare dso_local %struct.ucl_emitter_context_streamline* @TO_STREAMLINE(%struct.ucl_emitter_context*) #1

declare dso_local %struct.ucl_emitter_streamline_stack* @malloc(i32) #1

declare dso_local i32 @LL_PREPEND(%struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
