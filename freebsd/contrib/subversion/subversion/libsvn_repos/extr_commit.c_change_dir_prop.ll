; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_change_dir_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_change_dir_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i64, i32, %struct.edit_baton* }
%struct.edit_baton = type { i32 }

@svn_authz_write = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_dir_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_dir_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dir_baton*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.dir_baton*
  store %struct.dir_baton* %13, %struct.dir_baton** %9, align 8
  %14 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %15 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %14, i32 0, i32 3
  %16 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  store %struct.edit_baton* %16, %struct.edit_baton** %10, align 8
  %17 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %18 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %4
  %22 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %23 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %24 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @svn_authz_write, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @check_authz(%struct.edit_baton* %22, i32 %25, i32 %28, i32 %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %34 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @SVN_IS_VALID_REVNUM(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %21
  %39 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %40 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %43 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @svn_fs_node_created_rev(i32* %11, i32 %41, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %49 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %50 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @svn_node_dir, align 4
  %53 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %54 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @check_out_of_date(%struct.edit_baton* %48, i32 %51, i32 %52, i32 %55, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %38, %21
  %60 = load i64, i64* @TRUE, align 8
  %61 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %62 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %4
  %64 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %65 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %68 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32* @svn_repos_fs_change_node_prop(i32 %66, i32 %69, i8* %70, i32* %71, i32* %72)
  ret i32* %73
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_authz(%struct.edit_baton*, i32, i32, i32, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_fs_node_created_rev(i32*, i32, i32, i32*) #1

declare dso_local i32 @check_out_of_date(%struct.edit_baton*, i32, i32, i32, i32) #1

declare dso_local i32* @svn_repos_fs_change_node_prop(i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
