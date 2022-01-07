; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_svn_client_patch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_svn_client_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"strip count must be positive\00", align 1
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"'%s' is not a local path\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"'%s' does not exist\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"'%s' is not a file\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"'%s' is not a directory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_patch(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, %struct.TYPE_4__* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_4__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %22, align 8
  store i32* %10, i32** %23, align 8
  %25 = load i32, i32* %16, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %11
  %28 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %29 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = call i32* @svn_error_create(i32 %28, i32* null, i32 %29)
  store i32* %30, i32** %12, align 8
  br label %115

31:                                               ; preds = %11
  %32 = load i8*, i8** %14, align 8
  %33 = call i64 @svn_path_is_url(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %37 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %14, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = call i32 @svn_dirent_local_style(i8* %38, i32* %39)
  %41 = call i32* @svn_error_createf(i32 %36, i32* null, i32 %37, i32 %40)
  store i32* %41, i32** %12, align 8
  br label %115

42:                                               ; preds = %31
  %43 = load i8*, i8** %13, align 8
  %44 = load i32*, i32** %23, align 8
  %45 = call i32 @svn_io_check_path(i8* %43, i64* %24, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i64, i64* %24, align 8
  %48 = load i64, i64* @svn_node_none, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %52 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i8*, i8** %13, align 8
  %54 = load i32*, i32** %23, align 8
  %55 = call i32 @svn_dirent_local_style(i8* %53, i32* %54)
  %56 = call i32* @svn_error_createf(i32 %51, i32* null, i32 %52, i32 %55)
  store i32* %56, i32** %12, align 8
  br label %115

57:                                               ; preds = %42
  %58 = load i64, i64* %24, align 8
  %59 = load i64, i64* @svn_node_file, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %63 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i8*, i8** %13, align 8
  %65 = load i32*, i32** %23, align 8
  %66 = call i32 @svn_dirent_local_style(i8* %64, i32* %65)
  %67 = call i32* @svn_error_createf(i32 %62, i32* null, i32 %63, i32 %66)
  store i32* %67, i32** %12, align 8
  br label %115

68:                                               ; preds = %57
  %69 = load i8*, i8** %14, align 8
  %70 = load i32*, i32** %23, align 8
  %71 = call i32 @svn_io_check_path(i8* %69, i64* %24, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i64, i64* %24, align 8
  %74 = load i64, i64* @svn_node_none, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %78 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i8*, i8** %14, align 8
  %80 = load i32*, i32** %23, align 8
  %81 = call i32 @svn_dirent_local_style(i8* %79, i32* %80)
  %82 = call i32* @svn_error_createf(i32 %77, i32* null, i32 %78, i32 %81)
  store i32* %82, i32** %12, align 8
  br label %115

83:                                               ; preds = %68
  %84 = load i64, i64* %24, align 8
  %85 = load i64, i64* @svn_node_dir, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %89 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i8*, i8** %14, align 8
  %91 = load i32*, i32** %23, align 8
  %92 = call i32 @svn_dirent_local_style(i8* %90, i32* %91)
  %93 = call i32* @svn_error_createf(i32 %88, i32* null, i32 %89, i32 %92)
  store i32* %93, i32** %12, align 8
  br label %115

94:                                               ; preds = %83
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i8*, i8** %21, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %105 = load i32*, i32** %23, align 8
  %106 = call i32 @apply_patches(i8* %95, i8* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i8* %103, %struct.TYPE_4__* %104, i32* %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* @FALSE, align 4
  %112 = load i32*, i32** %23, align 8
  %113 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %106, i32 %109, i8* %110, i32 %111, i32* %112)
  %114 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %114, i32** %12, align 8
  br label %115

115:                                              ; preds = %94, %87, %76, %61, %50, %35, %27
  %116 = load i32*, i32** %12, align 8
  ret i32* %116
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @apply_patches(i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
