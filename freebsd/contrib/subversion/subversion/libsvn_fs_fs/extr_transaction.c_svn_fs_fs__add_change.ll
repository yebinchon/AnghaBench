; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__add_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__add_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i8*, i8* }

@APR_APPEND = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i32 0, align 4
@svn_tristate_false = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__add_change(i32* %0, i32* %1, i8* %2, i32* %3, i32 %4, i8* %5, i8* %6, i8* %7, i32 %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_4__*, align 8
  %27 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %28 = load i32*, i32** %24, align 8
  %29 = call i32* @apr_hash_make(i32* %28)
  store i32* %29, i32** %27, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32*, i32** %24, align 8
  %33 = call i32 @path_txn_changes(i32* %30, i32* %31, i32* %32)
  %34 = load i32, i32* @APR_APPEND, align 4
  %35 = load i32, i32* @APR_WRITE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @APR_CREATE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @APR_OS_DEFAULT, align 4
  %40 = load i32*, i32** %24, align 8
  %41 = call i32 @svn_io_file_open(i32** %25, i32 %33, i32 %38, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32*, i32** %24, align 8
  %46 = call %struct.TYPE_4__* @svn_fs__path_change_create_internal(i32* %43, i32 %44, i32* %45)
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %26, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 6
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %20, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %12
  %56 = load i32, i32* @svn_tristate_true, align 4
  br label %59

57:                                               ; preds = %12
  %58 = load i32, i32* @svn_tristate_false, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %21, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @TRUE, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %22, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i8*, i8** %23, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %59
  %75 = load i32*, i32** %24, align 8
  %76 = load i8*, i8** %23, align 8
  %77 = call i32 @apr_pstrdup(i32* %75, i8* %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %74, %59
  %81 = load i32*, i32** %27, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %84 = call i32 @svn_hash_sets(i32* %81, i8* %82, %struct.TYPE_4__* %83)
  %85 = load i32*, i32** %25, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = load i32*, i32** %24, align 8
  %88 = call i32 @svn_stream_from_aprfile2(i32* %85, i32 %86, i32* %87)
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %27, align 8
  %91 = load i32, i32* @FALSE, align 4
  %92 = load i32*, i32** %24, align 8
  %93 = call i32 @svn_fs_fs__write_changes(i32 %88, i32* %89, i32* %90, i32 %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** %25, align 8
  %96 = load i32*, i32** %24, align 8
  %97 = call i32* @svn_io_file_close(i32* %95, i32* %96)
  ret i32* %97
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @path_txn_changes(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @svn_fs__path_change_create_internal(i32*, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @svn_fs_fs__write_changes(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32* @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
