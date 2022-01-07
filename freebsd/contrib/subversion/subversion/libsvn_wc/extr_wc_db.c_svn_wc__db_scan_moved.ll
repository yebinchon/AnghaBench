; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_scan_moved.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_scan_moved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@svn_wc__db_status_moved_here = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Path '%s' was not moved here\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_scan_moved(i8** %0, i8** %1, i8** %2, i8** %3, i32* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i8** %3, i8*** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  store i32 -1, i32* %24, align 4
  %26 = load i8*, i8** %15, align 8
  %27 = call i32 @svn_dirent_is_absolute(i8* %26)
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load i32*, i32** %14, align 8
  %30 = load i8*, i8** %15, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_7__** %18, i8** %19, i32* %29, i8* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %36 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_7__* %35)
  %37 = load i8**, i8*** %11, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %8
  br label %41

40:                                               ; preds = %8
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi i8** [ %21, %39 ], [ null, %40 ]
  %43 = load i8**, i8*** %10, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %47

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %45
  %48 = phi i8** [ %22, %45 ], [ null, %46 ]
  %49 = load i8**, i8*** %12, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i8**, i8*** %13, align 8
  %53 = icmp ne i8** %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %47
  br label %56

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi i8** [ %23, %54 ], [ null, %55 ]
  %58 = load i8**, i8*** %13, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %62

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %60
  %63 = phi i32* [ %24, %60 ], [ null, %61 ]
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %65 = load i8*, i8** %19, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = call i32 @scan_addition(i64* %20, i8** %42, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %48, i8** %57, i32* %63, %struct.TYPE_7__* %64, i8* %65, i32* %66, i32* %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %70 = call i32 @SVN_WC__DB_WITH_TXN(i32 %68, %struct.TYPE_7__* %69)
  %71 = load i64, i64* %20, align 8
  %72 = load i64, i64* @svn_wc__db_status_moved_here, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i8*, i8** %22, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %74, %62
  %78 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %79 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %81 = load i8*, i8** %19, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = call i32 @path_for_error_message(%struct.TYPE_7__* %80, i8* %81, i32* %82)
  %84 = call i32* @svn_error_createf(i32 %78, i32* null, i32 %79, i32 %83)
  store i32* %84, i32** %9, align 8
  br label %135

85:                                               ; preds = %74
  %86 = load i8**, i8*** %11, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %21, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i8* @svn_dirent_join(i32 %91, i8* %92, i32* %93)
  %95 = load i8**, i8*** %11, align 8
  store i8* %94, i8** %95, align 8
  br label %96

96:                                               ; preds = %88, %85
  %97 = load i8**, i8*** %10, align 8
  %98 = icmp ne i8** %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %22, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = call i8* @svn_dirent_join(i32 %102, i8* %103, i32* %104)
  %106 = load i8**, i8*** %10, align 8
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %99, %96
  %108 = load i8**, i8*** %12, align 8
  %109 = icmp ne i8** %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %23, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = call i8* @svn_dirent_join(i32 %113, i8* %114, i32* %115)
  %117 = load i8**, i8*** %12, align 8
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %110, %107
  %119 = load i8**, i8*** %13, align 8
  %120 = icmp ne i8** %119, null
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load i8*, i8** %23, align 8
  %123 = load i32, i32* %24, align 4
  %124 = load i32*, i32** %17, align 8
  %125 = call i8* @svn_relpath_prefix(i8* %122, i32 %123, i32* %124)
  store i8* %125, i8** %25, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %25, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = call i8* @svn_dirent_join(i32 %128, i8* %129, i32* %130)
  %132 = load i8**, i8*** %13, align 8
  store i8* %131, i8** %132, align 8
  br label %133

133:                                              ; preds = %121, %118
  %134 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %134, i32** %9, align 8
  br label %135

135:                                              ; preds = %133, %77
  %136 = load i32*, i32** %9, align 8
  ret i32* %136
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_7__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_7__*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @scan_addition(i64*, i8**, i32*, i32*, i32*, i32*, i32*, i8**, i8**, i32*, %struct.TYPE_7__*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i8* @svn_relpath_prefix(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
