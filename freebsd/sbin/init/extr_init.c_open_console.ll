; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_open_console.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_open_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_CONSOLE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot open null device.\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@_PATH_INITLOG = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @open_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_console() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @_PATH_CONSOLE, align 4
  %3 = call i32 @revoke(i32 %2)
  %4 = load i32, i32* @_PATH_CONSOLE, align 4
  %5 = load i32, i32* @O_RDWR, align 4
  %6 = load i32, i32* @O_NONBLOCK, align 4
  %7 = or i32 %5, %6
  %8 = call i32 (i32, i32, ...) @open(i32 %4, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %27

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @F_SETFL, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @F_GETFL, align 4
  %15 = call i32 (i32, i32, ...) @fcntl(i32 %13, i32 %14)
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 (i32, i32, ...) @fcntl(i32 %11, i32 %12, i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = call i64 @login_tty(i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %74

24:                                               ; preds = %10
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @close(i32 %25)
  br label %27

27:                                               ; preds = %24, %0
  %28 = load i32, i32* @_PATH_DEVNULL, align 4
  %29 = load i32, i32* @O_RDWR, align 4
  %30 = call i32 (i32, i32, ...) @open(i32 %28, i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 @stall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @_exit(i32 1) #3
  unreachable

35:                                               ; preds = %27
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @STDIN_FILENO, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @STDIN_FILENO, align 4
  %42 = call i32 @dup2(i32 %40, i32 %41)
  %43 = load i32, i32* %1, align 4
  %44 = call i32 @close(i32 %43)
  br label %45

45:                                               ; preds = %39, %35
  %46 = load i32, i32* @_PATH_INITLOG, align 4
  %47 = load i32, i32* @O_WRONLY, align 4
  %48 = load i32, i32* @O_APPEND, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @O_CREAT, align 4
  %51 = or i32 %49, %50
  %52 = call i32 (i32, i32, ...) @open(i32 %46, i32 %51, i32 420)
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @STDIN_FILENO, align 4
  %57 = load i32, i32* @STDOUT_FILENO, align 4
  %58 = call i32 @dup2(i32 %56, i32 %57)
  br label %70

59:                                               ; preds = %45
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @STDOUT_FILENO, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* @STDOUT_FILENO, align 4
  %66 = call i32 @dup2(i32 %64, i32 %65)
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @close(i32 %67)
  br label %69

69:                                               ; preds = %63, %59
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i32, i32* @STDOUT_FILENO, align 4
  %72 = load i32, i32* @STDERR_FILENO, align 4
  %73 = call i32 @dup2(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %23
  ret void
}

declare dso_local i32 @revoke(i32) #1

declare dso_local i32 @open(i32, i32, ...) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i64 @login_tty(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @stall(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
