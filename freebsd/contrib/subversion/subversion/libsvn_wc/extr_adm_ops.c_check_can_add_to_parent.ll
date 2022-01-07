; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_check_can_add_to_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_check_can_add_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Can't find parent directory's node while trying to add '%s'\00", align 1
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@SVN_ERR_WC_SCHEDULE_CONFLICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Can't add '%s' to a parent directory scheduled for deletion\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Can't schedule an addition of '%s' below a not-directory node\00", align 1
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i32*, i8*, i32*, i32*)* @check_can_add_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_can_add_to_parent(i8** %0, i8** %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call i8* @svn_dirent_dirname(i8* %18, i32* %19)
  store i8* %20, i8** %14, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i32 @svn_wc__write_check(i32* %21, i8* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8**, i8*** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32* @svn_wc__db_read_info(i64* %15, i64* %16, i32* null, i32* null, i8** %26, i8** %27, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %28, i8* %29, i32* %30, i32* %31)
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %6
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43, %39, %35, %6
  %48 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** %11, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @svn_dirent_local_style(i8* %51, i32* %52)
  %54 = call i32* @svn_error_createf(i32 %48, i32* %49, i32 %50, i32 %53)
  store i32* %54, i32** %7, align 8
  br label %118

55:                                               ; preds = %43
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* @SVN_ERR_WC_SCHEDULE_CONFLICT, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %11, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @svn_dirent_local_style(i8* %62, i32* %63)
  %65 = call i32* @svn_error_createf(i32 %60, i32* null, i32 %61, i32 %64)
  store i32* %65, i32** %7, align 8
  br label %118

66:                                               ; preds = %55
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* @svn_node_dir, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %72 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i8*, i8** %11, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @svn_dirent_local_style(i8* %73, i32* %74)
  %76 = call i32* @svn_error_createf(i32 %71, i32* null, i32 %72, i32 %75)
  store i32* %76, i32** %7, align 8
  br label %118

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  %80 = load i8**, i8*** %8, align 8
  %81 = icmp ne i8** %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i8**, i8*** %8, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %82, %79
  %87 = load i8**, i8*** %9, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %116

89:                                               ; preds = %86
  %90 = load i8**, i8*** %9, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %116, label %93

93:                                               ; preds = %89, %82
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* @svn_wc__db_status_added, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i8**, i8*** %8, align 8
  %99 = load i8**, i8*** %9, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @svn_wc__db_scan_addition(i32* null, i32* null, i32* null, i8** %98, i8** %99, i32* null, i32* null, i32* null, i32* null, i32* %100, i8* %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %115

106:                                              ; preds = %93
  %107 = load i8**, i8*** %8, align 8
  %108 = load i8**, i8*** %9, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* null, i32* null, i8** %107, i8** %108, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %109, i8* %110, i32* %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  br label %115

115:                                              ; preds = %106, %97
  br label %116

116:                                              ; preds = %115, %89, %86
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %7, align 8
  br label %118

118:                                              ; preds = %116, %70, %59, %47
  %119 = load i32*, i32** %7, align 8
  ret i32* %119
}

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__write_check(i32*, i8*, i32*) #1

declare dso_local i32* @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_scan_addition(i32*, i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i8**, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
