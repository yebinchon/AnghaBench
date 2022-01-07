; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_file_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_file_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_11__*, i32*)* @wrap_file_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_file_added(i8* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, i8* %3, i8* %4, i32* %5, i32* %6, i8* %7, %struct.TYPE_11__* %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %19, align 8
  store i32* %9, i32** %20, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %21, align 8
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %31, i32* %24, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %10
  %35 = load i32*, i32** %20, align 8
  %36 = call i32* @apr_hash_make(i32* %35)
  store i32* %36, i32** %16, align 8
  br label %37

37:                                               ; preds = %34, %10
  %38 = load i32*, i32** %17, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = load i32*, i32** %20, align 8
  %41 = call i32 @svn_prop_diffs(i32** %25, i32* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %47 = load i32*, i32** %20, align 8
  %48 = call i32 @wrap_ensure_empty_file(%struct.TYPE_10__* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %45, %37
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32 (i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*)** %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i8*, i8** %14, align 8
  br label %65

61:                                               ; preds = %50
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i8* [ %60, %59 ], [ %64, %61 ]
  %67 = load i8*, i8** %15, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load i32*, i32** %16, align 8
  %75 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %76 = call i32* @svn_prop_get_value(i32* %74, i32 %75)
  br label %78

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i32* [ %76, %73 ], [ null, %77 ]
  %80 = load i32*, i32** %17, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %85 = call i32* @svn_prop_get_value(i32* %83, i32 %84)
  br label %87

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i32* [ %85, %82 ], [ null, %86 ]
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = icmp ne %struct.TYPE_12__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32* [ %94, %91 ], [ null, %95 ]
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %99 = icmp ne %struct.TYPE_12__* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  br label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = phi i32 [ %103, %100 ], [ %105, %104 ]
  %108 = load i32*, i32** %25, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = call i32 %55(i32* %23, i32* %24, i32* %22, i8* %56, i8* %66, i8* %67, i32 0, i32 %70, i32* %79, i32* %88, i32* %97, i32 %107, i32* %108, i32* %109, i32 %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %116
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @wrap_ensure_empty_file(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @svn_prop_get_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
