; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_dir_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_dir_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 (i32*, i32*, i32*, i32*, i8*, i32, i32*, i32, i32, i32*)*, i32 (i32*, i32*, i32*, i8*, i32, i32, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i8*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i8*, %struct.TYPE_11__*, i32*, i32*)* @wrap_dir_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_dir_opened(i8** %0, i32* %1, i32* %2, i8* %3, %struct.TYPE_12__* %4, %struct.TYPE_12__* %5, %struct.TYPE_12__* %6, i8* %7, %struct.TYPE_11__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_10__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8** %0, i8*** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i8* %3, i8** %15, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %18, align 8
  store i8* %7, i8** %19, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %23, align 8
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %24, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %11
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br label %35

35:                                               ; preds = %32, %11
  %36 = phi i1 [ true, %11 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i1 [ true, %35 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %96

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32 (i32*, i32*, i32*, i8*, i32, i32, i32*)*, i32 (i32*, i32*, i32*, i8*, i32, i32, i32*)** %55, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  br label %77

66:                                               ; preds = %51
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %68 = icmp ne %struct.TYPE_12__* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i32 [ %72, %69 ], [ %74, %73 ]
  br label %77

77:                                               ; preds = %75, %62
  %78 = phi i32 [ %65, %62 ], [ %76, %75 ]
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %22, align 8
  %83 = call i32 %56(i32* %24, i32* %57, i32* %58, i8* %59, i32 %78, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %86 = icmp ne %struct.TYPE_12__* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %77
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @TRUE, align 4
  %94 = load i32*, i32** %14, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %87, %77
  br label %134

96:                                               ; preds = %45
  %97 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %97, i32* %25, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32 (i32*, i32*, i32*, i32*, i8*, i32, i32*, i32, i32, i32*)*, i32 (i32*, i32*, i32*, i32*, i8*, i32, i32*, i32, i32, i32*)** %101, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %110 = icmp ne %struct.TYPE_12__* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %96
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  br label %116

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115, %111
  %117 = phi i32* [ %114, %111 ], [ null, %115 ]
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %119 = icmp ne %struct.TYPE_12__* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  br label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %126

126:                                              ; preds = %124, %120
  %127 = phi i32 [ %123, %120 ], [ %125, %124 ]
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** %22, align 8
  %132 = call i32 %102(i32* %25, i32* %24, i32* %103, i32* %104, i8* %105, i32 %108, i32* %117, i32 %127, i32 %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %134

134:                                              ; preds = %126, %95
  %135 = load i8**, i8*** %12, align 8
  store i8* null, i8** %135, align 8
  %136 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %136
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
