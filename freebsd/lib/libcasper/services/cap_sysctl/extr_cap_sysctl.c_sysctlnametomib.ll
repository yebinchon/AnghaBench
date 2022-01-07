; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctlnametomib.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_sysctl/extr_cap_sysctl.c_sysctlnametomib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"sysctlnametomib\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"mib\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_sysctlnametomib(i32* %0, i8* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = call i32* @nvlist_create(i32 0)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @nvlist_add_string(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32*, i32** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @nvlist_add_string(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @nvlist_add_number(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %22 = load i32*, i32** %10, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @nvlist_add_number(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @cap_xfer_nvlist(i32* %27, i32* %28)
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %55

33:                                               ; preds = %4
  %34 = load i32*, i32** %10, align 8
  %35 = call i64 @dnvlist_get_number(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @nvlist_destroy(i32* %40)
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %55

43:                                               ; preds = %33
  %44 = load i32*, i32** %10, align 8
  %45 = call i8* @nvlist_get_binary(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64* %12)
  store i8* %45, i8** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = udiv i64 %46, 4
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @memcpy(i32* %49, i8* %50, i64 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @nvlist_destroy(i32* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %43, %39, %32
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32* @nvlist_create(i32) #1

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @nvlist_add_number(i32*, i8*, i32) #1

declare dso_local i32* @cap_xfer_nvlist(i32*, i32*) #1

declare dso_local i64 @dnvlist_get_number(i32*, i8*, i32) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i8* @nvlist_get_binary(i32*, i8*, i64*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
