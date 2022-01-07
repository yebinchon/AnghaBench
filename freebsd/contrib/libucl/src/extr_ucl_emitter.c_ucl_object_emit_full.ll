; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_object_emit_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_object_emit_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_functions = type { i32 }
%struct.ucl_emitter_context = type { %struct.TYPE_2__*, i32*, i32*, i64, %struct.ucl_emitter_functions* }
%struct.TYPE_2__ = type { i32 (%struct.ucl_emitter_context*, i32*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_object_emit_full(i32* %0, i32 %1, %struct.ucl_emitter_functions* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucl_emitter_functions*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ucl_emitter_context*, align 8
  %10 = alloca %struct.ucl_emitter_context, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ucl_emitter_functions* %2, %struct.ucl_emitter_functions** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.ucl_emitter_context* @ucl_emit_get_standard_context(i32 %12)
  store %struct.ucl_emitter_context* %13, %struct.ucl_emitter_context** %9, align 8
  %14 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %9, align 8
  %15 = icmp ne %struct.ucl_emitter_context* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %4
  %17 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %9, align 8
  %18 = call i32 @memcpy(%struct.ucl_emitter_context* %10, %struct.ucl_emitter_context* %17, i32 40)
  %19 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %20 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %10, i32 0, i32 4
  store %struct.ucl_emitter_functions* %19, %struct.ucl_emitter_functions** %20, align 8
  %21 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %10, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %10, i32 0, i32 2
  store i32* %22, i32** %23, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %10, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %10, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.ucl_emitter_context*, i32*, i32, i32)*, i32 (%struct.ucl_emitter_context*, i32*, i32, i32)** %28, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 %29(%struct.ucl_emitter_context* %10, i32* %30, i32 1, i32 0)
  store i32 1, i32* %11, align 4
  br label %32

32:                                               ; preds = %16, %4
  %33 = load i32, i32* %11, align 4
  ret i32 %33
}

declare dso_local %struct.ucl_emitter_context* @ucl_emit_get_standard_context(i32) #1

declare dso_local i32 @memcpy(%struct.ucl_emitter_context*, %struct.ucl_emitter_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
