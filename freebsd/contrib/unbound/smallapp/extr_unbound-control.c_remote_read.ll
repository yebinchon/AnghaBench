; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_remote_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-control.c_remote_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_ERROR_ZERO_RETURN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"could not SSL_read\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"could not recv: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64)* @remote_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_read(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %37

14:                                               ; preds = %4
  %15 = call i32 (...) @ERR_clear_error()
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = sub nsw i32 %19, 1
  %21 = call i32 @SSL_read(i32* %16, i8* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @SSL_get_error(i32* %24, i32 %25)
  %27 = load i64, i64* @SSL_ERROR_ZERO_RETURN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %58

30:                                               ; preds = %23
  %31 = call i32 @ssl_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %14
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 0, i8* %36, align 1
  br label %57

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = sub i64 %40, 1
  %42 = call i64 @recv(i32 %38, i8* %39, i64 %41, i32 0)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ule i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i64, i64* %11, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %58

49:                                               ; preds = %45
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @fatal_exit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %37
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %53, %32
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %48, %29
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_read(i32*, i8*, i32) #1

declare dso_local i64 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @ssl_err(i8*) #1

declare dso_local i64 @recv(i32, i8*, i64, i32) #1

declare dso_local i32 @fatal_exit(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
