; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_info_receiver_relpath_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_info_receiver_relpath_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info_to_relpath_baton = type { i32, i32 (i32, i8*, i32*, i32*)*, i32, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @info_receiver_relpath_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @info_receiver_relpath_wrapper(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.info_to_relpath_baton*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.info_to_relpath_baton*
  store %struct.info_to_relpath_baton* %13, %struct.info_to_relpath_baton** %9, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %10, align 8
  %15 = load %struct.info_to_relpath_baton*, %struct.info_to_relpath_baton** %9, align 8
  %16 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %4
  %20 = load %struct.info_to_relpath_baton*, %struct.info_to_relpath_baton** %9, align 8
  %21 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @svn_dirent_is_ancestor(i32 %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.info_to_relpath_baton*, %struct.info_to_relpath_baton** %9, align 8
  %28 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.info_to_relpath_baton*, %struct.info_to_relpath_baton** %9, align 8
  %31 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @svn_dirent_skip_ancestor(i32 %32, i8* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i8* @svn_dirent_join(i64 %29, i32 %34, i32* %35)
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %26, %19, %4
  %38 = load %struct.info_to_relpath_baton*, %struct.info_to_relpath_baton** %9, align 8
  %39 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @info_from_info2(i32** %11, i32 %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.info_to_relpath_baton*, %struct.info_to_relpath_baton** %9, align 8
  %46 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %45, i32 0, i32 1
  %47 = load i32 (i32, i8*, i32*, i32*)*, i32 (i32, i8*, i32*, i32*)** %46, align 8
  %48 = load %struct.info_to_relpath_baton*, %struct.info_to_relpath_baton** %9, align 8
  %49 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 %47(i32 %50, i8* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %56
}

declare dso_local i64 @svn_dirent_is_ancestor(i32, i8*) #1

declare dso_local i8* @svn_dirent_join(i64, i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @info_from_info2(i32**, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
