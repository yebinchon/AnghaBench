; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_fetch_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_fetch_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"cannot stat file %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot open file %s: %s\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot mmap file %s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_fetch_file(i8* %0, i8** %1, i64* %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @stat(i8* %14, %struct.stat* %13)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @S_ISREG(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17, %5
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32**, i32*** %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @ucl_create_err(i32** %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %22
  store i32 0, i32* %6, align 4
  br label %76

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8**, i8*** %8, align 8
  store i8* null, i8** %37, align 8
  %38 = load i64*, i64** %9, align 8
  store i64 0, i64* %38, align 8
  br label %75

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @O_RDONLY, align 4
  %42 = call i32 @open(i8* %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32**, i32*** %10, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 @ucl_create_err(i32** %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %48)
  store i32 0, i32* %6, align 4
  br label %76

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @PROT_READ, align 4
  %54 = load i32, i32* @MAP_SHARED, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i8* @ucl_mmap(i32* null, i64 %52, i32 %53, i32 %54, i32 %55, i32 0)
  %57 = load i8**, i8*** %8, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** @MAP_FAILED, align 8
  %59 = icmp eq i8* %56, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32**, i32*** %10, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 @strerror(i32 %65)
  %67 = call i32 @ucl_create_err(i32** %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %64, i32 %66)
  %68 = load i8**, i8*** %8, align 8
  store i8* null, i8** %68, align 8
  store i32 0, i32* %6, align 4
  br label %76

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @close(i32 %73)
  br label %75

75:                                               ; preds = %69, %36
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %60, %44, %31
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @ucl_create_err(i32**, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @ucl_mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
