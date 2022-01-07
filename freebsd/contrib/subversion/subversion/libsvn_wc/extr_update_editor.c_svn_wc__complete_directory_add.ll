; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc__complete_directory_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_svn_wc__complete_directory_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"'%s' is not an unmodified copied directory\00", align 1
@SVN_ERR_WC_COPYFROM_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Copyfrom '%s' doesn't match original location of '%s'\00", align 1
@svn_depth_infinity = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__complete_directory_add(%struct.TYPE_3__* %0, i8* %1, i32* %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @svn_wc__db_read_info(i64* %14, i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %16, i8** %17, i8** %18, i64* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %19, i64* %20, i32* null, i32* null, i32* null, i32 %29, i8* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @svn_wc__db_status_added, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %6
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* @svn_node_dir, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %19, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %20, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %48, %45, %42, %38, %6
  %52 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %53 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %54 = load i8*, i8** %9, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_dirent_local_style(i8* %54, i32* %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %52, i32* null, i32 %53, i8* %58)
  store i32* %59, i32** %7, align 8
  br label %112

60:                                               ; preds = %48
  %61 = load i64, i64* %21, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @svn_path_url_add_component2(i8* %66, i8* %67, i32* %68)
  %70 = call i64 @strcmp(i8* %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %64, %60
  %73 = load i32, i32* @SVN_ERR_WC_COPYFROM_PATH_NOT_FOUND, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = call i32 @svn_dirent_local_style(i8* %76, i32* %77)
  %79 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %73, i32* null, i32 %74, i8* %75, i32 %78)
  store i32* %79, i32** %7, align 8
  br label %112

80:                                               ; preds = %64
  %81 = load i32*, i32** %10, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @svn_prop_hash_to_array(i32* %81, i32* %82)
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @svn_categorize_props(i32 %83, i32** %26, i32* null, i32** %25, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %25, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i32* @svn_prop_array_to_hash(i32* %87, i32* %88)
  store i32* %89, i32** %10, align 8
  %90 = load i32*, i32** %26, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @accumulate_last_change(i64* %22, i32* %23, i8** %24, i32* %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i64, i64* %22, align 8
  %101 = load i32, i32* %23, align 4
  %102 = load i8*, i8** %24, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = load i8*, i8** %18, align 8
  %106 = load i64, i64* %21, align 8
  %107 = load i32, i32* @svn_depth_infinity, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @svn_wc__db_op_copy_dir(i32 %97, i8* %98, i32* %99, i64 %100, i32 %101, i8* %102, i8* %103, i8* %104, i8* %105, i64 %106, i32* null, i32 %107, i32 %108, i32* null, i32* null, i32* %109)
  %111 = call i32* @svn_error_trace(i32 %110)
  store i32* %111, i32** %7, align 8
  br label %112

112:                                              ; preds = %80, %72, %51
  %113 = load i32*, i32** %7, align 8
  ret i32* %113
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i8**, i8**, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_categorize_props(i32, i32**, i32*, i32**, i32*) #1

declare dso_local i32 @svn_prop_hash_to_array(i32*, i32*) #1

declare dso_local i32* @svn_prop_array_to_hash(i32*, i32*) #1

declare dso_local i32 @accumulate_last_change(i64*, i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__db_op_copy_dir(i32, i8*, i32*, i64, i32, i8*, i8*, i8*, i8*, i64, i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
