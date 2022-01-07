; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_prepare_tmpfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnlook/extr_svnlook.c_prepare_tmpfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i32*, i32*, i8*, i32*, i8*, i32*, i32*)* @prepare_tmpfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prepare_tmpfiles(i8** %0, i8** %1, i32* %2, i32* %3, i8* %4, i32* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca i32*, align 8
  store i8** %0, i8*** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %22 = load i8**, i8*** %11, align 8
  store i8* null, i8** %22, align 8
  %23 = load i8**, i8*** %12, align 8
  store i8* null, i8** %23, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32*, i32** %13, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i8*, i8** %15, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %9
  %29 = load i8*, i8** %17, align 8
  %30 = icmp ne i8* %29, null
  br label %31

31:                                               ; preds = %28, %9
  %32 = phi i1 [ false, %9 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32*, i32** %14, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @svn_fs_node_prop(%struct.TYPE_3__** %20, i32* %38, i8* %39, i32 %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @svn_mime_type_is_binary(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @TRUE, align 4
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %10, align 8
  br label %106

56:                                               ; preds = %46, %37
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32*, i32** %16, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i32*, i32** %16, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @svn_fs_node_prop(%struct.TYPE_3__** %20, i32* %61, i8* %62, i32 %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @svn_mime_type_is_binary(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @TRUE, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %10, align 8
  br label %106

79:                                               ; preds = %69, %60
  br label %80

80:                                               ; preds = %79, %57
  %81 = load i8**, i8*** %11, align 8
  %82 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %83 = load i32*, i32** %18, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = call i32 @svn_stream_open_unique(i32** %21, i8** %81, i32* null, i32 %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %21, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = call i32 @dump_contents(i32* %87, i32* %88, i8* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i8**, i8*** %12, align 8
  %94 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %95 = load i32*, i32** %18, align 8
  %96 = load i32*, i32** %19, align 8
  %97 = call i32 @svn_stream_open_unique(i32** %21, i8** %93, i32* null, i32 %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** %21, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = call i32 @dump_contents(i32* %99, i32* %100, i8* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %105, i32** %10, align 8
  br label %106

106:                                              ; preds = %80, %75, %52
  %107 = load i32*, i32** %10, align 8
  ret i32* %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_node_prop(%struct.TYPE_3__**, i32*, i8*, i32, i32*) #1

declare dso_local i64 @svn_mime_type_is_binary(i32) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @dump_contents(i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
