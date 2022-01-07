; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_common_end_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_common_end_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i64, i32, %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8, i32, i32)* }

@UCL_EMIT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucl_emitter_context*, i32*, i32)* @ucl_emitter_common_end_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_emitter_common_end_object(%struct.ucl_emitter_context* %0, i32* %1, i32 %2) #0 {
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
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @UCL_EMIT_IDENT_TOP_OBJ(%struct.ucl_emitter_context* %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %3
  %16 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %17 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %24 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %23, i32 0, i32 1
  %25 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %24, align 8
  %26 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %27 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %25(i8 signext 125, i32 1, i32 %28)
  br label %58

30:                                               ; preds = %15
  %31 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %32 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UCL_EMIT_CONFIG, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %38 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %37, i32 0, i32 1
  %39 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %38, align 8
  %40 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %41 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %39(i8 signext 10, i32 1, i32 %42)
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %46 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %47 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ucl_add_tabs(%struct.ucl_emitter_functions* %45, i32 %48, i32 %49)
  %51 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %52 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %51, i32 0, i32 1
  %53 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %52, align 8
  %54 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %7, align 8
  %55 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i8 signext 125, i32 1, i32 %56)
  br label %58

58:                                               ; preds = %44, %22
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @ucl_emitter_finish_object(%struct.ucl_emitter_context* %60, i32* %61, i32 %62, i32 0)
  ret void
}

declare dso_local i64 @UCL_EMIT_IDENT_TOP_OBJ(%struct.ucl_emitter_context*, i32*) #1

declare dso_local i32 @ucl_add_tabs(%struct.ucl_emitter_functions*, i32, i32) #1

declare dso_local i32 @ucl_emitter_finish_object(%struct.ucl_emitter_context*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
