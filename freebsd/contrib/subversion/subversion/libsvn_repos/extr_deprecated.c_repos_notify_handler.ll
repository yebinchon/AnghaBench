; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_repos_notify_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_repos_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"* Dumped revision %ld.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"* Verified revision %ld.\0A\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\0A------- Committed revision %ld >>>\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"\0A------- Committed new rev %ld (loaded from original rev %ld) >>>\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"     * editing path : %s ...\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"     * deleting path : %s ...\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"     * adding path : %s ...\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"     * replacing path : %s ...\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" done.\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"COPIED...\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"<<< Started new transaction, based on original revision %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c" removing '\\r' from %s ...\00", align 1
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32*)* @repos_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @repos_notify_handler(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %133 [
    i32 128, label %14
    i32 136, label %21
    i32 129, label %30
    i32 131, label %39
    i32 133, label %67
    i32 134, label %108
    i32 135, label %113
    i32 130, label %117
    i32 132, label %126
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @svn_stream_puts(i32* %15, i32 %18)
  %20 = call i32 @svn_error_clear(i32 %19)
  br label %134

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %22, i32* %23, i8* %24, i32 %27)
  %29 = call i32 @svn_error_clear(i32 %28)
  br label %134

30:                                               ; preds = %3
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %31, i32* %32, i8* %33, i32 %36)
  %38 = call i32 @svn_error_clear(i32 %37)
  br label %134

39:                                               ; preds = %3
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %46, i32* %47, i8* %48, i32 %51)
  %53 = call i32 @svn_error_clear(i32 %52)
  br label %66

54:                                               ; preds = %39
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @_(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %55, i32* %56, i8* %57, i32 %60, i32 %63)
  %65 = call i32 @svn_error_clear(i32 %64)
  br label %66

66:                                               ; preds = %54, %45
  br label %134

67:                                               ; preds = %3
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %107 [
    i32 139, label %71
    i32 138, label %80
    i32 140, label %89
    i32 137, label %98
  ]

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %72, i32* %73, i8* %74, i32 %77)
  %79 = call i32 @svn_error_clear(i32 %78)
  br label %107

80:                                               ; preds = %67
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %81, i32* %82, i8* %83, i32 %86)
  %88 = call i32 @svn_error_clear(i32 %87)
  br label %107

89:                                               ; preds = %67
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %90, i32* %91, i8* %92, i32 %95)
  %97 = call i32 @svn_error_clear(i32 %96)
  br label %107

98:                                               ; preds = %67
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %99, i32* %100, i8* %101, i32 %104)
  %106 = call i32 @svn_error_clear(i32 %105)
  br label %107

107:                                              ; preds = %67, %98, %89, %80, %71
  br label %134

108:                                              ; preds = %3
  store i32 7, i32* %8, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %111 = call i32 @svn_stream_write(i32* %109, i8* %110, i32* %8)
  %112 = call i32 @svn_error_clear(i32 %111)
  br label %134

113:                                              ; preds = %3
  store i32 9, i32* %8, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @svn_stream_write(i32* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %8)
  %116 = call i32 @svn_error_clear(i32 %115)
  br label %134

117:                                              ; preds = %3
  %118 = load i32*, i32** %7, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %118, i32* %119, i8* %120, i32 %123)
  %125 = call i32 @svn_error_clear(i32 %124)
  br label %134

126:                                              ; preds = %3
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %130 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %131 = call i32 (i32*, i32*, i8*, i32, ...) @svn_stream_printf(i32* %127, i32* %128, i8* %129, i32 %130)
  %132 = call i32 @svn_error_clear(i32 %131)
  br label %134

133:                                              ; preds = %3
  br label %134

134:                                              ; preds = %133, %126, %117, %113, %108, %107, %66, %30, %21, %14
  ret void
}

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_stream_puts(i32*, i32) #1

declare dso_local i32 @svn_stream_printf(i32*, i32*, i8*, i32, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_stream_write(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
