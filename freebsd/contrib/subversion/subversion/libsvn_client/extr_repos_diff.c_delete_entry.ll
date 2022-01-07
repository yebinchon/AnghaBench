; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i64, %struct.edit_baton* }
%struct.edit_baton = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
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
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.dir_baton*
  store %struct.dir_baton* %15, %struct.dir_baton** %10, align 8
  %16 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %17 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %16, i32 0, i32 1
  %18 = load %struct.edit_baton*, %struct.edit_baton** %17, align 8
  store %struct.edit_baton* %18, %struct.edit_baton** %11, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %20 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %24, i32** %5, align 8
  br label %58

25:                                               ; preds = %4
  %26 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @svn_pool_create(i32 %28)
  store i32* %29, i32** %13, align 8
  %30 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %31 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %35 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_ra_check_path(i32 %32, i8* %33, i32 %36, i32* %12, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %53 [
    i32 128, label %41
    i32 129, label %47
  ]

41:                                               ; preds = %25
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @diff_deleted_file(i8* %42, %struct.dir_baton* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %54

47:                                               ; preds = %25
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @diff_deleted_dir(i8* %48, %struct.dir_baton* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %54

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53, %47, %41
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_pool_destroy(i32* %55)
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %54, %23
  %59 = load i32*, i32** %5, align 8
  ret i32* %59
}

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_check_path(i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @diff_deleted_file(i8*, %struct.dir_baton*, i32*) #1

declare dso_local i32 @diff_deleted_dir(i8*, %struct.dir_baton*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
