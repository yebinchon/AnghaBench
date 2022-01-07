; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_command_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_command_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOTCAPABLE = common dso_local global i32 0, align 4
@FA_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@errno = common dso_local global i32 0, align 4
@allcached = common dso_local global i32 0, align 4
@lastname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @fileargs_command_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fileargs_command_open(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %13, i32* %4, align 4
  br label %56

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @FA_OPEN, align 4
  %18 = call i32 @fileargs_allowed(i32* %15, i32* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %21, i32* %4, align 4
  br label %56

22:                                               ; preds = %14
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @nvlist_get_string(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @open_file(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %22
  %32 = load i32, i32* @allcached, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** @lastname, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** @lastname, align 8
  %40 = call i64 @strcmp(i8* %38, i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %34
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @nvlist_add_string(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @fileargs_add_cache(i32* %45, i32* %46, i8* %47)
  br label %52

49:                                               ; preds = %37, %31
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @nvlist_add_string(i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @nvlist_move_descriptor(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %29, %20, %12
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @fileargs_allowed(i32*, i32*, i32) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @open_file(i8*) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fileargs_add_cache(i32*, i32*, i8*) #1

declare dso_local i32 @nvlist_move_descriptor(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
