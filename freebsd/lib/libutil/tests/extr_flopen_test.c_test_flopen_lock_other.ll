; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_flopen_test.c_test_flopen_lock_other.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_flopen_test.c_test_flopen_lock_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"test_flopen_lock_other\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"vfork() doesn't work as expected\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"second open succeeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_flopen_lock_other() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* null, i8** %2, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @unlink(i8* %5)
  %7 = load i8*, i8** %1, align 8
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 (i8*, i32, ...) @flopen(i8* %7, i32 %10, i32 416)
  store volatile i32 %11, i32* %3, align 4
  %12 = load volatile i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @errno, align 4
  %16 = call i8* @strerror(i32 %15)
  store i8* %16, i8** %2, align 8
  br label %40

17:                                               ; preds = %0
  store volatile i32 -42, i32* %4, align 4
  %18 = call i64 (...) @vfork()
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i8*, i8** %1, align 8
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = load i32, i32* @O_NONBLOCK, align 4
  %24 = or i32 %22, %23
  %25 = call i32 (i8*, i32, ...) @flopen(i8* %21, i32 %24)
  store volatile i32 %25, i32* %4, align 4
  %26 = load volatile i32, i32* %4, align 4
  %27 = call i32 @close(i32 %26)
  %28 = call i32 @_exit(i32 0) #3
  unreachable

29:                                               ; preds = %17
  %30 = load volatile i32, i32* %4, align 4
  %31 = icmp eq i32 %30, -42
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = load volatile i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load volatile i32, i32* %3, align 4
  %39 = call i32 @close(i32 %38)
  br label %40

40:                                               ; preds = %37, %14
  %41 = load i8*, i8** %1, align 8
  %42 = call i32 @unlink(i8* %41)
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @flopen(i8*, i32, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @vfork(...) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
