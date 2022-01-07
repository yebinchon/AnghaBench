; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_buf_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_buf_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buf_send(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @PJDLOG_ASSERT(i32 %12)
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @PJDLOG_ASSERT(i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %53, %3
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @fd_wait(i32 %24, i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @send(i32 %26, i8* %27, i64 %28, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EINTR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %53

37:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %57

38:                                               ; preds = %23
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @ENOTCONN, align 8
  store i64 %42, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %57

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %7, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %44, %36
  %54 = load i64, i64* %7, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %23, label %56

56:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %41, %37
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @fd_wait(i32, i32) #1

declare dso_local i32 @send(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
