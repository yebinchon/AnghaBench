; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i32, %struct.edit_baton* }
%struct.edit_baton = type { i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_node_action_change = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i8**)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_file(i8* %0, i8* %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca %struct.edit_baton*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.dir_baton*
  store %struct.dir_baton* %16, %struct.dir_baton** %11, align 8
  %17 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %18 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %17, i32 0, i32 2
  %19 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  store %struct.edit_baton* %19, %struct.edit_baton** %12, align 8
  store i8* null, i8** %13, align 8
  %20 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %22 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %25 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ARE_VALID_COPY_ARGS(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %5
  %30 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %31 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @svn_relpath_basename(i8* %33, i32* %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i8* @svn_relpath_join(i32 %32, i32 %35, i32* %36)
  store i8* %37, i8** %13, align 8
  %38 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %39 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %29, %5
  %42 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @svn_node_file, align 4
  %45 = load i32, i32* @svn_node_action_change, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @dump_node(%struct.edit_baton* %42, i8* %43, i32 %44, i32 %45, i32 %46, i8* %47, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i8**, i8*** %10, align 8
  store i8* null, i8** %52, align 8
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %53
}

declare dso_local i64 @ARE_VALID_COPY_ARGS(i32, i32) #1

declare dso_local i8* @svn_relpath_join(i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dump_node(%struct.edit_baton*, i8*, i32, i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
