; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__read_current.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_util.c_svn_fs_fs__read_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Corrupt 'current' file\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__read_current(i32* %0, i64* %1, i64* %2, %struct.TYPE_8__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %12, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @svn_fs_fs__path_current(%struct.TYPE_8__* %18, i32* %19)
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @svn_fs_fs__read_content(%struct.TYPE_7__** %13, i32 %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @svn_revnum_parse(i32* %30, i32 %33, i8** null)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i64*, i64** %8, align 8
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 0, i64* %37, align 8
  br label %80

38:                                               ; preds = %5
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @svn_revnum_parse(i32* %39, i32 %42, i8** %14)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i8*, i8** %14, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 32
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %51 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %52 = call i32* @svn_error_create(i32 %50, i32* null, i32 %51)
  store i32* %52, i32** %6, align 8
  br label %82

53:                                               ; preds = %38
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i64 @svn__base36toui64(i8** %14, i8* %55)
  %57 = load i64*, i64** %8, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 32
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %64 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %65 = call i32* @svn_error_create(i32 %63, i32* null, i32 %64)
  store i32* %65, i32** %6, align 8
  br label %82

66:                                               ; preds = %53
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = call i64 @svn__base36toui64(i8** %14, i8* %68)
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 10
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %77 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %78 = call i32* @svn_error_create(i32 %76, i32* null, i32 %77)
  store i32* %78, i32** %6, align 8
  br label %82

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %29
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %6, align 8
  br label %82

82:                                               ; preds = %80, %75, %62, %49
  %83 = load i32*, i32** %6, align 8
  ret i32* %83
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__read_content(%struct.TYPE_7__**, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__path_current(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_revnum_parse(i32*, i32, i8**) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn__base36toui64(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
