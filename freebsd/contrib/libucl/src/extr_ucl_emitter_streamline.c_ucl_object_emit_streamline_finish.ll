; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i32 }
%struct.ucl_emitter_context_streamline = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_object_emit_streamline_finish(%struct.ucl_emitter_context* %0) #0 {
  %2 = alloca %struct.ucl_emitter_context*, align 8
  %3 = alloca %struct.ucl_emitter_context_streamline*, align 8
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %2, align 8
  %4 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %2, align 8
  %5 = call %struct.ucl_emitter_context_streamline* @TO_STREAMLINE(%struct.ucl_emitter_context* %4)
  store %struct.ucl_emitter_context_streamline* %5, %struct.ucl_emitter_context_streamline** %3, align 8
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %3, align 8
  %8 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %2, align 8
  %13 = call i32 @ucl_object_emit_streamline_end_container(%struct.ucl_emitter_context* %12)
  br label %6

14:                                               ; preds = %6
  %15 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %3, align 8
  %16 = call i32 @free(%struct.ucl_emitter_context_streamline* %15)
  ret void
}

declare dso_local %struct.ucl_emitter_context_streamline* @TO_STREAMLINE(%struct.ucl_emitter_context*) #1

declare dso_local i32 @ucl_object_emit_streamline_end_container(%struct.ucl_emitter_context*) #1

declare dso_local i32 @free(%struct.ucl_emitter_context_streamline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
