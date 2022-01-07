; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__things_different.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__things_different.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__things_different(i32* %0, i32* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %22, i32** %7, align 8
  br label %86

23:                                               ; preds = %18, %6
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_6__** %14, i32 %26, i32 %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_6__** %15, i32 %36, i32 %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %23
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @svn_fs_base__same_keys(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %46, %23
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %84

61:                                               ; preds = %58
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @svn_fs_base__same_keys(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @svn_fs_base__same_keys(i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %70, %61
  %80 = phi i1 [ false, %61 ], [ %78, %70 ]
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %58
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %7, align 8
  br label %86

86:                                               ; preds = %84, %21
  %87 = load i32*, i32** %7, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_6__**, i32, i32, i32*, i32*) #1

declare dso_local i64 @svn_fs_base__same_keys(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
