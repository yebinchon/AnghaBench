; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_append_elt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_append_elt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@UCL_PARSER_NO_IMPLICIT_ARRAYS = common dso_local global i32 0, align 4
@UCL_OBJECT_MULTIVALUE = common dso_local global i32 0, align 4
@UCL_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucl_parser*, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)* @ucl_parser_append_elt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_parser_append_elt(%struct.ucl_parser* %0, i32* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca %struct.ucl_parser*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %10 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %11 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @UCL_PARSER_NO_IMPLICIT_ARRAYS, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %4
  %17 = load i32, i32* @UCL_OBJECT_MULTIVALUE, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = call i32 @DL_APPEND(%struct.TYPE_15__* %22, %struct.TYPE_15__* %23)
  %25 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %26 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %73

33:                                               ; preds = %4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UCL_OBJECT_MULTIVALUE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = call i32 @ucl_array_append(%struct.TYPE_15__* %41, %struct.TYPE_15__* %42)
  br label %72

44:                                               ; preds = %33
  %45 = load i32, i32* @UCL_ARRAY, align 4
  %46 = call %struct.TYPE_15__* @ucl_object_typed_new(i32 %45)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %9, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @UCL_OBJECT_MULTIVALUE, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %64 = call i32 @ucl_array_append(%struct.TYPE_15__* %62, %struct.TYPE_15__* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = call i32 @ucl_array_append(%struct.TYPE_15__* %65, %struct.TYPE_15__* %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = call i32 @ucl_hash_replace(i32* %68, %struct.TYPE_15__* %69, %struct.TYPE_15__* %70)
  br label %72

72:                                               ; preds = %44, %40
  br label %73

73:                                               ; preds = %72, %16
  ret void
}

declare dso_local i32 @DL_APPEND(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ucl_array_append(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ucl_object_typed_new(i32) #1

declare dso_local i32 @ucl_hash_replace(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
