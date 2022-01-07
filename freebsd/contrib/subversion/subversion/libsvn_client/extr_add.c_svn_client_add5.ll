; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_svn_client_add5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_svn_client_add5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"'%s' is not a local path\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_EXISTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"'%s' is already under version control\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @svn_client_add5(i8* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.TYPE_14__* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = call i64 @svn_path_is_url(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %8
  %29 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %10, align 8
  %32 = call %struct.TYPE_13__* @svn_error_createf(i32 %29, i32* null, i32 %30, i8* %31)
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  br label %137

33:                                               ; preds = %8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = call i32 @svn_dirent_get_absolute(i8** %19, i8* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %19, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call %struct.TYPE_13__* @svn_wc__is_wcroot(i64* %21, i32 %40, i8* %41, i32* %42)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %22, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %45 = icmp ne %struct.TYPE_13__* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %33
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %60 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %59)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %9, align 8
  br label %137

61:                                               ; preds = %52, %46
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %63 = call i32 @svn_error_clear(%struct.TYPE_13__* %62)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %22, align 8
  %64 = load i64, i64* @FALSE, align 8
  store i64 %64, i64* %21, align 8
  br label %65

65:                                               ; preds = %61, %33
  %66 = load i64, i64* %21, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @SVN_ERR_ENTRY_EXISTS, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i8*, i8** %19, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = call i8* @svn_dirent_local_style(i8* %74, i32* %75)
  %77 = call %struct.TYPE_13__* @svn_error_createf(i32 %72, i32* null, i32 %73, i8* %76)
  store %struct.TYPE_13__* %77, %struct.TYPE_13__** %9, align 8
  br label %137

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i64, i64* %21, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i8*, i8** %19, align 8
  store i8* %83, i8** %18, align 8
  br label %88

84:                                               ; preds = %79
  %85 = load i8*, i8** %19, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = call i8* @svn_dirent_dirname(i8* %85, i32* %86)
  store i8* %87, i8** %18, align 8
  br label %88

88:                                               ; preds = %84, %82
  store i8* null, i8** %20, align 8
  %89 = load i64, i64* %15, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load i64, i64* %21, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %112, label %94

94:                                               ; preds = %91
  %95 = load i32*, i32** %17, align 8
  %96 = call i32* @svn_pool_create(i32* %95)
  store i32* %96, i32** %23, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = load i32*, i32** %23, align 8
  %101 = call i32 @find_existing_parent(i8** %24, %struct.TYPE_14__* %97, i8* %98, i32* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i8*, i8** %24, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = call i64 @strcmp(i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %94
  %108 = load i8*, i8** %24, align 8
  store i8* %108, i8** %20, align 8
  br label %109

109:                                              ; preds = %107, %94
  %110 = load i32*, i32** %23, align 8
  %111 = call i32 @svn_pool_destroy(i32* %110)
  br label %112

112:                                              ; preds = %109, %91, %88
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = call i32 @add(i8* %113, i32 %114, i64 %115, i64 %116, i64 %117, i8* %118, %struct.TYPE_14__* %119, i32* %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %20, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %112
  %128 = load i8*, i8** %20, align 8
  br label %131

129:                                              ; preds = %112
  %130 = load i8*, i8** %18, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i8* [ %128, %127 ], [ %130, %129 ]
  %133 = load i64, i64* @FALSE, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %121, i32 %124, i8* %132, i64 %133, i32* %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %9, align 8
  br label %137

137:                                              ; preds = %131, %71, %58, %28
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  ret %struct.TYPE_13__* %138
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local %struct.TYPE_13__* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_wc__is_wcroot(i64*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @find_existing_parent(i8**, %struct.TYPE_14__*, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @add(i8*, i32, i64, i64, i64, i8*, %struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
