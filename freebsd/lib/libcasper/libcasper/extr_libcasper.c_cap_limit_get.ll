; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper.c_cap_limit_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/libcasper/extr_libcasper.c_cap_limit_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"limit_get\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"limits\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_limit_get(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @channel_nvlist_flags(i32* %8)
  %10 = call i32* @nvlist_create(i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @nvlist_add_string(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @cap_xfer_nvlist(i32* %13, i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @nvlist_get_number(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @nvlist_destroy(i32* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %42

29:                                               ; preds = %19
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @nvlist_exists_null(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32**, i32*** %5, align 8
  store i32* null, i32** %34, align 8
  br label %39

35:                                               ; preds = %29
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @nvlist_take_nvlist(i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32**, i32*** %5, align 8
  store i32* %37, i32** %38, align 8
  br label %39

39:                                               ; preds = %35, %33
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @nvlist_destroy(i32* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %25, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @channel_nvlist_flags(i32*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i64 @nvlist_exists_null(i32*, i8*) #1

declare dso_local i32* @nvlist_take_nvlist(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
