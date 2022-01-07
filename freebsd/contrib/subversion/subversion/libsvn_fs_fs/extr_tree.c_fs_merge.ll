; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i8* }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Bad merge; ancestor, source, and target not all in same fs\00", align 1
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_20__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (i8**, %struct.TYPE_19__*, i8*, %struct.TYPE_19__*, i8*, %struct.TYPE_19__*, i8*, i32*)* @fs_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @fs_merge(i8** %0, %struct.TYPE_19__* %1, i8* %2, %struct.TYPE_19__* %3, i8* %4, %struct.TYPE_19__* %5, i8* %6, i32* %7) #0 {
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
  br label %97

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
  br label %97

52:                                               ; preds = %40
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @get_root(i32** %19, %struct.TYPE_19__* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = call i32 @get_root(i32** %18, %struct.TYPE_19__* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @svn_fs_fs__open_txn(i32** %20, i32 %63, i32 %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %19, align 8
  %71 = load i32*, i32** %18, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call %struct.TYPE_20__* @merge_changes(i32* %70, i32* %71, i32* %72, %struct.TYPE_18__* %73, i32* %74)
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %21, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %77 = icmp ne %struct.TYPE_20__* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %52
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SVN_ERR_FS_CONFLICT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i8**, i8*** %10, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8**, i8*** %10, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %87, %84, %78
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %94 = call %struct.TYPE_20__* @svn_error_trace(%struct.TYPE_20__* %93)
  store %struct.TYPE_20__* %94, %struct.TYPE_20__** %9, align 8
  br label %97

95:                                               ; preds = %52
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %9, align 8
  br label %97

97:                                               ; preds = %95, %92, %48, %29
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  ret %struct.TYPE_20__* %98
}

declare dso_local %struct.TYPE_18__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local %struct.TYPE_20__* @SVN_FS__NOT_TXN(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_root(i32**, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_fs__open_txn(i32**, i32, i32, i32*) #1

declare dso_local %struct.TYPE_20__* @merge_changes(i32*, i32*, i32*, %struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_20__* @svn_error_trace(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
