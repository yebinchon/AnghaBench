; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i8*, %struct.edit_baton* }
%struct.edit_baton = type { i32, i32 }

@svn_authz_write = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_authz_recursive = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*, i32*)* @delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_entry(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.dir_baton*
  store %struct.dir_baton* %17, %struct.dir_baton** %10, align 8
  %18 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %19 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %18, i32 0, i32 1
  %20 = load %struct.edit_baton*, %struct.edit_baton** %19, align 8
  store %struct.edit_baton* %20, %struct.edit_baton** %11, align 8
  %21 = load i32, i32* @svn_authz_write, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @svn_relpath_canonicalize(i8* %25, i32* %26)
  %28 = load i32*, i32** %9, align 8
  %29 = call i8* @svn_fspath__join(i32 %24, i32 %27, i32* %28)
  store i8* %29, i8** %14, align 8
  %30 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %31 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %14, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @svn_fs_check_path(i64* %12, i32 %32, i8* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @svn_node_dir, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load i32, i32* @svn_authz_recursive, align 4
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %40, %4
  %45 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %48 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @check_authz(%struct.edit_baton* %45, i8* %46, i32 %49, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %55 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %56 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %59 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @svn_authz_write, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @check_authz(%struct.edit_baton* %54, i8* %57, i32 %60, i32 %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @svn_node_none, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %44
  %69 = load i8*, i8** %14, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @out_of_date(i8* %69, i64 %70)
  %72 = call i32* @svn_error_trace(i32 %71)
  store i32* %72, i32** %5, align 8
  br label %100

73:                                               ; preds = %44
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @SVN_IS_VALID_REVNUM(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %79 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @svn_fs_node_created_rev(i32* %15, i32 %80, i8* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @check_out_of_date(%struct.edit_baton* %85, i8* %86, i64 %87, i32 %88, i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %92

92:                                               ; preds = %77, %73
  %93 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %94 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %14, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @svn_fs_delete(i32 %95, i8* %96, i32* %97)
  %99 = call i32* @svn_error_trace(i32 %98)
  store i32* %99, i32** %5, align 8
  br label %100

100:                                              ; preds = %92, %68
  %101 = load i32*, i32** %5, align 8
  ret i32* %101
}

declare dso_local i8* @svn_fspath__join(i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32, i8*, i32*) #1

declare dso_local i32 @check_authz(%struct.edit_baton*, i8*, i32, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @out_of_date(i8*, i64) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_fs_node_created_rev(i32*, i32, i8*, i32*) #1

declare dso_local i32 @check_out_of_date(%struct.edit_baton*, i8*, i64, i32, i32) #1

declare dso_local i32 @svn_fs_delete(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
