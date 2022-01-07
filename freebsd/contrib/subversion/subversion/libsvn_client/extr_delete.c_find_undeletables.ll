; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_delete.c_find_undeletables.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_delete.c_find_undeletables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.can_delete_baton_t = type { i32, i32 }

@svn_wc_status_missing = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_wc_status_obstructed = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"'%s' is in the way of the resource actually under version control\00", align 1
@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"'%s' is not under version control\00", align 1
@svn_wc_status_added = common dso_local global i64 0, align 8
@svn_wc_status_replaced = common dso_local global i64 0, align 8
@svn_wc_status_normal = common dso_local global i64 0, align 8
@svn_wc_status_none = common dso_local global i64 0, align 8
@svn_wc_status_deleted = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_MODIFIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"'%s' has local modifications -- commit or revert them first\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_3__*, i32*)* @find_undeletables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_undeletables(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.can_delete_baton_t*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @svn_wc_status_missing, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.can_delete_baton_t*
  store %struct.can_delete_baton_t* %18, %struct.can_delete_baton_t** %10, align 8
  %19 = load %struct.can_delete_baton_t*, %struct.can_delete_baton_t** %10, align 8
  %20 = getelementptr inbounds %struct.can_delete_baton_t, %struct.can_delete_baton_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i32 %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @TRUE, align 4
  %27 = load %struct.can_delete_baton_t*, %struct.can_delete_baton_t** %10, align 8
  %28 = getelementptr inbounds %struct.can_delete_baton_t, %struct.can_delete_baton_t* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %16
  br label %30

30:                                               ; preds = %29, %4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @svn_wc_status_obstructed, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %38 = call i32 @_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %39 = load i8*, i8** %7, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @svn_dirent_local_style(i8* %39, i32* %40)
  %42 = call i32* @svn_error_createf(i32 %37, i32* null, i32 %38, i32 %41)
  store i32* %42, i32** %5, align 8
  br label %116

43:                                               ; preds = %30
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @SVN_ERR_UNVERSIONED_RESOURCE, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** %7, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @svn_dirent_local_style(i8* %51, i32* %52)
  %54 = call i32* @svn_error_createf(i32 %49, i32* null, i32 %50, i32 %53)
  store i32* %54, i32** %5, align 8
  br label %116

55:                                               ; preds = %43
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @svn_wc_status_added, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @svn_wc_status_replaced, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %61, %55
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @svn_wc_status_normal, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @svn_wc_status_normal, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @svn_wc_status_none, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %73
  br label %112

86:                                               ; preds = %79, %67, %61
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @svn_wc_status_normal, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @svn_wc_status_deleted, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @svn_wc_status_missing, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i32, i32* @SVN_ERR_CLIENT_MODIFIED, align 4
  %106 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i8*, i8** %7, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @svn_dirent_local_style(i8* %107, i32* %108)
  %110 = call i32* @svn_error_createf(i32 %105, i32* null, i32 %106, i32 %109)
  store i32* %110, i32** %5, align 8
  br label %116

111:                                              ; preds = %98, %92, %86
  br label %112

112:                                              ; preds = %111, %85
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %115, i32** %5, align 8
  br label %116

116:                                              ; preds = %114, %104, %48, %36
  %117 = load i32*, i32** %5, align 8
  ret i32* %117
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
