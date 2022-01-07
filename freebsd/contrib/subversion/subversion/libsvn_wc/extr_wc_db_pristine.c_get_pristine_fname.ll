; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_get_pristine_fname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_pristine.c_get_pristine_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@svn_checksum_sha1 = common dso_local global i64 0, align 8
@PRISTINE_STORAGE_RELPATH = common dso_local global i8* null, align 8
@SVN_VA_NULL = common dso_local global i32 0, align 4
@PRISTINE_STORAGE_EXT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8*, %struct.TYPE_4__*, i32*, i32*)* @get_pristine_fname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pristine_fname(i8** %0, i8* %1, %struct.TYPE_4__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [3 x i8], align 1
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i8* @svn_checksum_to_cstring(%struct.TYPE_4__* %14, i32* %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8**, i8*** %6, align 8
  %18 = icmp ne i8** %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @svn_dirent_is_absolute(i8* %21)
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @SVN_ERR_ASSERT(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @svn_checksum_sha1, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i8* @svn_wc_get_adm_dir(i32* %37)
  %39 = load i8*, i8** @PRISTINE_STORAGE_RELPATH, align 8
  %40 = load i32, i32* @SVN_VA_NULL, align 4
  %41 = call i8* @svn_dirent_join_many(i32* %35, i8* %36, i8* %38, i8* %39, i32 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @SVN_ERR_ASSERT(i32 %44)
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  store i8 %48, i8* %49, align 1
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  store i8 %52, i8* %53, align 1
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 2
  store i8 0, i8* %54, align 1
  %55 = load i32*, i32** %10, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* @PRISTINE_STORAGE_EXT, align 4
  %58 = load i32, i32* @SVN_VA_NULL, align 4
  %59 = call i8* @apr_pstrcat(i32* %55, i8* %56, i32 %57, i32 %58)
  store i8* %59, i8** %12, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %63 = load i8*, i8** %12, align 8
  %64 = load i32, i32* @SVN_VA_NULL, align 4
  %65 = call i8* @svn_dirent_join_many(i32* %60, i8* %61, i8* %62, i8* %63, i32 %64)
  %66 = load i8**, i8*** %6, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %67
}

declare dso_local i8* @svn_checksum_to_cstring(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i8* @svn_dirent_join_many(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i8* @svn_wc_get_adm_dir(i32*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
