; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_atomicio.c_atomicio.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_atomicio.c_atomicio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @atomicio(i32 (i32, i8*, i64)* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32 (i32, i8*, i64)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pollfd, align 4
  store i32 (i32, i8*, i64)* %0, i32 (i32, i8*, i64)** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %6, align 8
  %18 = icmp eq i32 (i32, i8*, i64)* %17, @read
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @POLLIN, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @POLLOUT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %13, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %65, %54, %45, %23
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub i64 %36, %37
  %39 = call i32 %31(i32 %32, i8* %35, i64 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %60 [
    i32 -1, label %41
    i32 0, label %57
  ]

41:                                               ; preds = %30
  %42 = load i32, i32* @errno, align 4
  %43 = load i32, i32* @EINTR, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %26

46:                                               ; preds = %41
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @EAGAIN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @ENOBUFS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = call i32 @poll(%struct.pollfd* %13, i32 1, i32 -1)
  br label %26

56:                                               ; preds = %50
  store i64 0, i64* %5, align 8
  br label %68

57:                                               ; preds = %30
  %58 = load i32, i32* @EPIPE, align 4
  store i32 %58, i32* @errno, align 4
  %59 = load i64, i64* %11, align 8
  store i64 %59, i64* %5, align 8
  br label %68

60:                                               ; preds = %30
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %60
  br label %26

66:                                               ; preds = %26
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %66, %57, %56
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
