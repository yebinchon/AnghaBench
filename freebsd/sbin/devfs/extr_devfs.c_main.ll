; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devfs/extr_devfs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devfs/extr_devfs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32 (i32, i8**)*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"m:\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@_PATH_DEV = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@mpfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"open: %s\00", align 1
@ctbl_main = common dso_local global %struct.cmd* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown command: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cmd*, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @getopt(i32 %10, i8** %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %18 [
    i32 109, label %16
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** @optarg, align 8
  store i8* %17, i8** %6, align 8
  br label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @usage()
  br label %20

20:                                               ; preds = %18, %16
  br label %9

21:                                               ; preds = %9
  %22 = load i64, i64* @optind, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i64, i64* @optind, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 %27
  store i8** %29, i8*** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = call i32 (...) @usage()
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i8*, i8** @_PATH_DEV, align 8
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @O_RDONLY, align 4
  %42 = call i32 @open(i8* %40, i32 %41)
  store i32 %42, i32* @mpfd, align 4
  %43 = load i32, i32* @mpfd, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.cmd*, %struct.cmd** @ctbl_main, align 8
  store %struct.cmd* %49, %struct.cmd** %7, align 8
  br label %50

50:                                               ; preds = %73, %48
  %51 = load %struct.cmd*, %struct.cmd** %7, align 8
  %52 = getelementptr inbounds %struct.cmd, %struct.cmd* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load %struct.cmd*, %struct.cmd** %7, align 8
  %57 = getelementptr inbounds %struct.cmd, %struct.cmd* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i32* %58, i8* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.cmd*, %struct.cmd** %7, align 8
  %66 = getelementptr inbounds %struct.cmd, %struct.cmd* %65, i32 0, i32 0
  %67 = load i32 (i32, i8**)*, i32 (i32, i8**)** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = call i32 %67(i32 %68, i8** %69)
  %71 = call i32 @exit(i32 %70) #3
  unreachable

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.cmd*, %struct.cmd** %7, align 8
  %75 = getelementptr inbounds %struct.cmd, %struct.cmd* %74, i32 1
  store %struct.cmd* %75, %struct.cmd** %7, align 8
  br label %50

76:                                               ; preds = %50
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
