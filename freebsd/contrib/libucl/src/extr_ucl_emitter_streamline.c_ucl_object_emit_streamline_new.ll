; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i32 }
%struct.ucl_emitter_functions = type { i32 }
%struct.ucl_emitter_context_streamline = type { i32*, %struct.ucl_emitter_functions* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucl_emitter_context* @ucl_object_emit_streamline_new(i32* %0, i32 %1, %struct.ucl_emitter_functions* %2) #0 {
  %4 = alloca %struct.ucl_emitter_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucl_emitter_functions*, align 8
  %8 = alloca %struct.ucl_emitter_context*, align 8
  %9 = alloca %struct.ucl_emitter_context_streamline*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ucl_emitter_functions* %2, %struct.ucl_emitter_functions** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.ucl_emitter_context* @ucl_emit_get_standard_context(i32 %10)
  store %struct.ucl_emitter_context* %11, %struct.ucl_emitter_context** %8, align 8
  %12 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %8, align 8
  %13 = icmp eq %struct.ucl_emitter_context* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.ucl_emitter_context* null, %struct.ucl_emitter_context** %4, align 8
  br label %36

15:                                               ; preds = %3
  %16 = call %struct.ucl_emitter_context_streamline* @calloc(i32 1, i32 16)
  store %struct.ucl_emitter_context_streamline* %16, %struct.ucl_emitter_context_streamline** %9, align 8
  %17 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %9, align 8
  %18 = icmp eq %struct.ucl_emitter_context_streamline* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.ucl_emitter_context* null, %struct.ucl_emitter_context** %4, align 8
  br label %36

20:                                               ; preds = %15
  %21 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %9, align 8
  %22 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %8, align 8
  %23 = call i32 @memcpy(%struct.ucl_emitter_context_streamline* %21, %struct.ucl_emitter_context* %22, i32 4)
  %24 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %25 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %9, align 8
  %26 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %25, i32 0, i32 1
  store %struct.ucl_emitter_functions* %24, %struct.ucl_emitter_functions** %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %9, align 8
  %29 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %9, align 8
  %31 = bitcast %struct.ucl_emitter_context_streamline* %30 to %struct.ucl_emitter_context*
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @ucl_object_emit_streamline_start_container(%struct.ucl_emitter_context* %31, i32* %32)
  %34 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %9, align 8
  %35 = bitcast %struct.ucl_emitter_context_streamline* %34 to %struct.ucl_emitter_context*
  store %struct.ucl_emitter_context* %35, %struct.ucl_emitter_context** %4, align 8
  br label %36

36:                                               ; preds = %20, %19, %14
  %37 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  ret %struct.ucl_emitter_context* %37
}

declare dso_local %struct.ucl_emitter_context* @ucl_emit_get_standard_context(i32) #1

declare dso_local %struct.ucl_emitter_context_streamline* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context*, i32) #1

declare dso_local i32 @ucl_object_emit_streamline_start_container(%struct.ucl_emitter_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
