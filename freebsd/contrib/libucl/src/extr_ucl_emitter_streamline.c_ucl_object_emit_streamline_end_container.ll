; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_end_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_end_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i32 }
%struct.ucl_emitter_context_streamline = type { %struct.ucl_emitter_streamline_stack*, %struct.TYPE_2__* }
%struct.ucl_emitter_streamline_stack = type { %struct.ucl_emitter_streamline_stack*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.ucl_emitter_context*, i32)*, i32 (%struct.ucl_emitter_context*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_object_emit_streamline_end_container(%struct.ucl_emitter_context* %0) #0 {
  %2 = alloca %struct.ucl_emitter_context*, align 8
  %3 = alloca %struct.ucl_emitter_context_streamline*, align 8
  %4 = alloca %struct.ucl_emitter_streamline_stack*, align 8
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %2, align 8
  %5 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %2, align 8
  %6 = call %struct.ucl_emitter_context_streamline* @TO_STREAMLINE(%struct.ucl_emitter_context* %5)
  store %struct.ucl_emitter_context_streamline* %6, %struct.ucl_emitter_context_streamline** %3, align 8
  %7 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %3, align 8
  %8 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %7, i32 0, i32 0
  %9 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %8, align 8
  %10 = icmp ne %struct.ucl_emitter_streamline_stack* %9, null
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %3, align 8
  %13 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %12, i32 0, i32 0
  %14 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %13, align 8
  store %struct.ucl_emitter_streamline_stack* %14, %struct.ucl_emitter_streamline_stack** %4, align 8
  %15 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %4, align 8
  %16 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %3, align 8
  %21 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.ucl_emitter_context*, i32)*, i32 (%struct.ucl_emitter_context*, i32)** %23, align 8
  %25 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %2, align 8
  %26 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %4, align 8
  %27 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %24(%struct.ucl_emitter_context* %25, i32 %28)
  br label %41

30:                                               ; preds = %11
  %31 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %3, align 8
  %32 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ucl_emitter_context*, i32)*, i32 (%struct.ucl_emitter_context*, i32)** %34, align 8
  %36 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %2, align 8
  %37 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %4, align 8
  %38 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %35(%struct.ucl_emitter_context* %36, i32 %39)
  br label %41

41:                                               ; preds = %30, %19
  %42 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %4, align 8
  %43 = getelementptr inbounds %struct.ucl_emitter_streamline_stack, %struct.ucl_emitter_streamline_stack* %42, i32 0, i32 0
  %44 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %43, align 8
  %45 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %3, align 8
  %46 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %45, i32 0, i32 0
  store %struct.ucl_emitter_streamline_stack* %44, %struct.ucl_emitter_streamline_stack** %46, align 8
  %47 = load %struct.ucl_emitter_streamline_stack*, %struct.ucl_emitter_streamline_stack** %4, align 8
  %48 = call i32 @free(%struct.ucl_emitter_streamline_stack* %47)
  br label %49

49:                                               ; preds = %41, %1
  ret void
}

declare dso_local %struct.ucl_emitter_context_streamline* @TO_STREAMLINE(%struct.ucl_emitter_context*) #1

declare dso_local i32 @free(%struct.ucl_emitter_streamline_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
