; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_scan_deletion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_scan_deletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_scan_deletion(i8** %0, i8** %1, i8** %2, i8** %3, i32* %4, i8* %5, i32* %6, i32* %7) #0 {
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
  %22 = alloca i8*, align 8
  store i8** %0, i8*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = call i32 @svn_dirent_is_absolute(i8* %23)
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load i32*, i32** %13, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_6__** %17, i8** %18, i32* %26, i8* %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %33 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_6__* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %35 = load i8*, i8** %18, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @scan_deletion(i8** %19, i8** %20, i8** %21, i8** %22, %struct.TYPE_6__* %34, i8* %35, i32* %36, i32* %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %40 = call i32 @SVN_WC__DB_WITH_TXN(i32 %38, %struct.TYPE_6__* %39)
  %41 = load i8**, i8*** %9, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %8
  %44 = load i8*, i8** %19, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %19, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = call i8* @svn_dirent_join(i32 %49, i8* %50, i32* %51)
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %46
  %55 = phi i8* [ %52, %46 ], [ null, %53 ]
  %56 = load i8**, i8*** %9, align 8
  store i8* %55, i8** %56, align 8
  br label %57

57:                                               ; preds = %54, %8
  %58 = load i8**, i8*** %10, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load i8*, i8** %20, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %20, align 8
  %68 = load i32*, i32** %15, align 8
  %69 = call i8* @svn_dirent_join(i32 %66, i8* %67, i32* %68)
  br label %71

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %63
  %72 = phi i8* [ %69, %63 ], [ null, %70 ]
  %73 = load i8**, i8*** %10, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %71, %57
  %75 = load i8**, i8*** %11, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i8*, i8** %21, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %21, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = call i8* @svn_dirent_join(i32 %83, i8* %84, i32* %85)
  br label %88

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %80
  %89 = phi i8* [ %86, %80 ], [ null, %87 ]
  %90 = load i8**, i8*** %11, align 8
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %88, %74
  %92 = load i8**, i8*** %12, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load i8*, i8** %22, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %22, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = call i8* @svn_dirent_join(i32 %100, i8* %101, i32* %102)
  br label %105

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %97
  %106 = phi i8* [ %103, %97 ], [ null, %104 ]
  %107 = load i8**, i8*** %12, align 8
  store i8* %106, i8** %107, align 8
  br label %108

108:                                              ; preds = %105, %91
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %109
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_6__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_6__*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @scan_deletion(i8**, i8**, i8**, i8**, %struct.TYPE_6__*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
