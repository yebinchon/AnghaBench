; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_mdoc_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_mdoc_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.roff_man = type { %struct.roff_node* }
%struct.roff_node = type { i64, %struct.TYPE_5__*, %struct.roff_node* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@TOKEN_NONE = common dso_local global i32 0, align 4
@ARGSFL_NONE = common dso_local global i32 0, align 4
@mdocargs = common dso_local global %struct.TYPE_6__* null, align 8
@MDOC_Dd = common dso_local global i32 0, align 4
@MDOC_It = common dso_local global i32 0, align 4
@MDOC_Bl = common dso_local global i64 0, align 8
@LIST_column = common dso_local global i64 0, align 8
@ARGSFL_TABSEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdoc_args(%struct.roff_man* %0, i32 %1, i32* %2, i8* %3, i32 %4, i8** %5) #0 {
  %7 = alloca %struct.roff_man*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.roff_node*, align 8
  %14 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8** %5, i8*** %12, align 8
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @TOKEN_NONE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @ARGSFL_NONE, align 4
  br label %29

20:                                               ; preds = %6
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mdocargs, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MDOC_Dd, align 4
  %24 = sub i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %20, %18
  %30 = phi i32 [ %19, %18 ], [ %28, %20 ]
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MDOC_It, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %36 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %35, i32 0, i32 0
  %37 = load %struct.roff_node*, %struct.roff_node** %36, align 8
  store %struct.roff_node* %37, %struct.roff_node** %13, align 8
  br label %38

38:                                               ; preds = %60, %34
  %39 = load %struct.roff_node*, %struct.roff_node** %13, align 8
  %40 = icmp ne %struct.roff_node* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %38
  %42 = load %struct.roff_node*, %struct.roff_node** %13, align 8
  %43 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MDOC_Bl, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %60

48:                                               ; preds = %41
  %49 = load %struct.roff_node*, %struct.roff_node** %13, align 8
  %50 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LIST_column, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @ARGSFL_TABSEP, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %57, %48
  br label %64

60:                                               ; preds = %47
  %61 = load %struct.roff_node*, %struct.roff_node** %13, align 8
  %62 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %61, i32 0, i32 2
  %63 = load %struct.roff_node*, %struct.roff_node** %62, align 8
  store %struct.roff_node* %63, %struct.roff_node** %13, align 8
  br label %38

64:                                               ; preds = %59, %38
  br label %65

65:                                               ; preds = %64, %29
  %66 = load %struct.roff_man*, %struct.roff_man** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i8**, i8*** %12, align 8
  %72 = call i32 @args(%struct.roff_man* %66, i32 %67, i32* %68, i8* %69, i32 %70, i8** %71)
  ret i32 %72
}

declare dso_local i32 @args(%struct.roff_man*, i32, i32*, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
