; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_ensure_wc_is_suitable_merge_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_ensure_wc_is_suitable_merge_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Path '%s' does not exist\00", align 1
@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Merge target '%s' does not exist in the working copy\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_CLIENT_NOT_READY_TO_MERGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Cannot determine revision of working copy\00", align 1
@SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"Cannot merge into mixed-revision working copy [%ld:%ld]; try updating first\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Cannot merge into a working copy with a switched subtree\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"Cannot merge into a working copy that has local modifications\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_4__*, i64, i64, i64, i32*)* @ensure_wc_is_suitable_merge_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ensure_wc_is_suitable_merge_target(i8* %0, %struct.TYPE_4__* %1, i64 %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i32 @svn_io_check_path(i8* %20, i64* %14, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @svn_node_none, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %6
  %28 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %29 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @svn_dirent_local_style(i8* %30, i32* %31)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %28, i32* null, i32 %29, i8* %34)
  store i32* %35, i32** %7, align 8
  br label %149

36:                                               ; preds = %6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @svn_wc_read_kind2(i64* %14, i32 %39, i8* %40, i32 %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @svn_node_dir, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %36
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @svn_node_file, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** %8, align 8
  %57 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %54, i32* null, i32 %55, i8* %56)
  store i32* %57, i32** %7, align 8
  br label %149

58:                                               ; preds = %49, %36
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %104, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @svn_client_min_max_revisions(i32* %15, i32* %16, i8* %62, i32 %63, %struct.TYPE_4__* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32, i32* %15, align 4
  %69 = call i64 @SVN_IS_VALID_REVNUM(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @SVN_IS_VALID_REVNUM(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %71, %61
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @svn_wc__node_is_added(i64* %17, i32 %78, i8* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i64, i64* %17, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %7, align 8
  br label %149

87:                                               ; preds = %75
  %88 = load i32, i32* @SVN_ERR_CLIENT_NOT_READY_TO_MERGE, align 4
  %89 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %90 = call i32* @svn_error_create(i32 %88, i32* null, i32 %89)
  store i32* %90, i32** %7, align 8
  br label %149

91:                                               ; preds = %71
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* @SVN_ERR_CLIENT_MERGE_UPDATE_REQUIRED, align 4
  %97 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load i32, i32* %16, align 4
  %102 = call i32* (i32, i32*, i32, i8*, ...) @svn_error_createf(i32 %96, i32* null, i32 %97, i8* %100, i32 %101)
  store i32* %102, i32** %7, align 8
  br label %149

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %58
  %105 = load i64, i64* %12, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @svn_wc__has_switched_subtrees(i64* %18, i32 %110, i8* %111, i32* null, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load i64, i64* %18, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %107
  %118 = load i32, i32* @SVN_ERR_CLIENT_NOT_READY_TO_MERGE, align 4
  %119 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %120 = call i32* @svn_error_create(i32 %118, i32* null, i32 %119)
  store i32* %120, i32** %7, align 8
  br label %149

121:                                              ; preds = %107
  br label %122

122:                                              ; preds = %121, %104
  %123 = load i64, i64* %11, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %147, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %13, align 8
  %138 = call i32 @svn_wc__has_local_mods(i64* %19, i32 %128, i8* %129, i32 %130, i32 %133, i32 %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load i64, i64* %19, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %125
  %143 = load i32, i32* @SVN_ERR_CLIENT_NOT_READY_TO_MERGE, align 4
  %144 = call i32 @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %145 = call i32* @svn_error_create(i32 %143, i32* null, i32 %144)
  store i32* %145, i32** %7, align 8
  br label %149

146:                                              ; preds = %125
  br label %147

147:                                              ; preds = %146, %122
  %148 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %148, i32** %7, align 8
  br label %149

149:                                              ; preds = %147, %142, %117, %95, %87, %85, %53, %27
  %150 = load i32*, i32** %7, align 8
  ret i32* %150
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_client_min_max_revisions(i32*, i32*, i8*, i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_wc__node_is_added(i64*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_wc__has_switched_subtrees(i64*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__has_local_mods(i64*, i32, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
