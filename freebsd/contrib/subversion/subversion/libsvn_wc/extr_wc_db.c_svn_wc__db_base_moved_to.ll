; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_moved_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_moved_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_moved_to(i8** %0, i8** %1, i8** %2, i8** %3, i32* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8** %0, i8*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i32 @svn_dirent_is_absolute(i8* %22)
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load i32*, i32** %13, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_6__** %17, i8** %18, i32* %25, i8* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %32 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_6__* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = call i32 @svn_wc__db_scan_moved_to_internal(i8** %20, i8** %19, i8** %21, %struct.TYPE_6__* %33, i8* %34, i32 0, i32* %35, i32* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %39 = call i32 @SVN_WC__DB_WITH_TXN(i32 %37, %struct.TYPE_6__* %38)
  %40 = load i8**, i8*** %9, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %42, label %61

42:                                               ; preds = %8
  %43 = load i8*, i8** %19, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = load i8*, i8** %20, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = call i8* @svn_relpath_skip_ancestor(i8* %50, i8* %51)
  %53 = load i32*, i32** %16, align 8
  %54 = call i8* @svn_dirent_join(i8* %49, i8* %52, i32* %53)
  %55 = load i32*, i32** %15, align 8
  %56 = call i8* @svn_dirent_join(i8* %48, i8* %54, i32* %55)
  br label %58

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %45
  %59 = phi i8* [ %56, %45 ], [ null, %57 ]
  %60 = load i8**, i8*** %9, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %58, %8
  %62 = load i8**, i8*** %10, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i8*, i8** %19, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %19, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = call i8* @svn_dirent_join(i8* %70, i8* %71, i32* %72)
  br label %75

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %67
  %76 = phi i8* [ %73, %67 ], [ null, %74 ]
  %77 = load i8**, i8*** %10, align 8
  store i8* %76, i8** %77, align 8
  br label %78

78:                                               ; preds = %75, %61
  %79 = load i8**, i8*** %11, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i8*, i8** %20, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8*, i8** %20, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i8* @svn_dirent_join(i8* %87, i8* %88, i32* %89)
  br label %92

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %84
  %93 = phi i8* [ %90, %84 ], [ null, %91 ]
  %94 = load i8**, i8*** %11, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %92, %78
  %96 = load i8**, i8*** %12, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i8*, i8** %21, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** %21, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i8* @svn_dirent_join(i8* %104, i8* %105, i32* %106)
  br label %109

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %101
  %110 = phi i8* [ %107, %101 ], [ null, %108 ]
  %111 = load i8**, i8*** %12, align 8
  store i8* %110, i8** %111, align 8
  br label %112

112:                                              ; preds = %109, %95
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %113
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_6__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_6__*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @svn_wc__db_scan_moved_to_internal(i8**, i8**, i8**, %struct.TYPE_6__*, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
