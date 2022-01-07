; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_flopen_test.c_test_flopen_lock_self.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_flopen_test.c_test_flopen_lock_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"test_flopen_lock_self\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"second open succeeded\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_flopen_lock_self() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* null, i8** %2, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @unlink(i8* %5)
  %7 = load i8*, i8** %1, align 8
  %8 = load i32, i32* @O_RDWR, align 4
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = or i32 %8, %9
  %11 = call i32 (i8*, i32, ...) @flopen(i8* %7, i32 %10, i32 416)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @errno, align 4
  %16 = call i8* @strerror(i32 %15)
  store i8* %16, i8** %2, align 8
  br label %31

17:                                               ; preds = %0
  %18 = load i8*, i8** %1, align 8
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = load i32, i32* @O_NONBLOCK, align 4
  %21 = or i32 %19, %20
  %22 = call i32 (i8*, i32, ...) @flopen(i8* %18, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

28:                                               ; preds = %25, %17
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @close(i32 %29)
  br label %31

31:                                               ; preds = %28, %14
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @unlink(i8* %32)
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @flopen(i8*, i32, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
