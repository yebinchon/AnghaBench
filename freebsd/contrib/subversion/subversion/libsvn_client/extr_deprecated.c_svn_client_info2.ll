; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_info2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_info2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.info_to_relpath_baton = type { i8*, i8*, i32, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@info_receiver_relpath_wrapper = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_info2(i8* %0, i32* %1, i32* %2, i32 %3, i8* %4, i32 %5, i32* %6, %struct.TYPE_4__* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.info_to_relpath_baton, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %19, i32 0, i32 0
  store i8* null, i8** %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %19, i32 0, i32 4
  store i32 %23, i32* %24, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %19, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %19, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @svn_path_is_url(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %9
  %35 = load i8*, i8** %10, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = call i32 @svn_dirent_get_absolute(i8** %20, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i8*, i8** %20, align 8
  %40 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %19, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds %struct.info_to_relpath_baton, %struct.info_to_relpath_baton* %19, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %34, %9
  %44 = load i8*, i8** %20, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* @info_receiver_relpath_wrapper, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = call i32 @svn_client_info3(i8* %44, i32* %45, i32* %46, i32 %47, i32 %48, i32 %49, i32* %50, i32 %51, %struct.info_to_relpath_baton* %19, %struct.TYPE_4__* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %56
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_client_info3(i8*, i32*, i32*, i32, i32, i32, i32*, i32, %struct.info_to_relpath_baton*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
