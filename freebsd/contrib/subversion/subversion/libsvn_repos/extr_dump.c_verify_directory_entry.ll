; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_verify_directory_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_verify_directory_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Node '%s' is not a directory.\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Node '%s' is not a file.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unexpected node kind %d for '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i8*, i32*)* @verify_directory_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_directory_entry(i8* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dir_baton*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.dir_baton*
  store %struct.dir_baton* %17, %struct.dir_baton** %12, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %13, align 8
  %20 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %21 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i8* @svn_relpath_join(i32 %22, i8* %23, i32* %24)
  store i8* %25, i8** %14, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %65 [
    i32 129, label %29
    i32 128, label %47
  ]

29:                                               ; preds = %5
  %30 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %31 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @svn_fs_is_dir(i32* %15, i32 %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %14, align 8
  %45 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %42, i32* null, i32 %43, i8* %44)
  store i32* %45, i32** %6, align 8
  br label %75

46:                                               ; preds = %29
  br label %73

47:                                               ; preds = %5
  %48 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %49 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_fs_is_file(i32* %15, i32 %52, i8* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %14, align 8
  %63 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %60, i32* null, i32 %61, i8* %62)
  store i32* %63, i32** %6, align 8
  br label %75

64:                                               ; preds = %47
  br label %73

65:                                               ; preds = %5
  %66 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %67 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %14, align 8
  %72 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %66, i32* null, i32 %67, i32 %70, i8* %71)
  store i32* %72, i32** %6, align 8
  br label %75

73:                                               ; preds = %64, %46
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %6, align 8
  br label %75

75:                                               ; preds = %73, %65, %59, %41
  %76 = load i32*, i32** %6, align 8
  ret i32* %76
}

declare dso_local i8* @svn_relpath_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_is_dir(i32*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_is_file(i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
