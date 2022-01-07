; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_nested.c_svn_branch__instantiate_elements_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_nested.c_svn_branch__instantiate_elements_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_branch__instantiate_elements_r(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = bitcast %struct.TYPE_9__* %5 to { %struct.TYPE_11__*, i32 }*
  %14 = getelementptr inbounds { %struct.TYPE_11__*, i32 }, { %struct.TYPE_11__*, i32 }* %13, i32 0, i32 0
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %14, align 8
  %15 = getelementptr inbounds { %struct.TYPE_11__*, i32 }, { %struct.TYPE_11__*, i32 }* %13, i32 0, i32 1
  store i32 %2, i32* %15, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %3, i32** %7, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @branch_instantiate_elements(%struct.TYPE_10__* %16, %struct.TYPE_11__* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @apr_hash_first(i32* %22, i32 %24)
  store i32* %25, i32** %8, align 8
  br label %26

26:                                               ; preds = %63, %4
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %66

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @svn_eid__hash_this_key(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = call %struct.TYPE_9__* @apr_hash_this_val(i32* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %10, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i8* @svn_branch__id_nest(i32 %36, i32 %37, i32* %38)
  store i8* %39, i8** %11, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32* @svn_branch__txn_open_branch(i32 %42, %struct.TYPE_10__** %12, i8* %43, i32 %48, i32* null, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = bitcast %struct.TYPE_9__* %54 to { %struct.TYPE_11__*, i32 }*
  %57 = getelementptr inbounds { %struct.TYPE_11__*, i32 }, { %struct.TYPE_11__*, i32 }* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds { %struct.TYPE_11__*, i32 }, { %struct.TYPE_11__*, i32 }* %56, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32* @svn_branch__instantiate_elements_r(%struct.TYPE_10__* %53, %struct.TYPE_11__* %58, i32 %60, i32* %55)
  %62 = call i32 @SVN_ERR(i32* %61)
  br label %63

63:                                               ; preds = %29
  %64 = load i32*, i32** %8, align 8
  %65 = call i32* @apr_hash_next(i32* %64)
  store i32* %65, i32** %8, align 8
  br label %26

66:                                               ; preds = %26
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %67
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @branch_instantiate_elements(%struct.TYPE_10__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i32 @svn_eid__hash_this_key(i32*) #1

declare dso_local %struct.TYPE_9__* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_branch__id_nest(i32, i32, i32*) #1

declare dso_local i32* @svn_branch__txn_open_branch(i32, %struct.TYPE_10__**, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
