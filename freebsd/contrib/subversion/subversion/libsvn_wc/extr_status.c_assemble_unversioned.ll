; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_assemble_unversioned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_assemble_unversioned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32*, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i64, i8*, i64 }

@svn_node_unknown = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i32 0, align 4
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_INVALID_FILESIZE = common dso_local global i8* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc_status_none = common dso_local global i8* null, align 8
@svn_wc_status_ignored = common dso_local global i8* null, align 8
@svn_wc_status_unversioned = common dso_local global i8* null, align 8
@svn_wc_status_conflicted = common dso_local global i8* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__**, i32*, i8*, %struct.TYPE_9__*, i64, i64, i32*, i32*)* @assemble_unversioned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @assemble_unversioned(%struct.TYPE_8__** %0, i32* %1, i8* %2, %struct.TYPE_9__* %3, i64 %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = call %struct.TYPE_8__* @apr_pcalloc(i32* %19, i32 120)
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %17, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %18, align 8
  %23 = load i32, i32* @svn_node_unknown, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @svn_depth_unknown, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 14
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @svn_node_symlink, align 8
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  br label %42

42:                                               ; preds = %38, %36
  %43 = phi i64 [ %37, %36 ], [ %41, %38 ]
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @svn_node_file, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  br label %57

55:                                               ; preds = %42
  %56 = load i8*, i8** @SVN_INVALID_FILESIZE, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i8* [ %54, %51 ], [ %56, %55 ]
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 13
  store i8* %58, i8** %60, align 8
  br label %68

61:                                               ; preds = %8
  %62 = load i64, i64* @svn_node_none, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i8*, i8** @SVN_INVALID_FILESIZE, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 13
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %61, %57
  %69 = load i8*, i8** @svn_wc_status_none, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @svn_wc_status_none, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 12
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @svn_wc_status_none, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 11
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @svn_wc_status_none, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 10
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** @svn_wc_status_none, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 9
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @svn_wc_status_none, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 8
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %88 = icmp ne %struct.TYPE_9__* %87, null
  br i1 %88, label %89, label %107

89:                                               ; preds = %68
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @svn_node_none, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** @svn_wc_status_ignored, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  br label %106

102:                                              ; preds = %95
  %103 = load i8*, i8** @svn_wc_status_unversioned, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %102, %98
  br label %115

107:                                              ; preds = %89, %68
  %108 = load i64, i64* %13, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i8*, i8** @svn_wc_status_conflicted, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %114, %106
  %116 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  store i8* %122, i8** %124, align 8
  %125 = load i64, i64* @svn_node_none, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32* null, i32** %132, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %134 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %134, align 8
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %135
}

declare dso_local %struct.TYPE_8__* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
