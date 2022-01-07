; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_lock.c_svn_fs_base__lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_args = type { i8*, i64, i32, i32*, i32, i8*, i8*, i32, i32** }
%struct.TYPE_3__ = type { i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No such revision %ld\00", align 1
@txn_body_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__lock(i32* %0, i32* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32* (i8*, i32, i32*, i32*, i32*)* %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32* (i8*, i32, i32*, i32*, i32*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.lock_args, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_3__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32* (i8*, i32, i32*, i32*, i32*)* %6, i32* (i8*, i32, i32*, i32*, i32*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %22, align 8
  %31 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %31, i64* %23, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = call i32* @svn_pool_create(i32* %32)
  store i32* %33, i32** %24, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @svn_fs__check_fs(i32* %34, i32 %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %20, align 8
  %40 = call i32 @svn_fs_base__youngest_rev(i64* %23, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %20, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32* @apr_hash_first(i32* %42, i32* %43)
  store i32* %44, i32** %21, align 8
  br label %45

45:                                               ; preds = %124, %10
  %46 = load i32*, i32** %21, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %127

48:                                               ; preds = %45
  %49 = load i32*, i32** %21, align 8
  %50 = call i8* @apr_hash_this_key(i32* %49)
  store i8* %50, i8** %26, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = call %struct.TYPE_3__* @apr_hash_this_val(i32* %51)
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %27, align 8
  store i32* null, i32** %29, align 8
  %53 = load i32*, i32** %24, align 8
  %54 = call i32 @svn_pool_clear(i32* %53)
  %55 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 8
  store i32** %28, i32*** %55, align 8
  %56 = load i8*, i8** %26, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = call i32 @svn_fs__canonicalize_abspath(i8* %56, i32* %57)
  %59 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 7
  store i32 %62, i32* %63, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 6
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 5
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %15, align 4
  %71 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 4
  store i32 %70, i32* %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 3
  store i32* %76, i32** %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @SVN_IS_VALID_REVNUM(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %48
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %23, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %91 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32* @svn_error_createf(i32 %90, i32* null, i32 %91, i64 %94)
  store i32* %95, i32** %29, align 8
  br label %96

96:                                               ; preds = %89, %83
  br label %97

97:                                               ; preds = %96, %48
  %98 = load i32*, i32** %29, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @txn_body_lock, align 4
  %103 = load i32, i32* @TRUE, align 4
  %104 = load i32*, i32** %24, align 8
  %105 = call i32* @svn_fs_base__retry_txn(i32* %101, i32 %102, %struct.lock_args* %25, i32 %103, i32* %104)
  store i32* %105, i32** %29, align 8
  br label %106

106:                                              ; preds = %100, %97
  %107 = load i32*, i32** %22, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %121, label %109

109:                                              ; preds = %106
  %110 = load i32* (i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i32, i32*, i32*, i32*)** %17, align 8
  %111 = icmp ne i32* (i8*, i32, i32*, i32*, i32*)* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32* (i8*, i32, i32*, i32*, i32*)*, i32* (i8*, i32, i32*, i32*, i32*)** %17, align 8
  %114 = load i8*, i8** %18, align 8
  %115 = getelementptr inbounds %struct.lock_args, %struct.lock_args* %25, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %28, align 8
  %118 = load i32*, i32** %29, align 8
  %119 = load i32*, i32** %24, align 8
  %120 = call i32* %113(i8* %114, i32 %116, i32* %117, i32* %118, i32* %119)
  store i32* %120, i32** %22, align 8
  br label %121

121:                                              ; preds = %112, %109, %106
  %122 = load i32*, i32** %29, align 8
  %123 = call i32 @svn_error_clear(i32* %122)
  br label %124

124:                                              ; preds = %121
  %125 = load i32*, i32** %21, align 8
  %126 = call i32* @apr_hash_next(i32* %125)
  store i32* %126, i32** %21, align 8
  br label %45

127:                                              ; preds = %45
  %128 = load i32*, i32** %24, align 8
  %129 = call i32 @svn_pool_destroy(i32* %128)
  %130 = load i32*, i32** %22, align 8
  %131 = call i32* @svn_error_trace(i32* %130)
  ret i32* %131
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32 @svn_fs_base__youngest_rev(i64*, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_3__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_fs_base__retry_txn(i32*, i32, %struct.lock_args*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
