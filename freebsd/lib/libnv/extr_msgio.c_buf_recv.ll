; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_buf_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnv/extr_msgio.c_buf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buf_recv(i32 %0, i8* %1, i64 %2) #0 {
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
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @PJDLOG_ASSERT(i32 %16)
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %43, %35, %3
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @fd_wait(i32 %23, i32 1)
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @recv(i32 %25, i8* %26, i64 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EINTR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %19

36:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %53

37:                                               ; preds = %22
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @ENOTCONN, align 8
  store i64 %41, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %53

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %9, align 8
  br label %19

52:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %40, %36
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @fd_wait(i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
