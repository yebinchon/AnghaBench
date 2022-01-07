; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_catman.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_catman.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"I:T:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"socketpair\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"chdir(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %23 [
    i32 73, label %19
    i32 84, label %21
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %6, align 8
  br label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %7, align 8
  br label %25

23:                                               ; preds = %17
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %21, %19
  br label %12

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i64, i64* @optind, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i64, i64* @optind, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8** %37, i8*** %5, align 8
  br label %38

38:                                               ; preds = %29, %26
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* @AF_LOCAL, align 4
  %45 = load i32, i32* @SOCK_STREAM, align 4
  %46 = load i32, i32* @AF_UNSPEC, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %48 = call i32 @socketpair(i32 %44, i32 %45, i32 %46, i32* %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  %53 = call i32 (...) @fork()
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %66 [
    i32 -1, label %55
    i32 0, label %57
  ]

55:                                               ; preds = %52
  %56 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %55
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @close(i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @run_mandocd(i32 %62, i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %52, %57
  br label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @close(i32 %69)
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @O_RDONLY, align 4
  %75 = load i32, i32* @O_DIRECTORY, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @open(i8* %73, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %84

79:                                               ; preds = %67
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %79, %67
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @chdir(i8* %87)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %90, %84
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @process_tree(i32 %97, i32 %98)
  %100 = icmp eq i32 %99, -1
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  ret i32 %102
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @run_mandocd(i32, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @process_tree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
