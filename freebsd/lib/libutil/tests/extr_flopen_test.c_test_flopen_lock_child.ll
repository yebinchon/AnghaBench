; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_flopen_test.c_test_flopen_lock_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_flopen_test.c_test_flopen_lock_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"test_flopen_lock_child\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"second open succeeded\00", align 1
@SIGINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_flopen_lock_child() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* null, i8** %2, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @unlink(i8* %6)
  %8 = load i8*, i8** %1, align 8
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = load i32, i32* @O_CREAT, align 4
  %11 = or i32 %9, %10
  %12 = call i32 (i8*, i32, ...) @flopen(i8* %8, i32 %11, i32 416)
  store volatile i32 %12, i32* %4, align 4
  %13 = load volatile i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* @errno, align 4
  %17 = call i8* @strerror(i32 %16)
  store i8* %17, i8** %2, align 8
  br label %48

18:                                               ; preds = %0
  %19 = call i32 (...) @fork()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @errno, align 4
  %24 = call i8* @strerror(i32 %23)
  store i8* %24, i8** %2, align 8
  br label %32

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = call i32 @select(i32 0, i32 0, i32 0, i32 0, i32 0)
  %30 = call i32 @_exit(i32 0) #3
  unreachable

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %22
  %33 = load volatile i32, i32* %4, align 4
  %34 = call i32 @close(i32 %33)
  %35 = load i8*, i8** %1, align 8
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = load i32, i32* @O_NONBLOCK, align 4
  %38 = or i32 %36, %37
  %39 = call i32 (i8*, i32, ...) @flopen(i8* %35, i32 %38)
  store volatile i32 %39, i32* %5, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %42 = load volatile i32, i32* %5, align 4
  %43 = call i32 @close(i32 %42)
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SIGINT, align 4
  %47 = call i32 @kill(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %15
  %49 = load i8*, i8** %1, align 8
  %50 = call i32 @unlink(i8* %49)
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @flopen(i8*, i32, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @select(i32, i32, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @kill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
