; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__read_external_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__read_external_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svn_wc__read_external_info(i32* %0, i8** %1, i8** %2, i32* %3, i32* %4, %struct.TYPE_10__* %5, i8* %6, i8* %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %13, align 8
  store i8** %1, i8*** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %28 = load i8**, i8*** %14, align 8
  %29 = load i8**, i8*** %15, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %11
  br label %33

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32, %31
  %34 = phi i8** [ %24, %31 ], [ null, %32 ]
  %35 = load i8**, i8*** %15, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %20, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = load i32*, i32** %22, align 8
  %44 = load i32*, i32** %23, align 8
  %45 = call %struct.TYPE_11__* @svn_wc__db_external_read(i64* %25, i32* %26, i8** %28, i8** %34, i32* null, i8** %35, i32* %36, i32* %37, i32 %40, i8* %41, i8* %42, i32* %43, i32* %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %27, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %47 = icmp ne %struct.TYPE_11__* %46, null
  br i1 %47, label %48, label %92

48:                                               ; preds = %33
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %21, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %59 = call %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__* %58)
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %12, align 8
  br label %129

60:                                               ; preds = %54
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %62 = call i32 @svn_error_clear(%struct.TYPE_11__* %61)
  %63 = load i32*, i32** %13, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @svn_node_none, align 4
  %67 = load i32*, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8**, i8*** %14, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i8**, i8*** %14, align 8
  store i8* null, i8** %72, align 8
  br label %73

73:                                               ; preds = %71, %68
  %74 = load i8**, i8*** %15, align 8
  %75 = icmp ne i8** %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i8**, i8*** %15, align 8
  store i8* null, i8** %77, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32*, i32** %16, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %83 = load i32*, i32** %16, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32*, i32** %17, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %89 = load i32*, i32** %17, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %12, align 8
  br label %129

92:                                               ; preds = %33
  %93 = load i32*, i32** %13, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = load i64, i64* %25, align 8
  %97 = load i64, i64* @svn_wc__db_status_normal, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @svn_node_unknown, align 4
  %101 = load i32*, i32** %13, align 8
  store i32 %100, i32* %101, align 4
  br label %112

102:                                              ; preds = %95
  %103 = load i32, i32* %26, align 4
  switch i32 %103, label %108 [
    i32 129, label %104
    i32 128, label %104
    i32 130, label %106
  ]

104:                                              ; preds = %102, %102
  %105 = load i32*, i32** %13, align 8
  store i32 129, i32* %105, align 4
  br label %111

106:                                              ; preds = %102
  %107 = load i32*, i32** %13, align 8
  store i32 130, i32* %107, align 4
  br label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @svn_node_none, align 4
  %110 = load i32*, i32** %13, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %106, %104
  br label %112

112:                                              ; preds = %111, %99
  br label %113

113:                                              ; preds = %112, %92
  %114 = load i8**, i8*** %15, align 8
  %115 = icmp ne i8** %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i8**, i8*** %15, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i8*, i8** %24, align 8
  %122 = load i8**, i8*** %15, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i32*, i32** %22, align 8
  %125 = call i8* @svn_path_url_add_component2(i8* %121, i8* %123, i32* %124)
  %126 = load i8**, i8*** %15, align 8
  store i8* %125, i8** %126, align 8
  br label %127

127:                                              ; preds = %120, %116, %113
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %12, align 8
  br label %129

129:                                              ; preds = %127, %90, %57
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  ret %struct.TYPE_11__* %130
}

declare dso_local %struct.TYPE_11__* @svn_wc__db_external_read(i64*, i32*, i8**, i8**, i32*, i8**, i32*, i32*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
