; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_flopen_test.c_test_flopen_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/tests/extr_flopen_test.c_test_flopen_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"test_flopen_open\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @test_flopen_open() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* null, i8** %2, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = load i32, i32* @O_RDWR, align 4
  %6 = load i32, i32* @O_CREAT, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @open(i8* %4, i32 %7, i32 416)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @errno, align 4
  %13 = call i8* @strerror(i32 %12)
  store i8* %13, i8** %2, align 8
  br label %29

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @close(i32 %15)
  %17 = load i8*, i8** %1, align 8
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = call i32 @flopen(i8* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @errno, align 4
  %24 = call i8* @strerror(i32 %23)
  store i8* %24, i8** %2, align 8
  br label %28

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @unlink(i8* %30)
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @flopen(i8*, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
