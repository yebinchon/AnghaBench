; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_merge-cmd.c_run_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_merge-cmd.c_run_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i64 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"--- Merging\0A\00", align 1
@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Merge sources must both be either paths or URLs\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Merge target '%s' must be a local path but looks like a URL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i64, i8*, i8*, i32*, i64, i64, %struct.TYPE_12__*, i32*, i32*, i32*)* @run_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @run_merge(i32 %0, i8* %1, i64 %2, i8* %3, i8* %4, i32* %5, i64 %6, i64 %7, %struct.TYPE_12__* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  %16 = alloca %struct.TYPE_11__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i64 %2, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i64 %6, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i64 %7, i64* %29, align 8
  store i32 %0, i32* %17, align 4
  store i8* %1, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i32* %5, i32** %21, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %12
  %35 = load i8*, i8** %18, align 8
  %36 = load i8*, i8** %20, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %23, align 8
  %41 = load i32*, i32** %24, align 8
  %42 = load i32*, i32** %25, align 8
  %43 = call i32* @svn_cl__deprecated_merge_reintegrate(i8* %35, %struct.TYPE_11__* %14, i8* %36, i32 %39, i32* %40, i32* %41, i32* %42)
  store i32* %43, i32** %26, align 8
  br label %156

44:                                               ; preds = %12
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %97, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32* null, i32** %21, align 8
  br label %58

58:                                               ; preds = %57, %52, %47
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %25, align 8
  %65 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @svn_cmdline_printf(i32* %64, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** %18, align 8
  %70 = load i32*, i32** %21, align 8
  %71 = load i8*, i8** %20, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %23, align 8
  %94 = load i32*, i32** %24, align 8
  %95 = load i32*, i32** %25, align 8
  %96 = call i32* @svn_client_merge_peg5(i8* %69, i32* %70, %struct.TYPE_11__* %14, i8* %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, i32 %92, i32* %93, i32* %94, i32* %95)
  store i32* %96, i32** %26, align 8
  br label %155

97:                                               ; preds = %44
  %98 = load i8*, i8** %18, align 8
  %99 = call i64 @svn_path_is_url(i8* %98)
  %100 = load i8*, i8** %19, align 8
  %101 = call i64 @svn_path_is_url(i8* %100)
  %102 = icmp ne i64 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %105 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %106 = call i32* @svn_error_create(i32 %104, i32* null, i32 %105)
  store i32* %106, i32** %13, align 8
  br label %158

107:                                              ; preds = %97
  %108 = load i8*, i8** %20, align 8
  %109 = call i64 @svn_path_is_url(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %113 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i8*, i8** %20, align 8
  %115 = call i32* @svn_error_createf(i32 %112, i32* null, i32 %113, i8* %114)
  store i32* %115, i32** %13, align 8
  br label %158

116:                                              ; preds = %107
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i32*, i32** %25, align 8
  %123 = call i32 @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %124 = call i32 @svn_cmdline_printf(i32* %122, i32 %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i8*, i8** %18, align 8
  %128 = load i8*, i8** %19, align 8
  %129 = load i8*, i8** %20, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %23, align 8
  %152 = load i32*, i32** %24, align 8
  %153 = load i32*, i32** %25, align 8
  %154 = call i32* @svn_client_merge5(i8* %127, %struct.TYPE_11__* %15, i8* %128, %struct.TYPE_11__* %16, i8* %129, i32 %132, i32 %135, i32 %138, i32 %141, i32 %144, i32 %147, i32 %150, i32* %151, i32* %152, i32* %153)
  store i32* %154, i32** %26, align 8
  br label %155

155:                                              ; preds = %126, %68
  br label %156

156:                                              ; preds = %155, %34
  %157 = load i32*, i32** %26, align 8
  store i32* %157, i32** %13, align 8
  br label %158

158:                                              ; preds = %156, %111, %103
  %159 = load i32*, i32** %13, align 8
  ret i32* %159
}

declare dso_local i32* @svn_cl__deprecated_merge_reintegrate(i8*, %struct.TYPE_11__*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cmdline_printf(i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_client_merge_peg5(i8*, i32*, %struct.TYPE_11__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32* @svn_client_merge5(i8*, %struct.TYPE_11__*, i8*, %struct.TYPE_11__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
