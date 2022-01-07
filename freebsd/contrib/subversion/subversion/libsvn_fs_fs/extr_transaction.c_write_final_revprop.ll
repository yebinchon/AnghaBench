; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_final_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_final_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@SVN_FS__PROP_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_TRUNCATE = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_HASH_TERMINATOR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i64, i32*)* @write_final_revprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_final_revprop(i8* %0, i8* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @svn_fs_fs__txn_proplist(i32** %11, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %22 = call i32 @svn_hash_sets(i32* %20, i32 %21, %struct.TYPE_4__* null)
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %25 = call i32 @svn_hash_sets(i32* %23, i32 %24, %struct.TYPE_4__* null)
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %28 = call %struct.TYPE_4__* @svn_hash_gets(i32* %26, i32 %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %13, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %34 = call i32 @svn_hash_sets(i32* %32, i32 %33, %struct.TYPE_4__* null)
  br label %35

35:                                               ; preds = %31, %5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @strcmp(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38, %35
  %45 = call i32 (...) @apr_time_now()
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @svn_time_to_cstring(i32 %45, i32* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %55 = call i32 @svn_hash_sets(i32* %53, i32 %54, %struct.TYPE_4__* %12)
  br label %56

56:                                               ; preds = %44, %38
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* @APR_WRITE, align 4
  %59 = load i32, i32* @APR_CREATE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @APR_TRUNCATE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @APR_BUFFERED, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @APR_OS_DEFAULT, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @svn_io_file_open(i32** %14, i8* %57, i32 %64, i32 %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i32* @svn_stream_from_aprfile2(i32* %69, i32 %70, i32* %71)
  store i32* %72, i32** %15, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @svn_hash_write2(i32* %73, i32* %74, i32 %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @svn_stream_close(i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %56
  %85 = load i32*, i32** %14, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @svn_io_file_flush_to_disk(i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  br label %89

89:                                               ; preds = %84, %56
  %90 = load i32*, i32** %14, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @svn_io_file_close(i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @svn_io_copy_perms(i8* %94, i8* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %99
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__txn_proplist(i32**, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @svn_hash_gets(i32*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32*) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_hash_write2(i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_io_file_flush_to_disk(i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
