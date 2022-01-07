; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_git_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_git_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" a/\00", align 1
@state_start = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" b/\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"diff --git a/\00", align 1
@TRUE = common dso_local global i64 0, align 8
@svn_diff_op_modified = common dso_local global i32 0, align 4
@state_git_diff_seen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, %struct.TYPE_3__*, i32*, i32*)* @git_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @git_start(i32* %0, i8* %1, %struct.TYPE_3__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %17, align 8
  %22 = load i8*, i8** %17, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @state_start, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %27, i32** %6, align 8
  br label %131

28:                                               ; preds = %5
  %29 = load i8*, i8** %17, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 3
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @state_start, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %6, align 8
  br label %131

37:                                               ; preds = %28
  %38 = load i8*, i8** %17, align 8
  %39 = call i8* @strstr(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** %16, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @state_start, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %6, align 8
  br label %131

46:                                               ; preds = %37
  %47 = load i8*, i8** %16, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @state_start, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %6, align 8
  br label %131

55:                                               ; preds = %46
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @STRLEN_LITERAL(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8* %64, i8** %15, align 8
  %65 = load i8*, i8** %12, align 8
  store i8* %65, i8** %14, align 8
  br label %66

66:                                               ; preds = %123, %55
  %67 = load i64, i64* @TRUE, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %124

69:                                               ; preds = %66
  %70 = load i8*, i8** %14, align 8
  %71 = call i8* @strstr(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %71, i8** %16, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %124

75:                                               ; preds = %69
  %76 = load i8*, i8** %16, align 8
  store i8* %76, i8** %13, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @STRLEN_LITERAL(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8* %80, i8** %14, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %75
  br label %124

85:                                               ; preds = %75
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %18, align 4
  %92 = load i8*, i8** %15, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %19, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %85
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @strncmp(i8* %102, i8* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %13, align 8
  store i8 0, i8* %108, align 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i8*, i8** %12, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @grab_filename(i32* %110, i8* %111, i32* %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i8*, i8** %14, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = call i32 @grab_filename(i32* %117, i8* %118, i32* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  br label %124

123:                                              ; preds = %101, %85
  br label %66

124:                                              ; preds = %107, %84, %74, %66
  %125 = load i32, i32* @svn_diff_op_modified, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @state_git_diff_seen, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %6, align 8
  br label %131

131:                                              ; preds = %124, %51, %42, %33, %24
  %132 = load i32*, i32** %6, align 8
  ret i32* %132
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @STRLEN_LITERAL(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @grab_filename(i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
