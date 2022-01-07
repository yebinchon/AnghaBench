; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c_getrnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_arc4random.c_getrnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_RANDOM_DEV = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Couldn't open %s: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"read %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @getrnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getrnd(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @SSH_RANDOM_DEV, align 4
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @SSH_RANDOM_DEV, align 4
  %14 = load i64, i64* @errno, align 8
  %15 = call i32 @strerror(i64 %14)
  %16 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  br label %18

18:                                               ; preds = %51, %45, %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %27, %28
  %30 = call i64 @read(i32 %23, i32* %26, i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %22
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EAGAIN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EWOULDBLOCK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37, %33
  br label %18

46:                                               ; preds = %41
  %47 = load i32, i32* @SSH_RANDOM_DEV, align 4
  %48 = load i64, i64* @errno, align 8
  %49 = call i32 @strerror(i64 %48)
  %50 = call i32 @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %46, %22
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %18

55:                                               ; preds = %18
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @close(i32 %56)
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @fatal(i8*, i32, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @read(i32, i32*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
