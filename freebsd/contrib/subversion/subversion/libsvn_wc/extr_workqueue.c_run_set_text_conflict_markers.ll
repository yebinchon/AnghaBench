; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_set_text_conflict_markers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_set_text_conflict_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_10__*, i8*, i32, i8*, i32*)* @run_set_text_conflict_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @run_set_text_conflict_markers(i32* %0, i32* %1, %struct.TYPE_10__* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %15, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @apr_pstrmemdup(i32* %27, i32 %30, i64 %33)
  store i8* %34, i8** %16, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @svn_wc__db_from_relpath(i8** %17, i32* %35, i8* %36, i8* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %15, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %7
  %50 = load i32*, i32** %14, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @apr_pstrmemdup(i32* %50, i32 %53, i64 %56)
  br label %59

58:                                               ; preds = %7
  br label %59

59:                                               ; preds = %58, %49
  %60 = phi i8* [ %57, %49 ], [ null, %58 ]
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** %9, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %16, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @svn_wc__db_from_relpath(i8** %18, i32* %64, i8* %65, i8* %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %71

71:                                               ; preds = %63, %59
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %15, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load i32*, i32** %14, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @apr_pstrmemdup(i32* %80, i32 %83, i64 %86)
  br label %89

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %79
  %90 = phi i8* [ %87, %79 ], [ null, %88 ]
  store i8* %90, i8** %16, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32*, i32** %9, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @svn_wc__db_from_relpath(i8** %19, i32* %94, i8* %95, i8* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  br label %101

101:                                              ; preds = %93, %89
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %15, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load i32*, i32** %14, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @apr_pstrmemdup(i32* %110, i32 %113, i64 %116)
  br label %119

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118, %109
  %120 = phi i8* [ %117, %109 ], [ null, %118 ]
  store i8* %120, i8** %16, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i32*, i32** %9, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = load i8*, i8** %16, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @svn_wc__db_from_relpath(i8** %20, i32* %124, i8* %125, i8* %126, i32* %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %131

131:                                              ; preds = %123, %119
  %132 = load i32*, i32** %9, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = call i32 @svn_wc__db_read_conflict(%struct.TYPE_10__** %21, i32* null, i32* null, i32* %132, i8* %133, i32* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %139 = icmp ne %struct.TYPE_10__* %138, null
  br i1 %139, label %148, label %140

140:                                              ; preds = %131
  %141 = load i32*, i32** %14, align 8
  %142 = call %struct.TYPE_10__* @svn_wc__conflict_skel_create(i32* %141)
  store %struct.TYPE_10__* %142, %struct.TYPE_10__** %21, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @svn_wc__conflict_skel_set_op_update(%struct.TYPE_10__* %143, i32* null, i32* null, i32* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  br label %148

148:                                              ; preds = %140, %131
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = load i8*, i8** %20, align 8
  %153 = load i8*, i8** %18, align 8
  %154 = load i8*, i8** %19, align 8
  %155 = load i32*, i32** %14, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @svn_wc__conflict_skel_add_text_conflict(%struct.TYPE_10__* %149, i32* %150, i8* %151, i8* %152, i8* %153, i8* %154, i32* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i32*, i32** %9, align 8
  %160 = load i8*, i8** %17, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @svn_wc__db_op_mark_conflict(i32* %159, i8* %160, %struct.TYPE_10__* %161, i32* null, i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %165
}

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i64) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_conflict(%struct.TYPE_10__**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_update(%struct.TYPE_10__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_text_conflict(%struct.TYPE_10__*, i32*, i8*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_conflict(i32*, i8*, %struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
