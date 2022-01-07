; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hp:t\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"At most one of -P and -t may be specified.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @getprogname()
  %10 = call i64 @strcmp(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %30 [
    i32 112, label %20
    i32 116, label %28
    i32 104, label %29
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @optarg, align 4
  %22 = call i8* @strdup(i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  br label %32

28:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %32

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %18, %29
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %28, %27
  br label %13

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  %42 = call i32 @errx(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37, %34
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @list_one_geom_by_provider(i8* %47)
  store i32 0, i32* %3, align 4
  br label %61

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @show_tree()
  store i32 0, i32* %3, align 4
  br label %61

54:                                               ; preds = %49
  %55 = call i32 @get_class(i32* %4, i8*** %5)
  %56 = load i32, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @run_command(i32 %56, i8** %57)
  %59 = load i32, i32* @EXIT_FAILURE, align 4
  %60 = call i32 @exit(i32 %59) #3
  unreachable

61:                                               ; preds = %52, %46
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @getprogname(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @list_one_geom_by_provider(i8*) #1

declare dso_local i32 @show_tree(...) #1

declare dso_local i32 @get_class(i32*, i8***) #1

declare dso_local i32 @run_command(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
