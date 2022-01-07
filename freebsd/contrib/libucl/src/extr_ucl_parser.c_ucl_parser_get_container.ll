; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_get_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parser_get_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.ucl_parser = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32 }

@UCL_ARRAY = common dso_local global i64 0, align 8
@UCL_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.ucl_parser*)* @ucl_parser_get_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @ucl_parser_get_container(%struct.ucl_parser* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  store %struct.ucl_parser* %0, %struct.ucl_parser** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  %6 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %7 = icmp eq %struct.ucl_parser* %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %10 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %9, i32 0, i32 1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = icmp eq %struct.TYPE_11__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %15 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %8, %1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %64

21:                                               ; preds = %13
  %22 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %23 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UCL_ARRAY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %21
  %32 = load i32, i32* @UCL_NULL, align 4
  %33 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %34 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %33, i32 0, i32 2
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_12__* @ucl_object_new_full(i32 %32, i32 %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %5, align 8
  %39 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %40 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %39, i32 0, i32 1
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %4, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = call i32 @ucl_array_append(%struct.TYPE_12__* %44, %struct.TYPE_12__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %31
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = call i32 @ucl_object_unref(%struct.TYPE_12__* %49)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %64

51:                                               ; preds = %31
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %54 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %53, i32 0, i32 0
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %54, align 8
  %55 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = call i32 @ucl_attach_comment(%struct.ucl_parser* %55, %struct.TYPE_12__* %56, i32 0)
  br label %62

58:                                               ; preds = %21
  %59 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %60 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %59, i32 0, i32 0
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  store %struct.TYPE_12__* %61, %struct.TYPE_12__** %5, align 8
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %2, align 8
  br label %64

64:                                               ; preds = %62, %48, %20
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %65
}

declare dso_local %struct.TYPE_12__* @ucl_object_new_full(i32, i32) #1

declare dso_local i32 @ucl_array_append(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ucl_object_unref(%struct.TYPE_12__*) #1

declare dso_local i32 @ucl_attach_comment(%struct.ucl_parser*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
