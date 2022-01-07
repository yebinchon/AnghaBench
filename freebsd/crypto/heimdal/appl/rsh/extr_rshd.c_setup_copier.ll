; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_setup_copier.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/rsh/extr_rshd.c_setup_copier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not create child process.\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"net_write\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Write failure.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setup_copier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_copier(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %8 = call i32 @pipe_a_like(i32* %7)
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %10 = call i32 @pipe_a_like(i32* %9)
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %12 = call i32 @pipe_a_like(i32* %11)
  %13 = call i64 (...) @fork()
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @STDOUT_FILENO, align 4
  %18 = call i32 @fatal(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @close(i32 %24)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @close(i32 %27)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @close(i32 %30)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STDIN_FILENO, align 4
  %35 = call i32 @dup2(i32 %33, i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @STDOUT_FILENO, align 4
  %39 = call i32 @dup2(i32 %37, i32 %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @STDERR_FILENO, align 4
  %43 = call i32 @dup2(i32 %41, i32 %42)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @close(i32 %45)
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @close(i32 %51)
  br label %81

53:                                               ; preds = %19
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @close(i32 %55)
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* @STDOUT_FILENO, align 4
  %64 = call i32 @net_write(i32 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* @STDOUT_FILENO, align 4
  %68 = call i32 @fatal(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %53
  %70 = load i32, i32* @STDIN_FILENO, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STDOUT_FILENO, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @STDERR_FILENO, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @rshd_loop(i32 %70, i32 %72, i32 %73, i32 %75, i32 %76, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %69, %22
  ret void
}

declare dso_local i32 @pipe_a_like(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @fatal(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @net_write(i32, i8*, i32) #1

declare dso_local i32 @rshd_loop(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
