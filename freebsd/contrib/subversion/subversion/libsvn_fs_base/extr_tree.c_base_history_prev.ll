; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_history_prev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_history_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32* }
%struct.history_prev_args = type { i32*, i32, %struct.TYPE_6__*, %struct.TYPE_6__** }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@txn_body_history_prev = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, %struct.TYPE_6__*, i32, i32*, i32*)* @base_history_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_history_prev(%struct.TYPE_6__** %0, %struct.TYPE_6__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.history_prev_args, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %12, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @strcmp(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i32*, i32** %13, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call %struct.TYPE_6__* @assemble_history(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %35, i32 1, i32* null, i32 %36, i32* %37)
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %11, align 8
  br label %54

39:                                               ; preds = %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32*, i32** %13, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %48, 1
  %50 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call %struct.TYPE_6__* @assemble_history(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %49, i32 1, i32* null, i32 %50, i32* %51)
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %11, align 8
  br label %53

53:                                               ; preds = %44, %39
  br label %54

54:                                               ; preds = %53, %31
  br label %85

55:                                               ; preds = %5
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %11, align 8
  br label %57

57:                                               ; preds = %55, %83
  %58 = getelementptr inbounds %struct.history_prev_args, %struct.history_prev_args* %14, i32 0, i32 3
  store %struct.TYPE_6__** %11, %struct.TYPE_6__*** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.history_prev_args, %struct.history_prev_args* %14, i32 0, i32 2
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.history_prev_args, %struct.history_prev_args* %14, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds %struct.history_prev_args, %struct.history_prev_args* %14, i32 0, i32 0
  store i32* %63, i32** %64, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @txn_body_history_prev, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @svn_fs_base__retry_txn(i32* %65, i32 %66, %struct.history_prev_args* %14, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %57
  br label %84

74:                                               ; preds = %57
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %12, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %84

83:                                               ; preds = %74
  br label %57

84:                                               ; preds = %82, %73
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %87 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %87, align 8
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %88
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.TYPE_6__* @assemble_history(i32*, i8*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32*, i32, %struct.history_prev_args*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
