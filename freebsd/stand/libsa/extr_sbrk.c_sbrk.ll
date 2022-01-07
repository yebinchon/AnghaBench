; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_sbrk.c_sbrk.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_sbrk.c_sbrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@heapbase = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"No heap setup\00", align 1
@heapsize = common dso_local global i64 0, align 8
@maxheap = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sbrk(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @heapbase, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @panic(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i64, i64* @heapsize, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = load i64, i64* @maxheap, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = load i64, i64* @heapbase, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i64, i64* @heapsize, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @bzero(i8* %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @heapsize, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* @heapsize, align 8
  %28 = load i8*, i8** %4, align 8
  store i8* %28, i8** %2, align 8
  br label %31

29:                                               ; preds = %9
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* @errno, align 4
  store i8* inttoptr (i64 -1 to i8*), i8** %2, align 8
  br label %31

31:                                               ; preds = %29, %16
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
