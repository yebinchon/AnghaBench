; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_and_increment_txn_key_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_get_and_increment_txn_key_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_4__ = type { i32 }

@SVN_INT64_BUFFER_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @get_and_increment_txn_key_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_and_increment_txn_key_body(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i8* @svn_fs_x__path_txn_current(i32* %21, i32* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i32, i32* @SVN_INT64_BUFFER_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @svn_fs_x__read_content(%struct.TYPE_4__** %11, i8* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @svn__base36toui64(i32* null, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %42, %2
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i64, i64* @TRUE, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @svn_pool_clear(i32* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i8* @svn_fs_x__path_txn_dir(i32* %54, i64 %57, i32* %58)
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @svn_io_check_path(i8* %60, i64* %13, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @svn_node_none, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %51
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* @APR_OS_DEFAULT, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @svn_io_dir_make(i8* %68, i32 %69, i32* %70)
  br label %77

72:                                               ; preds = %51
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %48

77:                                               ; preds = %67, %48
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  %83 = call i32 @svn__ui64tobase36(i8* %27, i64 %82)
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @svn_io_write_atomic2(i8* %78, i8* %27, i32 %83, i8* %84, i32 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @svn_pool_destroy(i32* %89)
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  %92 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32* %91
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i8* @svn_fs_x__path_txn_current(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__read_content(%struct.TYPE_4__**, i8*, i32*) #1

declare dso_local i64 @svn__base36toui64(i32*, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_fs_x__path_txn_dir(i32*, i64, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_write_atomic2(i8*, i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn__ui64tobase36(i8*, i64) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
