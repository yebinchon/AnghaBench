; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_object_emit_fd_funcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter_utils.c_ucl_object_emit_fd_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_functions = type { i32*, i32 (%struct.ucl_emitter_functions*)*, i32, i32, i32, i32 }

@ucl_fd_append_character = common dso_local global i32 0, align 4
@ucl_fd_append_double = common dso_local global i32 0, align 4
@ucl_fd_append_int = common dso_local global i32 0, align 4
@ucl_fd_append_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucl_emitter_functions* @ucl_object_emit_fd_funcs(i32 %0) #0 {
  %2 = alloca %struct.ucl_emitter_functions*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucl_emitter_functions*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.ucl_emitter_functions* @calloc(i32 1, i32 32)
  store %struct.ucl_emitter_functions* %6, %struct.ucl_emitter_functions** %4, align 8
  %7 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %8 = icmp ne %struct.ucl_emitter_functions* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = call i32* @malloc(i32 4)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %15 = call i32 @free(%struct.ucl_emitter_functions* %14)
  store %struct.ucl_emitter_functions* null, %struct.ucl_emitter_functions** %2, align 8
  br label %38

16:                                               ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @memcpy(i32* %17, i32* %3, i32 4)
  %19 = load i32, i32* @ucl_fd_append_character, align 4
  %20 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %21 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ucl_fd_append_double, align 4
  %23 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %24 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @ucl_fd_append_int, align 4
  %26 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %27 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @ucl_fd_append_len, align 4
  %29 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %30 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %32 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %31, i32 0, i32 1
  store i32 (%struct.ucl_emitter_functions*)* @free, i32 (%struct.ucl_emitter_functions*)** %32, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  %35 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  br label %36

36:                                               ; preds = %16, %1
  %37 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %4, align 8
  store %struct.ucl_emitter_functions* %37, %struct.ucl_emitter_functions** %2, align 8
  br label %38

38:                                               ; preds = %36, %13
  %39 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %2, align 8
  ret %struct.ucl_emitter_functions* %39
}

declare dso_local %struct.ucl_emitter_functions* @calloc(i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(%struct.ucl_emitter_functions*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
