; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_close_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_close_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@svn_depth_infinity = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @close_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_edit(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.edit_baton*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.edit_baton*
  store %struct.edit_baton* %8, %struct.edit_baton** %5, align 8
  %9 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %10 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  %14 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %15 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @apr_hash_make(i32* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %26 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @svn_hash_sets(i32* %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %18, %13
  %30 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %31 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %34 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @svn_depth_infinity, align 4
  %37 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %38 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %44 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %47 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @apr_hash_make(i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @TRUE, align 4
  %54 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %55 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.edit_baton*, %struct.edit_baton** %5, align 8
  %58 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @svn_wc__db_op_bump_revisions_post_update(i32 %32, i32 %35, i32 %36, i32 %39, i32 %42, i32 %45, i32 %49, i32* %51, i32* %52, i32 %53, i32 %56, i32 %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  br label %63

63:                                               ; preds = %29, %2
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_op_bump_revisions_post_update(i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
