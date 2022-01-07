; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rbtree.c_rbtree_find_less_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_rbtree.c_rbtree_find_less_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32 (i8*, i32)*, %struct.TYPE_8__* }

@RBTREE_NULL = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rbtree_find_less_equal(%struct.TYPE_7__* %0, i8* %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %7, align 8
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %11 = call i32 @log_assert(%struct.TYPE_8__** %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %9, align 8
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32 (i8*, i32)*, i32 (i8*, i32)** %17, align 8
  %19 = call i32 @fptr_whitelist_rbtree_cmp(i32 (i8*, i32)* %18)
  %20 = call i32 @fptr_ok(i32 %19)
  br label %21

21:                                               ; preds = %52, %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @RBTREE_NULL, align 8
  %24 = icmp ne %struct.TYPE_8__* %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32 (i8*, i32)*, i32 (i8*, i32)** %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %28(i8* %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %38, align 8
  store i32 1, i32* %4, align 4
  br label %54

39:                                               ; preds = %25
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %9, align 8
  br label %52

46:                                               ; preds = %39
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %9, align 8
  br label %52

52:                                               ; preds = %46, %42
  br label %21

53:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @log_assert(%struct.TYPE_8__**) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_rbtree_cmp(i32 (i8*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
