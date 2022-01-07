; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__add_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__add_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }

@APR_APPEND = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@svn_tristate_true = common dso_local global i32 0, align 4
@svn_tristate_false = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__add_change(i32* %0, i32 %1, i8* %2, i32 %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_5__, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %26 = load i32*, i32** %22, align 8
  %27 = call i32* @apr_hash_make(i32* %26)
  store i32* %27, i32** %25, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %22, align 8
  %31 = call i32 @svn_fs_x__path_txn_changes(i32* %28, i32 %29, i32* %30)
  %32 = load i32, i32* @APR_APPEND, align 4
  %33 = load i32, i32* @APR_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @APR_CREATE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @APR_OS_DEFAULT, align 4
  %38 = load i32*, i32** %22, align 8
  %39 = call i32 @svn_io_file_open(i32** %23, i32 %31, i32 %36, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %15, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 7
  store i32 %48, i32* %49, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 6
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %11
  %57 = load i32, i32* @svn_tristate_true, align 4
  br label %60

58:                                               ; preds = %11
  %59 = load i32, i32* @svn_tristate_false, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* %19, align 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %20, align 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i8*, i8** %21, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load i32*, i32** %22, align 8
  %73 = load i8*, i8** %21, align 8
  %74 = call i32 @apr_pstrdup(i32* %72, i8* %73)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  br label %76

76:                                               ; preds = %71, %60
  %77 = load i32*, i32** %25, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @svn_hash_sets(i32* %77, i8* %78, %struct.TYPE_5__* %24)
  %80 = load i32*, i32** %23, align 8
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i32*, i32** %22, align 8
  %83 = call i32 @svn_stream_from_aprfile2(i32* %80, i32 %81, i32* %82)
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %25, align 8
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32*, i32** %22, align 8
  %88 = call i32 @svn_fs_x__write_changes(i32 %83, i32* %84, i32* %85, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** %23, align 8
  %91 = load i32*, i32** %22, align 8
  %92 = call i32* @svn_io_file_close(i32* %90, i32* %91)
  ret i32* %92
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_changes(i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @svn_fs_x__write_changes(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32* @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
