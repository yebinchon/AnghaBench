; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_util.c_svn_fs_x__try_stringbuf_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_util.c_svn_fs_x__try_stringbuf_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@EIO = common dso_local global i64 0, align 8
@ESTALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_fs_x__try_stringbuf_from_file(i32** %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32**, i32*** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call %struct.TYPE_8__* @svn_stringbuf_from_file2(i32** %13, i8* %14, i32* %15)
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %12, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @FALSE, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load i32**, i32*** %7, align 8
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @APR_STATUS_IS_ENOENT(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = call i32 @svn_error_clear(%struct.TYPE_8__* %36)
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %6, align 8
  br label %50

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %46, %22
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %48)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %6, align 8
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  ret %struct.TYPE_8__* %51
}

declare dso_local %struct.TYPE_8__* @svn_stringbuf_from_file2(i32**, i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
