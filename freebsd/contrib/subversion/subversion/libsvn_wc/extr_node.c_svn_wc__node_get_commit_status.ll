; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__node_get_commit_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__node_get_commit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__node_get_commit_status(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8** %6, %struct.TYPE_3__* %7, i8* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8** %6, i8*** %18, align 8
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i8**, i8*** %18, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %20, align 8
  %34 = load i32*, i32** %21, align 8
  %35 = load i32*, i32** %22, align 8
  %36 = call i32 @svn_wc__db_read_info(i64* %23, i32* null, i32* %27, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i8** %28, i32* null, i32* null, i32* %29, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %26, i32* null, i32* null, i32* %24, i32* %25, i32* null, i32 %32, i8* %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %12, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %11
  %41 = load i64, i64* %23, align 8
  %42 = load i64, i64* @svn_wc__db_status_added, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %12, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %11
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i64, i64* %23, align 8
  %51 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i32*, i32** %15, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %26, align 4
  %60 = load i32*, i32** %15, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32*, i32** %14, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load i64, i64* %23, align 8
  %66 = load i64, i64* @svn_wc__db_status_added, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load i32, i32* %26, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i32, i32* %24, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %25, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74, %71
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %20, align 8
  %83 = load i32*, i32** %22, align 8
  %84 = call i32 @svn_wc__db_node_check_replace(i32* %78, i32* null, i32* null, i32 %81, i8* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %89

86:                                               ; preds = %74, %68, %64
  %87 = load i32, i32* @FALSE, align 4
  %88 = load i32*, i32** %14, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %77
  br label %90

90:                                               ; preds = %89, %61
  %91 = load i32, i32* %24, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %117

93:                                               ; preds = %90
  %94 = load i32, i32* %25, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %117, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %26, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load i32*, i32** %16, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %99
  %103 = load i32*, i32** %16, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @SVN_IS_VALID_REVNUM(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %16, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %20, align 8
  %113 = load i32*, i32** %22, align 8
  %114 = load i32*, i32** %22, align 8
  %115 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* %108, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %111, i8* %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %117

117:                                              ; preds = %107, %102, %99, %96, %93, %90
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %118
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_node_check_replace(i32*, i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
