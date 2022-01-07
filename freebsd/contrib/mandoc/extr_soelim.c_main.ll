; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_soelim.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_soelim.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@includes = common dso_local global i32* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"sl_init()\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CrtvI:\00", align 1
@C_OPTION = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32* (...) @sl_init()
  store i32* %10, i32** @includes, align 8
  %11 = load i32*, i32** @includes, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @err(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %2
  br label %17

17:                                               ; preds = %37, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %33 [
    i32 67, label %24
    i32 114, label %28
    i32 118, label %28
    i32 116, label %28
    i32 73, label %29
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @C_OPTION, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %37

28:                                               ; preds = %22, %22, %22
  br label %37

29:                                               ; preds = %22
  %30 = load i32*, i32** @includes, align 8
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @sl_add(i32* %30, i32 %31)
  br label %37

33:                                               ; preds = %22
  %34 = load i32*, i32** @includes, align 8
  %35 = call i32 @sl_free(i32* %34, i32 0)
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %33, %29, %28, %24
  br label %17

38:                                               ; preds = %17
  %39 = load i64, i64* @optind, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  %44 = load i64, i64* @optind, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 %44
  store i8** %46, i8*** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* @stdin, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @soelim_file(i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %38
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @soelim_fopen(i8* %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @soelim_file(i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load i32*, i32** @includes, align 8
  %72 = call i32 @sl_free(i32* %71, i32 0)
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32* @sl_init(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @sl_add(i32*, i32) #1

declare dso_local i32 @sl_free(i32*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @soelim_file(i32, i32) #1

declare dso_local i32 @soelim_fopen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
