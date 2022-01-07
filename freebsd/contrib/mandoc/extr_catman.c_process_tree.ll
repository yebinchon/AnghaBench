; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_catman.c_process_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_catman.c_process_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@FTS_NOCHDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fts_open\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mkdirat(%s)\00", align 1
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: not a regular file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_tree(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 16
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  store i8* null, i8** %11, align 8
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %13 = load i32, i32* @FTS_PHYSICAL, align 4
  %14 = load i32, i32* @FTS_NOCHDIR, align 4
  %15 = or i32 %13, %14
  %16 = call i32* @fts_open(i8** %12, i32 %15, i32* null)
  store i32* %16, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %82

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %78, %20
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_4__* @fts_read(i32* %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %7, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %29, i8** %9, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %75 [
    i32 128, label %33
    i32 130, label %43
    i32 129, label %74
  ]

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @process_manpage(i32 %34, i32 %35, i8* %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @fts_close(i32* %40)
  store i32 -1, i32* %3, align 4
  br label %82

42:                                               ; preds = %33
  br label %78

43:                                               ; preds = %25
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @S_IRWXU, align 4
  %52 = load i32, i32* @S_IRGRP, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @S_IXGRP, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @S_IROTH, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @S_IXOTH, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @mkdirat(i32 %49, i8* %50, i32 %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %73

62:                                               ; preds = %48
  %63 = load i32, i32* @errno, align 4
  %64 = load i32, i32* @EEXIST, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = load i32, i32* @FTS_SKIP, align 4
  %72 = call i32 @fts_set(i32* %69, %struct.TYPE_4__* %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %62, %48, %43
  br label %78

74:                                               ; preds = %25
  br label %78

75:                                               ; preds = %25
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %74, %73, %42
  br label %21

79:                                               ; preds = %21
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @fts_close(i32* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %39, %18
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32* @fts_open(i8**, i32, i32*) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local %struct.TYPE_4__* @fts_read(i32*) #1

declare dso_local i32 @process_manpage(i32, i32, i8*) #1

declare dso_local i32 @fts_close(i32*) #1

declare dso_local i32 @mkdirat(i32, i8*, i32) #1

declare dso_local i32 @fts_set(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
