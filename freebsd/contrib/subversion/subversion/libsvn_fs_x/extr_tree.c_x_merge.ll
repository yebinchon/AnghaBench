; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i8* }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Bad merge; ancestor, source, and target not all in same fs\00", align 1
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_20__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (i8**, %struct.TYPE_19__*, i8*, %struct.TYPE_19__*, i8*, %struct.TYPE_19__*, i8*, i32*)* @x_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @x_merge(i8** %0, %struct.TYPE_19__* %1, i8* %2, %struct.TYPE_19__* %3, i8* %4, %struct.TYPE_19__* %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  store i8** %0, i8*** %10, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %17, align 8
  %24 = call %struct.TYPE_18__* @svn_stringbuf_create_empty(i32* %23)
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %22, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %31 = call %struct.TYPE_20__* @SVN_FS__NOT_TXN(%struct.TYPE_19__* %30)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %9, align 8
  br label %99

32:                                               ; preds = %8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40, %32
  %49 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %51 = call %struct.TYPE_20__* @svn_error_create(i32 %49, i32* null, i32 %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %9, align 8
  br label %99

52:                                               ; preds = %40
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @get_root(i32** %19, %struct.TYPE_19__* %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = call i32 @get_root(i32** %18, %struct.TYPE_19__* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @svn_fs_x__open_txn(i32** %20, i32 %65, i32 %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32*, i32** %19, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call %struct.TYPE_20__* @merge_changes(i32* %72, i32* %73, i32* %74, %struct.TYPE_18__* %75, i32* %76)
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %21, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %79 = icmp ne %struct.TYPE_20__* %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %52
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SVN_ERR_FS_CONFLICT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load i8**, i8*** %10, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8**, i8*** %10, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %86, %80
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %96 = call %struct.TYPE_20__* @svn_error_trace(%struct.TYPE_20__* %95)
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %9, align 8
  br label %99

97:                                               ; preds = %52
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %9, align 8
  br label %99

99:                                               ; preds = %97, %94, %48, %29
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  ret %struct.TYPE_20__* %100
}

declare dso_local %struct.TYPE_18__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local %struct.TYPE_20__* @SVN_FS__NOT_TXN(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root(i32**, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__open_txn(i32**, i32, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @merge_changes(i32*, i32*, i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_20__* @svn_error_trace(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
