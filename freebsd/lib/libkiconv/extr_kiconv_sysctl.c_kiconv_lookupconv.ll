; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkiconv/extr_kiconv_sysctl.c_kiconv_lookupconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkiconv/extr_kiconv_sysctl.c_kiconv_lookupconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"kern.iconv.drvlist\00", align 1
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kiconv_lookupconv(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i32 @sysctlbyname(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* null, i64* %4, i32* null, i32 0)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @errno, align 4
  store i32 %10, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %11
  %15 = load i64, i64* %4, align 8
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @sysctlbyname(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %22, i64* %4, i32* null, i32 0)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %2, align 4
  br label %54

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %45, %29
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @strcmp(i8* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @free(i8* %42)
  store i32 0, i32* %2, align 4
  br label %54

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %47, 1
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %6, align 8
  br label %31

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %11
  %53 = load i32, i32* @ENOENT, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %41, %25, %19, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
