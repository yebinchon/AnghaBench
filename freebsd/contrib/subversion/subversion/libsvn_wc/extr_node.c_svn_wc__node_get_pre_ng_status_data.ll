; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__node_get_pre_ng_status_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_node.c_svn_wc__node_get_pre_ng_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__node_get_pre_ng_status_data(i32* %0, i32* %1, i32* %2, i8** %3, %struct.TYPE_3__* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8** %3, i8*** %13, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i8**, i8*** %13, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %15, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = call i32 @svn_wc__db_read_info(i64* %18, i32* null, i32* %22, i32* null, i32* null, i32* null, i32* %23, i32* %24, i8** %25, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %19, i64* %20, i64* %21, i32 %28, i8* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %21, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @SVN_IS_VALID_REVNUM(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %36
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @SVN_IS_VALID_REVNUM(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47, %39
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* @svn_wc__db_status_added, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %47, %44, %8
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %9, align 8
  br label %100

62:                                               ; preds = %56, %52
  %63 = load i64, i64* %19, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i64, i64* %20, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load i8**, i8*** %13, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %15, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* %69, i32* null, i32* null, i32* null, i32* %70, i32* %71, i8** %72, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %75, i8* %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %98

81:                                               ; preds = %65, %62
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i8**, i8*** %13, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %15, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @svn_wc__db_read_pristine_info(i32* null, i32* null, i32* %86, i32* %87, i8** %88, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %91, i8* %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  br label %97

97:                                               ; preds = %85, %81
  br label %98

98:                                               ; preds = %97, %68
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %99, i32** %9, align 8
  br label %100

100:                                              ; preds = %98, %60
  %101 = load i32*, i32** %9, align 8
  ret i32* %101
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i64*, i32, i8*, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_info(i32*, i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
