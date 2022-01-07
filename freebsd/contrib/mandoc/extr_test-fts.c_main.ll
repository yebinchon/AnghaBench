; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_test-fts.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_test-fts.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@FTS_NOCHDIR = common dso_local global i32 0, align 4
@fts_compare = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fts_open\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fts_read\00", align 1
@FTS_SKIP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"fts_set\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fts_close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i8*], align 16
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5, align 16
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 1
  store i8* null, i8** %6, align 8
  %7 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  %8 = load i32, i32* @FTS_PHYSICAL, align 4
  %9 = load i32, i32* @FTS_NOCHDIR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @fts_compare, align 4
  %12 = call i32* @fts_open(i8** %7, i32 %10, i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %39

17:                                               ; preds = %0
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @fts_read(i32* %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %39

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @FTS_SKIP, align 4
  %28 = call i64 @fts_set(i32* %25, i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %39

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @fts_close(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %39

39:                                               ; preds = %38, %36, %30, %22, %15
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32* @fts_open(i8**, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @fts_read(i32*) #1

declare dso_local i64 @fts_set(i32*, i32*, i32) #1

declare dso_local i64 @fts_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
