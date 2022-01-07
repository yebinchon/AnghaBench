; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_catman.c_process_manpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_catman.c_process_manpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"open(%s)\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"openat(%s)\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"sendmsg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_manpage(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 0, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = load i32, i32* @O_NOFOLLOW, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @O_CREAT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @O_TRUNC, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @S_IRUSR, align 4
  %29 = load i32, i32* @S_IWUSR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @S_IRGRP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IROTH, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @openat(i32 %19, i8* %20, i32 %27, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @close(i32 %40)
  store i32 0, i32* %4, align 4
  br label %57

42:                                               ; preds = %18
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @STDERR_FILENO, align 4
  %47 = call i32 @sock_fd_write(i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %57

56:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %54, %37, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @openat(i32, i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sock_fd_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
