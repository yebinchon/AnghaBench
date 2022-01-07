; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_common_end_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_common_end_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i64, i32, %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8, i32, i32)* }

@UCL_EMIT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucl_emitter_context*, i32*, i32)* @ucl_emitter_common_end_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_emitter_common_end_array(%struct.ucl_emitter_context* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ucl_emitter_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ucl_emitter_functions*, align 8
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %9 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %8, i32 0, i32 2
  %10 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  store %struct.ucl_emitter_functions* %10, %struct.ucl_emitter_functions** %7, align 8
  %11 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %12 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %19 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %18, i32 0, i32 1
  %20 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %19, align 8
  %21 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %22 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %20(i8 signext 93, i32 1, i32 %23)
  br label %53

25:                                               ; preds = %3
  %26 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %27 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UCL_EMIT_CONFIG, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %33 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %32, i32 0, i32 1
  %34 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %33, align 8
  %35 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %36 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i8 signext 10, i32 1, i32 %37)
  br label %39

39:                                               ; preds = %31, %25
  %40 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %41 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %42 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ucl_add_tabs(%struct.ucl_emitter_functions* %40, i32 %43, i32 %44)
  %46 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %47 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %46, i32 0, i32 1
  %48 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %47, align 8
  %49 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %50 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i8 signext 93, i32 1, i32 %51)
  br label %53

53:                                               ; preds = %39, %17
  %54 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @ucl_emitter_finish_object(%struct.ucl_emitter_context* %54, i32* %55, i32 %56, i32 1)
  ret void
}

declare dso_local i32 @ucl_add_tabs(%struct.ucl_emitter_functions*, i32, i32) #1

declare dso_local i32 @ucl_emitter_finish_object(%struct.ucl_emitter_context*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
