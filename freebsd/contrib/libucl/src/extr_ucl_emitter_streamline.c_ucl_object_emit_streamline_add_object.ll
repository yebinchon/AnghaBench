; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_add_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_streamline.c_ucl_object_emit_streamline_add_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i32 }
%struct.ucl_emitter_context_streamline = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.ucl_emitter_context*, i32*, i32, i32)* }
%struct.TYPE_4__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ucl_object_emit_streamline_add_object(%struct.ucl_emitter_context* %0, i32* %1) #0 {
  %3 = alloca %struct.ucl_emitter_context*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ucl_emitter_context_streamline*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %3, align 8
  %9 = call %struct.ucl_emitter_context_streamline* @TO_STREAMLINE(%struct.ucl_emitter_context* %8)
  store %struct.ucl_emitter_context_streamline* %9, %struct.ucl_emitter_context_streamline** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %11 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %16 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %24 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  %30 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %31 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %29, %22
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.ucl_emitter_context_streamline*, %struct.ucl_emitter_context_streamline** %5, align 8
  %37 = getelementptr inbounds %struct.ucl_emitter_context_streamline, %struct.ucl_emitter_context_streamline* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.ucl_emitter_context*, i32*, i32, i32)*, i32 (%struct.ucl_emitter_context*, i32*, i32, i32)** %39, align 8
  %41 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 %40(%struct.ucl_emitter_context* %41, i32* %42, i32 %43, i32 %47)
  ret void
}

declare dso_local %struct.ucl_emitter_context_streamline* @TO_STREAMLINE(%struct.ucl_emitter_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
