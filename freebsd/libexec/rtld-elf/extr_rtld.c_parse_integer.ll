; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_parse_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_parse_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_integer.RADIX = internal constant i32 10, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_integer(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %6, align 1
  br label %10

10:                                               ; preds = %31, %1
  %11 = load i8, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load i8, i8* %6, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp slt i32 %16, 48
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sgt i32 %20, 57
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  store i32 -1, i32* %2, align 4
  br label %42

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %24, 10
  store i32 %25, i32* %5, align 4
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 48
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %6, align 1
  br label %10

35:                                               ; preds = %10
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %39, %22
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
