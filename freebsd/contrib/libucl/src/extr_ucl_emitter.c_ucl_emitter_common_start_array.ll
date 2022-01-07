; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_common_start_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_emitter.c_ucl_emitter_common_start_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_emitter_context = type { i32, %struct.ucl_emitter_functions* }
%struct.ucl_emitter_functions = type { i32, i32 (i8*, i32, i32)*, i32 (i8, i32, i32)* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__* }

@.str = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@UCL_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucl_emitter_context*, %struct.TYPE_7__*, i32, i32)* @ucl_emitter_common_start_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_emitter_common_start_array(%struct.ucl_emitter_context* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ucl_emitter_context*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ucl_emitter_functions*, align 8
  %12 = alloca i32, align 4
  store %struct.ucl_emitter_context* %0, %struct.ucl_emitter_context** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %13 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %5, align 8
  %14 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %13, i32 0, i32 1
  %15 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %14, align 8
  store %struct.ucl_emitter_functions* %15, %struct.ucl_emitter_functions** %11, align 8
  store i32 1, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @ucl_emitter_print_key(i32 %16, %struct.ucl_emitter_context* %17, %struct.TYPE_7__* %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %11, align 8
  %25 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %24, i32 0, i32 2
  %26 = load i32 (i8, i32, i32)*, i32 (i8, i32, i32)** %25, align 8
  %27 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %11, align 8
  %28 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %26(i8 signext 91, i32 1, i32 %29)
  br label %39

31:                                               ; preds = %4
  %32 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %11, align 8
  %33 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %32, i32 0, i32 1
  %34 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %33, align 8
  %35 = load %struct.ucl_emitter_functions*, %struct.ucl_emitter_functions** %11, align 8
  %36 = getelementptr inbounds %struct.ucl_emitter_functions, %struct.ucl_emitter_functions* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %5, align 8
  %41 = getelementptr inbounds %struct.ucl_emitter_context, %struct.ucl_emitter_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UCL_ARRAY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %54, %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = call %struct.TYPE_7__* @ucl_object_iterate(%struct.TYPE_7__* %51, i32** %10, i32 1)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %9, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %5, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ucl_emitter_common_elt(%struct.ucl_emitter_context* %55, %struct.TYPE_7__* %56, i32 %57, i32 0, i32 %58)
  store i32 0, i32* %12, align 4
  br label %50

60:                                               ; preds = %50
  br label %76

61:                                               ; preds = %39
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %9, align 8
  br label %63

63:                                               ; preds = %66, %61
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.ucl_emitter_context*, %struct.ucl_emitter_context** %5, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ucl_emitter_common_elt(%struct.ucl_emitter_context* %67, %struct.TYPE_7__* %68, i32 %69, i32 0, i32 %70)
  store i32 0, i32* %12, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %9, align 8
  br label %63

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %60
  ret void
}

declare dso_local i32 @ucl_emitter_print_key(i32, %struct.ucl_emitter_context*, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @ucl_object_iterate(%struct.TYPE_7__*, i32**, i32) #1

declare dso_local i32 @ucl_emitter_common_elt(%struct.ucl_emitter_context*, %struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
