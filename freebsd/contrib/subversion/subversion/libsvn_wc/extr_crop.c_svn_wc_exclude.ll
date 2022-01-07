; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_crop.c_svn_wc_exclude.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_crop.c_svn_wc_exclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cannot exclude '%s': it is a working copy root\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Cannot exclude '%s': it is a switched path\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"Cannot exclude '%s': it is to be added to the repository. Try commit instead\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"Cannot exclude '%s': it is to be deleted from the repository. Try commit instead\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_exclude = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_exclude(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 (i8*, i32*, i32*)* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i32*, i32*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 (i8*, i32*, i32*)* %4, i32 (i8*, i32*, i32*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @svn_wc__db_is_switched(i64* %16, i64* %17, i32* null, i32 %30, i8* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %16, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %7
  %38 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %40 = load i8*, i8** %10, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @svn_dirent_local_style(i8* %40, i32* %41)
  %43 = call i32* @svn_error_createf(i32 %38, i32* null, i32 %39, i32 %42)
  store i32* %43, i32** %8, align 8
  br label %153

44:                                               ; preds = %7
  %45 = load i64, i64* %17, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %49 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %10, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @svn_dirent_local_style(i8* %50, i32* %51)
  %53 = call i32* @svn_error_createf(i32 %48, i32* null, i32 %49, i32 %52)
  store i32* %53, i32** %8, align 8
  br label %153

54:                                               ; preds = %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @svn_wc__db_read_info(i32* %18, i32* %19, i32* %20, i8** %24, i8** %25, i8** %26, i32* null, i32* null, i32* null, i32* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %57, i8* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32, i32* %18, align 4
  switch i32 %63, label %86 [
    i32 128, label %64
    i32 132, label %64
    i32 129, label %64
    i32 134, label %71
    i32 133, label %78
    i32 130, label %85
    i32 131, label %85
  ]

64:                                               ; preds = %54, %54, %54
  %65 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %66 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i8*, i8** %10, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @svn_dirent_local_style(i8* %67, i32* %68)
  %70 = call i32* @svn_error_createf(i32 %65, i32* null, i32 %66, i32 %69)
  store i32* %70, i32** %8, align 8
  br label %153

71:                                               ; preds = %54
  %72 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i8*, i8** %10, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @svn_dirent_local_style(i8* %74, i32* %75)
  %77 = call i32* @svn_error_createf(i32 %72, i32* null, i32 %73, i32 %76)
  store i32* %77, i32** %8, align 8
  br label %153

78:                                               ; preds = %54
  %79 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %80 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i8*, i8** %10, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @svn_dirent_local_style(i8* %81, i32* %82)
  %84 = call i32* @svn_error_createf(i32 %79, i32* null, i32 %80, i32 %83)
  store i32* %84, i32** %8, align 8
  br label %153

85:                                               ; preds = %54, %54
  br label %86

86:                                               ; preds = %54, %85
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 @svn_wc__node_has_local_mods(i64* %22, i64* %23, i32 %90, i8* %91, i32 %92, i32 %93, i8* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i64, i64* %22, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = load i64, i64* %23, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %137

103:                                              ; preds = %100, %87
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* @FALSE, align 4
  %109 = load i32, i32* @FALSE, align 4
  %110 = load i32, i32* @TRUE, align 4
  %111 = load i32, i32* %20, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @svn_wc__db_base_remove(i32 %106, i8* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32* null, i32* null, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %12, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = call i32 @svn_wc__wq_run(i32 %117, i8* %118, i32 %119, i8* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %13, align 8
  %125 = icmp ne i32 (i8*, i32*, i32*)* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %103
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* @svn_wc_notify_exclude, align 4
  %129 = load i32*, i32** %15, align 8
  %130 = call i32* @svn_wc_create_notify(i8* %127, i32 %128, i32* %129)
  store i32* %130, i32** %27, align 8
  %131 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %13, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = load i32*, i32** %27, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 %131(i8* %132, i32* %133, i32* %134)
  br label %136

136:                                              ; preds = %126, %103
  br label %151

137:                                              ; preds = %100
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %10, align 8
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* @svn_depth_empty, align 4
  %144 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %13, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i8*, i8** %12, align 8
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @crop_children(i32 %140, i8* %141, i32 %142, i32 %143, i32 (i8*, i32*, i32*)* %144, i8* %145, i32 %146, i8* %147, i32* %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  br label %151

151:                                              ; preds = %137, %136
  %152 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %152, i32** %8, align 8
  br label %153

153:                                              ; preds = %151, %78, %71, %64, %47, %37
  %154 = load i32*, i32** %8, align 8
  ret i32* %154
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_is_switched(i64*, i64*, i32*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i32*, i32*, i8**, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__node_has_local_mods(i64*, i64*, i32, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_base_remove(i32, i8*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @crop_children(i32, i8*, i32, i32, i32 (i8*, i32*, i32*)*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
