; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_add_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_add_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@capflags = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@allcached = common dso_local global i32 0, align 4
@cacheposition = common dso_local global i8* null, align 8
@CACHE_SIZE = common dso_local global i32 0, align 4
@lastname = common dso_local global i8* null, align 8
@NV_TYPE_NULL = common dso_local global i32 0, align 4
@NV_FLAG_NO_UNIQUE = common dso_local global i32 0, align 4
@allowed_operations = common dso_local global i32 0, align 4
@FA_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@FA_LSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @fileargs_add_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fileargs_add_cache(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @capflags, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* @allcached, align 4
  br label %101

19:                                               ; preds = %3
  %20 = load i8*, i8** @cacheposition, align 8
  store i8* %20, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %95, %19
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CACHE_SIZE, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @nvlist_next(i32* %27, i32* %7, i8** %10)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* null, i8** @cacheposition, align 8
  store i8* null, i8** @lastname, align 8
  store i32 1, i32* @allcached, align 4
  br label %101

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CACHE_SIZE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %98

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @NV_TYPE_NULL, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %37
  store i8* null, i8** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  br label %95

52:                                               ; preds = %44, %41
  %53 = load i32, i32* @NV_FLAG_NO_UNIQUE, align 4
  %54 = call i32* @nvlist_create(i32 %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32, i32* @allowed_operations, align 4
  %56 = load i32, i32* @FA_OPEN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @open_file(i8* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @nvlist_destroy(i32* %67)
  br label %95

69:                                               ; preds = %59
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @nvlist_move_descriptor(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %52
  %74 = load i32, i32* @allowed_operations, align 4
  %75 = load i32, i32* @FA_LSTAT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i8*, i8** %12, align 8
  %80 = call i64 @lstat(i8* %79, %struct.stat* %13)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @nvlist_destroy(i32* %85)
  br label %95

87:                                               ; preds = %78
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @nvlist_add_binary(i32* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %13, i32 4)
  br label %90

90:                                               ; preds = %87, %73
  %91 = load i32*, i32** %4, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @nvlist_add_nvlist(i32* %91, i8* %92, i32* %93)
  br label %95

95:                                               ; preds = %90, %82, %64, %49
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %21

98:                                               ; preds = %36, %21
  %99 = load i8*, i8** %10, align 8
  store i8* %99, i8** @cacheposition, align 8
  %100 = load i8*, i8** %12, align 8
  store i8* %100, i8** @lastname, align 8
  br label %101

101:                                              ; preds = %98, %31, %18
  ret void
}

declare dso_local i8* @nvlist_next(i32*, i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @open_file(i8*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32 @nvlist_move_descriptor(i32*, i8*, i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @nvlist_add_binary(i32*, i8*, %struct.stat*, i32) #1

declare dso_local i32 @nvlist_add_nvlist(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
