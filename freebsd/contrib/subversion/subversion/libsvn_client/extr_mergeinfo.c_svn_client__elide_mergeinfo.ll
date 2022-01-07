; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__elide_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__elide_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@svn_mergeinfo_explicit = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8
@svn_mergeinfo_nearest_ancestor = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @svn_client__elide_mergeinfo(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @svn_dirent_is_absolute(i8* %15)
  %17 = call i32 @SVN_ERR_ASSERT(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @svn_dirent_is_absolute(i8* %21)
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %20, %4
  %25 = phi i1 [ true, %4 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @SVN_ERR_ASSERT(i32 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %132

35:                                               ; preds = %30, %24
  store i32* null, i32** %12, align 8
  %36 = load i32, i32* @svn_mergeinfo_explicit, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call %struct.TYPE_9__* @svn_client__get_wc_mergeinfo(i32** %11, i32* null, i32 %36, i8* %37, i8* null, i32* null, i32 %38, i32* %39, i32* %40, i32* %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %13, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %35
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %53 = call i32 @svn_error_clear(%struct.TYPE_9__* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %5, align 8
  br label %134

55:                                               ; preds = %45
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %57 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %56)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %5, align 8
  br label %134

58:                                               ; preds = %35
  %59 = load i32*, i32** %11, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %5, align 8
  br label %134

63:                                               ; preds = %58
  %64 = load i32, i32* @svn_mergeinfo_nearest_ancestor, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call %struct.TYPE_9__* @svn_client__get_wc_mergeinfo(i32** %12, i32* null, i32 %64, i8* %65, i8* %66, i32* null, i32 %67, i32* %68, i32* %69, i32* %70)
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %13, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %63
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = call i32 @svn_error_clear(%struct.TYPE_9__* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %5, align 8
  br label %134

84:                                               ; preds = %74
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %85)
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %5, align 8
  br label %134

87:                                               ; preds = %63
  %88 = load i32*, i32** %12, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %116, label %90

90:                                               ; preds = %87
  %91 = load i8*, i8** %7, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %116, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @TRUE, align 4
  %95 = load i32, i32* @svn_mergeinfo_nearest_ancestor, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call %struct.TYPE_9__* @svn_client__get_wc_or_repos_mergeinfo(i32** %12, i32* null, i32* null, i32 %94, i32 %95, i32* null, i8* %96, i32* %97, i32* %98)
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %13, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %101 = icmp ne %struct.TYPE_9__* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %93
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %110 = call i32 @svn_error_clear(%struct.TYPE_9__* %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %5, align 8
  br label %134

112:                                              ; preds = %102
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %114 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %113)
  store %struct.TYPE_9__* %114, %struct.TYPE_9__** %5, align 8
  br label %134

115:                                              ; preds = %93
  br label %116

116:                                              ; preds = %115, %90, %87
  %117 = load i32*, i32** %12, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %5, align 8
  br label %134

124:                                              ; preds = %119, %116
  %125 = load i32*, i32** %12, align 8
  %126 = load i32*, i32** %11, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @elide_mergeinfo(i32* %125, i32* %126, i8* %127, i32* %128, i32* %129)
  %131 = call i32 @SVN_ERR(i32 %130)
  br label %132

132:                                              ; preds = %124, %30
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %5, align 8
  br label %134

134:                                              ; preds = %132, %122, %112, %108, %84, %80, %61, %55, %51
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %135
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_9__* @svn_client__get_wc_mergeinfo(i32**, i32*, i32, i8*, i8*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @svn_client__get_wc_or_repos_mergeinfo(i32**, i32*, i32*, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @elide_mergeinfo(i32*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
