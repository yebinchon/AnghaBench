; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/test/extr_test.c_test_diskread.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/test/extr_test.c_test_diskread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@disk_index = common dso_local global i32 0, align 4
@disk_fd = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_diskread(i8* %0, i32 %1, i32 %2, i8* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @disk_index, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %6
  %19 = load i32*, i32** @disk_fd, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %6
  %26 = load i32, i32* @EIO, align 4
  store i32 %26, i32* %7, align 4
  br label %46

27:                                               ; preds = %18
  %28 = load i32*, i32** @disk_fd, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @pread(i32 %32, i8* %33, i64 %34, i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ult i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* @errno, align 4
  store i32 %40, i32* %7, align 4
  br label %46

41:                                               ; preds = %27
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %14, align 8
  %44 = sub i64 %42, %43
  %45 = load i64*, i64** %13, align 8
  store i64 %44, i64* %45, align 8
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %41, %39, %25
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i64 @pread(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
