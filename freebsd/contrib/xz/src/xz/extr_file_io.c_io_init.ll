; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_file_io.c_io_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_ERROR = common dso_local global i32 0, align 4
@warn_fchown = common dso_local global i32 0, align 4
@user_abort_pipe = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Error creating a pipe: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@_STAT_DIRSIZE = common dso_local global i32 0, align 4
@_STAT_EXEC_EXT = common dso_local global i32 0, align 4
@_STAT_EXEC_MAGIC = common dso_local global i32 0, align 4
@_djstat_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @E_ERROR, align 4
  %4 = call i32 @tuklib_open_stdxxx(i32 %3)
  %5 = call i64 (...) @geteuid()
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  store i32 %7, i32* @warn_fchown, align 4
  %8 = load i32*, i32** @user_abort_pipe, align 8
  %9 = call i64 @pipe(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @message_fatal(i32 %12, i32 %14)
  br label %16

16:                                               ; preds = %11, %0
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %1, align 4
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  %21 = load i32*, i32** @user_abort_pipe, align 8
  %22 = load i32, i32* %1, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @F_GETFL, align 4
  %27 = call i32 (i32, i32, ...) @fcntl(i32 %25, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %42, label %30

30:                                               ; preds = %20
  %31 = load i32*, i32** @user_abort_pipe, align 8
  %32 = load i32, i32* %1, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @F_SETFL, align 4
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @O_NONBLOCK, align 4
  %39 = or i32 %37, %38
  %40 = call i32 (i32, i32, ...) @fcntl(i32 %35, i32 %36, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %30, %20
  %43 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 @message_fatal(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %42, %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %17

51:                                               ; preds = %17
  ret void
}

declare dso_local i32 @tuklib_open_stdxxx(i32) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @message_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
