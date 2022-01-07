; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_close_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_commit.c_close_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i64, i32, i32, i32* (i32*, i32, i32*)*, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8*, %struct.TYPE_7__, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32 }

@SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Closing editor with directories or files open\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@svn_ra_serf__expect_empty_body = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @close_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_edit(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i8* [ %20, %17 ], [ %24, %21 ]
  store i8* %26, i8** %7, align 8
  store i32* null, i32** %9, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @SVN_ERR_FS_INCORRECT_EDITOR_COMPLETION, align 4
  %33 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %34 = call i32* @svn_error_create(i32 %32, i32* null, i32 %33)
  store i32* %34, i32** %3, align 8
  br label %112

35:                                               ; preds = %25
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @svn_ra_serf__run_merge(i32** %8, i32 %38, i8* %39, i32 %42, i32 %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  store i8* null, i8** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 5
  %54 = load i32* (i32*, i32, i32*)*, i32* (i32*, i32, i32*)** %53, align 8
  %55 = icmp ne i32* (i32*, i32, i32*)* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %35
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  %59 = load i32* (i32*, i32, i32*)*, i32* (i32*, i32, i32*)** %58, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* %59(i32* %60, i32 %63, i32* %64)
  store i32* %65, i32** %9, align 8
  br label %66

66:                                               ; preds = %56, %35
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %108

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call %struct.TYPE_8__* @svn_ra_serf__create_handler(i32 %74, i32* %75)
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %10, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @svn_ra_serf__expect_empty_body, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i8* null, i8** %91, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @svn_ra_serf__context_run_one(%struct.TYPE_8__* %93, i32* %94)
  %96 = call i32* @svn_error_compose_create(i32* %92, i32 %95)
  %97 = call i32 @SVN_ERR(i32* %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 204
  br i1 %102, label %103, label %107

103:                                              ; preds = %71
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = call i32 @svn_ra_serf__unexpected_status(%struct.TYPE_8__* %104)
  %106 = call i32* @svn_error_trace(i32 %105)
  store i32* %106, i32** %3, align 8
  br label %112

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %107, %66
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @SVN_ERR(i32* %109)
  %111 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %111, i32** %3, align 8
  br label %112

112:                                              ; preds = %108, %103, %31
  %113 = load i32*, i32** %3, align 8
  ret i32* %113
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_ra_serf__run_merge(i32**, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_ra_serf__create_handler(i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_ra_serf__context_run_one(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_ra_serf__unexpected_status(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
