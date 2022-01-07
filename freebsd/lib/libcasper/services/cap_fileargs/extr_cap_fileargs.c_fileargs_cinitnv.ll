; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_cinitnv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_cinitnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"system.fileargs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"operations\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fileargs_cinitnv(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32* @fileargs_create(i32* null, i32 0)
  store i32* %19, i32** %3, align 8
  br label %57

20:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32* @cap_service_open(i32* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @nvlist_destroy(i32* %26)
  store i32* null, i32** %3, align 8
  br label %57

28:                                               ; preds = %20
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @nvlist_get_number(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %10, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @nvlist_get_number(i32* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @cap_limit_set(i32* %33, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %48

39:                                               ; preds = %28
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32* @fileargs_create(i32* %40, i32 %41)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %48

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  store i32* %47, i32** %3, align 8
  br label %57

48:                                               ; preds = %45, %38
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @cap_close(i32* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* @errno, align 4
  store i32* null, i32** %3, align 8
  br label %57

57:                                               ; preds = %55, %46, %25, %18
  %58 = load i32*, i32** %3, align 8
  ret i32* %58
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @fileargs_create(i32*, i32) #1

declare dso_local i32* @cap_service_open(i32*, i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @cap_limit_set(i32*, i32*) #1

declare dso_local i32 @cap_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
