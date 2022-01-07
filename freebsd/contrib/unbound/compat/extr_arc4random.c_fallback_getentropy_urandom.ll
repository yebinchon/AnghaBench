; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_arc4random.c_fallback_getentropy_urandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_arc4random.c_fallback_getentropy_urandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @fallback_getentropy_urandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fallback_getentropy_urandom(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %23, %2
  %14 = load i32, i32* @O_RDONLY, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load i32, i32* @errno, align 4
  %21 = load i32, i32* @EINTR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %13

24:                                               ; preds = %19
  br label %69

25:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %54, %50, %25
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @read(i32 %34, i8* %37, i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %54

42:                                               ; preds = %30
  %43 = load i32, i32* @errno, align 4
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @EINTR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42
  br label %26

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @close(i32 %52)
  br label %69

54:                                               ; preds = %30
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %6, align 8
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @fallback_gotdata(i8* %62, i64 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %71

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %51, %24
  %70 = load i32, i32* @EIO, align 4
  store i32 %70, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @fallback_gotdata(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
