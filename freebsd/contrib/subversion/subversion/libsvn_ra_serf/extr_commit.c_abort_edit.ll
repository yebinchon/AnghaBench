; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_abort_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_abort_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__, i32*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@svn_ra_serf__expect_empty_body = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @abort_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @abort_edit(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %6, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %3, align 8
  br label %95

21:                                               ; preds = %14, %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %26, i64 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @serf_connection_reset(i32 %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_12__* @svn_ra_serf__create_handler(%struct.TYPE_14__* %34, i32* %35)
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %7, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @svn_ra_serf__expect_empty_body, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %44, align 8
  %45 = load i32, i32* @TRUE, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = call i64 @USING_HTTPV2_COMMIT_SUPPORT(%struct.TYPE_13__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %21
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  store i32* %54, i32** %56, align 8
  br label %63

57:                                               ; preds = %21
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_12__* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 204
  br i1 %72, label %73, label %89

73:                                               ; preds = %63
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 403
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 404
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_12__* %86)
  %88 = call i32* @svn_error_trace(i32 %87)
  store i32* %88, i32** %3, align 8
  br label %95

89:                                               ; preds = %79, %73, %63
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  store i32* null, i32** %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %94, i32** %3, align 8
  br label %95

95:                                               ; preds = %89, %85, %19
  %96 = load i32*, i32** %3, align 8
  ret i32* %96
}

declare dso_local i32 @serf_connection_reset(i32) #1

declare dso_local %struct.TYPE_12__* @svn_ra_serf__create_handler(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @USING_HTTPV2_COMMIT_SUPPORT(%struct.TYPE_13__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
