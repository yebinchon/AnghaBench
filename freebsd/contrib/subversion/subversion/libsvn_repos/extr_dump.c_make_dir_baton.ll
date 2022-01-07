; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_make_dir_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_make_dir_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i8*, i8*, i32*, i8*, i32, i8*, i32, %struct.edit_baton* }
%struct.edit_baton = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_baton* (i8*, i8*, i32, i8*, %struct.dir_baton*, i32*)* @make_dir_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_baton* @make_dir_baton(i8* %0, i8* %1, i32 %2, i8* %3, %struct.dir_baton* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.edit_baton*, align 8
  %14 = alloca %struct.dir_baton*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.dir_baton* %4, %struct.dir_baton** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.edit_baton*
  store %struct.edit_baton* %17, %struct.edit_baton** %13, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call %struct.dir_baton* @apr_pcalloc(i32* %18, i32 64)
  store %struct.dir_baton* %19, %struct.dir_baton** %14, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %24 = icmp ne %struct.dir_baton* %23, null
  br label %25

25:                                               ; preds = %22, %6
  %26 = phi i1 [ true, %6 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %27)
  %29 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %30 = icmp ne %struct.dir_baton* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %33 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i8* @svn_relpath_join(i32 %34, i8* %35, i32* %36)
  store i8* %37, i8** %15, align 8
  br label %44

38:                                               ; preds = %25
  %39 = load i32*, i32** %12, align 8
  %40 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @apr_pstrdup(i32* %39, i32 %42)
  store i8* %43, i8** %15, align 8
  br label %44

44:                                               ; preds = %38, %31
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i8* @svn_relpath_canonicalize(i8* %48, i32* %49)
  store i8* %50, i8** %8, align 8
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %53 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %54 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %53, i32 0, i32 7
  store %struct.edit_baton* %52, %struct.edit_baton** %54, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %57 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %60 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %63 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @FALSE, align 8
  %65 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %66 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @apr_hash_make(i32* %67)
  %69 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %70 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @FALSE, align 8
  %72 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %73 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %76 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  ret %struct.dir_baton* %77
}

declare dso_local %struct.dir_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local i8* @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
