; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_fetch_base_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_fetch_base_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.dump_edit_baton = type { i32, i64 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8**, i8*, i8*, i64, i32*, i32*)* @fetch_base_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @fetch_base_func(i8** %0, i8* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dump_edit_baton*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.dump_edit_baton*
  store %struct.dump_edit_baton* %18, %struct.dump_edit_baton** %14, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %24, %6
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @SVN_IS_VALID_REVNUM(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %14, align 8
  %33 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @svn_stream_open_unique(i32** %15, i8** %37, i32* null, i32 %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %14, align 8
  %44 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call %struct.TYPE_8__* @svn_ra_get_file(i32 %45, i8* %46, i64 %47, i32* %48, i32* null, i32* null, i32* %49)
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %16, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %36
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %61 = call i32 @svn_error_clear(%struct.TYPE_8__* %60)
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @svn_stream_close(i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i8**, i8*** %8, align 8
  store i8* null, i8** %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %7, align 8
  br label %79

67:                                               ; preds = %53, %36
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %69 = icmp ne %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %72 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %71)
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %7, align 8
  br label %79

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @svn_stream_close(i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %7, align 8
  br label %79

79:                                               ; preds = %74, %70, %59
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %80
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_ra_get_file(i32, i8*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
