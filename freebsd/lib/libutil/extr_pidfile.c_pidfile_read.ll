; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pidfile.c_pidfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @pidfile_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidfile_read(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @O_RDONLY, align 4
  %16 = load i32, i32* @O_CLOEXEC, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @openat(i32 %13, i8* %14, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %4, align 4
  br label %55

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %26 = call i32 @read(i32 %24, i8* %25, i32 15)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @errno, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %55

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @EAGAIN, align 4
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %45 = call i32 @strtol(i8* %44, i8** %9, i32 10)
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %49
  %51 = icmp ne i8* %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %52, %37, %32, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
