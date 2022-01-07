; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_object_emit_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_object_emit_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_functions = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ucl_object_emit_len(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ucl_emitter_functions*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %38

14:                                               ; preds = %3
  %15 = call %struct.ucl_emitter_functions* @ucl_object_emit_memory_funcs(i8** %8)
  store %struct.ucl_emitter_functions* %15, %struct.ucl_emitter_functions** %9, align 8
  %16 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %17 = icmp ne %struct.ucl_emitter_functions* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %20 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %10, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %25 = call i32 @ucl_object_emit_full(i32* %22, i32 %23, %struct.ucl_emitter_functions* %24, i32* null)
  %26 = load i64*, i64** %7, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %28, %18
  %34 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %35 = call i32 @ucl_object_emit_funcs_free(%struct.ucl_emitter_functions* %34)
  br label %36

36:                                               ; preds = %33, %14
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %36, %13
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local %struct.ucl_emitter_functions* @ucl_object_emit_memory_funcs(i8**) #1

declare dso_local i32 @ucl_object_emit_full(i32*, i32, %struct.ucl_emitter_functions*, i32*) #1

declare dso_local i32 @ucl_object_emit_funcs_free(%struct.ucl_emitter_functions*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
