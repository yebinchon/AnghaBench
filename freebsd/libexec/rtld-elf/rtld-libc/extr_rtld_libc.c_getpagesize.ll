; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/rtld-libc/extr_rtld_libc.c_getpagesize.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/rtld-libc/extr_rtld_libc.c_getpagesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getpagesize.pagesize = internal global i32 0, align 4
@npagesizes = common dso_local global i64 0, align 8
@pagesizes = common dso_local global i32* null, align 8
@CTL_HW = common dso_local global i32 0, align 4
@HW_PAGESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getpagesize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = load i32, i32* @getpagesize.pagesize, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @getpagesize.pagesize, align 4
  store i32 %8, i32* %1, align 4
  br label %36

9:                                                ; preds = %0
  %10 = load i64, i64* @npagesizes, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32*, i32** @pagesizes, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @getpagesize.pagesize, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* @getpagesize.pagesize, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* @CTL_HW, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @HW_PAGESIZE, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  store i64 4, i64* %4, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %26 = call i32 @nitems(i32* %25)
  %27 = call i32 @sysctl(i32* %24, i32 %26, i32* %3, i64* %4, i32* null, i32 0)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %30, i32* @getpagesize.pagesize, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* @getpagesize.pagesize, align 4
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* @getpagesize.pagesize, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %7
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
