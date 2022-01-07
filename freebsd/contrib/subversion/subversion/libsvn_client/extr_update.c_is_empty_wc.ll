; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_update.c_is_empty_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_update.c_is_empty_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_10__* null, align 8
@APR_FINFO_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i8*, i8*, i32*)* @is_empty_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @is_empty_wc(i32* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @TRUE, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call %struct.TYPE_10__* @svn_io_dir_open(i32** %10, i8* %15, i32* %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %12, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @APR_STATUS_IS_ENOENT(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %31 = call i32 @svn_error_clear(%struct.TYPE_10__* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %5, align 8
  br label %109

33:                                               ; preds = %4
  %34 = load i32, i32* @APR_FINFO_NAME, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call %struct.TYPE_10__* @svn_io_dir_read(%struct.TYPE_11__* %11, i32 %34, i32* %35, i32* %36)
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %12, align 8
  br label %38

38:                                               ; preds = %86, %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  %41 = icmp eq %struct.TYPE_10__* %39, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 46
  br i1 %48, label %49, label %70

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %63, %56, %42
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @svn_wc_is_adm_dir(i8* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i64 @strcmp(i8* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %70
  %82 = load i32, i32* @FALSE, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  br label %91

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %63, %49
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* @APR_FINFO_NAME, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call %struct.TYPE_10__* @svn_io_dir_read(%struct.TYPE_11__* %11, i32 %87, i32* %88, i32* %89)
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %12, align 8
  br label %38

91:                                               ; preds = %81, %38
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = icmp ne %struct.TYPE_10__* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @APR_STATUS_IS_ENOENT(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @FALSE, align 4
  %102 = load i32*, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %94
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %105 = call i32 @svn_error_clear(%struct.TYPE_10__* %104)
  br label %106

106:                                              ; preds = %103, %91
  %107 = load i32*, i32** %10, align 8
  %108 = call %struct.TYPE_10__* @svn_io_dir_close(i32* %107)
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %5, align 8
  br label %109

109:                                              ; preds = %106, %29
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %110
}

declare dso_local %struct.TYPE_10__* @svn_io_dir_open(i32**, i8*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @svn_io_dir_read(%struct.TYPE_11__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc_is_adm_dir(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_10__* @svn_io_dir_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
