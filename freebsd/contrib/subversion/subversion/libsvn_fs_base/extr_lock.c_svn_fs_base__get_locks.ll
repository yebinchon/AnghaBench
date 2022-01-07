; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__get_locks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__get_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.locks_get_args = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@txn_body_get_locks = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@APR_SIZE_MAX = common dso_local global i32 0, align 4
@SVN_ERR_MALFORMED_FILE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__get_locks(i32* %0, i8* %1, i32 %2, i32 (i8*, i32*, i32*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32 (i8*, i32*, i32*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.locks_get_args, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 (i8*, i32*, i32*)* %3, i32 (i8*, i32*, i32*)** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call i32* @svn_pool_create(i32* %27)
  store i32* %28, i32** %18, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @svn_fs__check_fs(i32* %29, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @svn_fs__canonicalize_abspath(i8* %33, i32* %34)
  %36 = getelementptr inbounds %struct.locks_get_args, %struct.locks_get_args* %14, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds %struct.locks_get_args, %struct.locks_get_args* %14, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @svn_spillbuf__create(i32 4096, i32 65536, i32* %39)
  %41 = load i32*, i32** %13, align 8
  %42 = call i32* @svn_stream__from_spillbuf(i32 %40, i32* %41)
  %43 = getelementptr inbounds %struct.locks_get_args, %struct.locks_get_args* %14, i32 0, i32 0
  store i32* %42, i32** %43, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @txn_body_get_locks, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @svn_fs_base__retry_txn(i32* %44, i32 %45, %struct.locks_get_args* %14, i32 %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = getelementptr inbounds %struct.locks_get_args, %struct.locks_get_args* %14, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %15, align 8
  br label %52

52:                                               ; preds = %6, %98
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @svn_pool_clear(i32* %53)
  %55 = load i32*, i32** %15, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i32 @svn_stream_readline(i32* %55, %struct.TYPE_3__** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %17, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i64, i64* %17, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %113

62:                                               ; preds = %52
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @APR_SIZE_MAX, align 4
  %67 = call i32* @svn_cstring_strtoui64(i64* %25, i32 %65, i32 0, i32 %66, i32 10)
  store i32* %67, i32** %26, align 8
  %68 = load i32*, i32** %26, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @SVN_ERR_MALFORMED_FILE, align 4
  %72 = load i32*, i32** %26, align 8
  %73 = call i32* @svn_error_create(i32 %71, i32* %72, i32* null)
  store i32* %73, i32** %7, align 8
  br label %120

74:                                               ; preds = %62
  %75 = load i64, i64* %25, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %20, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i8* @apr_palloc(i32* %77, i32 %79)
  store i8* %80, i8** %22, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i8*, i8** %22, align 8
  %83 = call i32 @svn_stream_read_full(i32* %81, i8* %82, i32* %20)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i8*, i8** %22, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 0, i8* %88, align 1
  store i32 1, i32* %19, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @svn_stream_read_full(i32* %89, i8* %21, i32* %19)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i8, i8* %21, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 10
  br i1 %94, label %95, label %98

95:                                               ; preds = %74
  %96 = load i32, i32* @SVN_ERR_MALFORMED_FILE, align 4
  %97 = call i32* @svn_error_create(i32 %96, i32* null, i32* null)
  store i32* %97, i32** %7, align 8
  br label %120

98:                                               ; preds = %74
  %99 = load i8*, i8** %22, align 8
  %100 = load i32, i32* %20, align 4
  %101 = load i32*, i32** %18, align 8
  %102 = call i32* @svn_skel__parse(i8* %99, i32 %100, i32* %101)
  store i32* %102, i32** %23, align 8
  %103 = load i32*, i32** %23, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = call i32 @svn_fs_base__parse_lock_skel(i32** %24, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %11, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i32*, i32** %24, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = call i32 %107(i8* %108, i32* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  br label %52

113:                                              ; preds = %61
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @svn_stream_close(i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i32*, i32** %18, align 8
  %118 = call i32 @svn_pool_destroy(i32* %117)
  %119 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %119, i32** %7, align 8
  br label %120

120:                                              ; preds = %113, %95, %70
  %121 = load i32*, i32** %7, align 8
  ret i32* %121
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32 @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32* @svn_stream__from_spillbuf(i32, i32*) #1

declare dso_local i32 @svn_spillbuf__create(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32*, i32, %struct.locks_get_args*, i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_stream_readline(i32*, %struct.TYPE_3__**, i8*, i64*, i32*) #1

declare dso_local i32* @svn_cstring_strtoui64(i64*, i32, i32, i32, i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_stream_read_full(i32*, i8*, i32*) #1

declare dso_local i32* @svn_skel__parse(i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_base__parse_lock_skel(i32**, i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
