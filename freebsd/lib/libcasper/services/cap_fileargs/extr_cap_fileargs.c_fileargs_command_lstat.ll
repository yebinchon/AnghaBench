; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_command_lstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_command_lstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@ENOTCAPABLE = common dso_local global i32 0, align 4
@FA_LSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@errno = common dso_local global i32 0, align 4
@allcached = common dso_local global i32 0, align 4
@lastname = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @fileargs_command_lstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fileargs_command_lstat(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %14, i32* %4, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @FA_LSTAT, align 4
  %19 = call i32 @fileargs_allowed(i32* %16, i32* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %15
  %24 = load i32*, i32** %6, align 8
  %25 = call i8* @nvlist_get_string(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @lstat(i8* %26, %struct.stat* %10)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %23
  %33 = load i32, i32* @allcached, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = load i32*, i32** @lastname, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = load i32*, i32** @lastname, align 8
  %41 = call i64 @strcmp(i8* %39, i32* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %35
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @nvlist_add_string(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @fileargs_add_cache(i32* %46, i32* %47, i8* %48)
  br label %53

50:                                               ; preds = %38, %32
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @nvlist_add_string(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @nvlist_add_binary(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.stat* %10, i32 4)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %30, %21, %13
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @fileargs_allowed(i32*, i32*, i32) #1

declare dso_local i8* @nvlist_get_string(i32*, i8*) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @fileargs_add_cache(i32*, i32*, i8*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
