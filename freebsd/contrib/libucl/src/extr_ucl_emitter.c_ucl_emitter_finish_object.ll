; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_finish_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_finish_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i64, %struct.TYPE_3__*, %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8, i32, i32)*, i32 (i8*, i32, i32)* }
%struct.TYPE_3__ = type { i64 }

@UCL_EMIT_CONFIG = common dso_local global i64 0, align 8
@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucl_emitter_context*, %struct.TYPE_3__*, i32, i32)* @ucl_emitter_finish_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_emitter_finish_object(%struct.ucl_emitter_context* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ucl_emitter_context*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucl_emitter_functions*, align 8
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %5, align 8
  %11 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %10, i32 0, i32 2
  %12 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %11, align 8
  store %struct.ucl_emitter_functions* %12, %struct.ucl_emitter_functions** %9, align 8
  %13 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %5, align 8
  %14 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UCL_EMIT_CONFIG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %5, align 8
  %21 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %19, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UCL_OBJECT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UCL_ARRAY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %41 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %40, i32 0, i32 2
  %42 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %41, align 8
  %43 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %44 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 %45)
  br label %55

47:                                               ; preds = %36
  %48 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %49 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %48, i32 0, i32 2
  %50 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %49, align 8
  %51 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %52 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %50(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 %53)
  br label %55

55:                                               ; preds = %47, %39
  br label %64

56:                                               ; preds = %30, %24
  %57 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %58 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %57, i32 0, i32 1
  %59 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %58, align 8
  %60 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %9, align 8
  %61 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %59(i8 signext 10, i32 1, i32 %62)
  br label %64

64:                                               ; preds = %56, %55
  br label %65

65:                                               ; preds = %64, %18, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
