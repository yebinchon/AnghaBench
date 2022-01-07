; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_object_emit_memory_funcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_object_emit_memory_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_functions = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8**, i8* }

@ucl_utstring_append_character = common dso_local global i32 0, align 4
@ucl_utstring_append_double = common dso_local global i32 0, align 4
@ucl_utstring_append_int = common dso_local global i32 0, align 4
@ucl_utstring_append_len = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucl_emitter_functions* @ucl_object_emit_memory_funcs(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.ucl_emitter_functions*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %2, align 8
  %5 = call %struct.ucl_emitter_functions* @calloc(i32 1, i32 32)
  store %struct.ucl_emitter_functions* %5, %struct.ucl_emitter_functions** %3, align 8
  %6 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %3, align 8
  %7 = icmp ne %struct.ucl_emitter_functions* %6, null
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load i32, i32* @ucl_utstring_append_character, align 4
  %10 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %3, align 8
  %11 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ucl_utstring_append_double, align 4
  %13 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %3, align 8
  %14 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @ucl_utstring_append_int, align 4
  %16 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %3, align 8
  %17 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @ucl_utstring_append_len, align 4
  %19 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %3, align 8
  %20 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @free, align 4
  %22 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %3, align 8
  %23 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = call i32 @utstring_new(%struct.TYPE_3__* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %3, align 8
  %28 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %27, i32 0, i32 0
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8**, i8*** %2, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i8**, i8*** %2, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i8** %33, i8*** %35, align 8
  br label %36

36:                                               ; preds = %8, %1
  %37 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %3, align 8
  ret %struct.ucl_emitter_functions* %37
}

declare dso_local %struct.ucl_emitter_functions* @calloc(i32, i32) #1

declare dso_local i32 @utstring_new(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
