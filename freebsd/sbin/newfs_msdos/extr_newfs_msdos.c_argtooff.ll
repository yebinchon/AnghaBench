; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_newfs_msdos.c_argtooff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs_msdos/extr_newfs_msdos.c_argtooff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s: bad %s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: not supported yet %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @argtooff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @argtooff(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* @errno, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strtoll(i8* %7, i8** %5, i32 0)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @errno, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %11, %2
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %26, %20, %14
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %38 [
    i32 115, label %42
    i32 83, label %42
    i32 107, label %45
    i32 75, label %45
    i32 109, label %48
    i32 77, label %48
    i32 103, label %51
    i32 71, label %51
    i32 112, label %54
    i32 80, label %54
    i32 108, label %54
    i32 76, label %54
  ]

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @errx(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %34, %34, %38
  %43 = load i64, i64* %6, align 8
  %44 = shl i64 %43, 9
  store i64 %44, i64* %6, align 8
  br label %58

45:                                               ; preds = %34, %34
  %46 = load i64, i64* %6, align 8
  %47 = shl i64 %46, 10
  store i64 %47, i64* %6, align 8
  br label %58

48:                                               ; preds = %34, %34
  %49 = load i64, i64* %6, align 8
  %50 = shl i64 %49, 20
  store i64 %50, i64* %6, align 8
  br label %58

51:                                               ; preds = %34, %34
  %52 = load i64, i64* %6, align 8
  %53 = shl i64 %52, 30
  store i64 %53, i64* %6, align 8
  br label %58

54:                                               ; preds = %34, %34, %34, %34
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %51, %48, %45, %42
  br label %59

59:                                               ; preds = %58, %30
  %60 = load i64, i64* %6, align 8
  ret i64 %60
}

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
