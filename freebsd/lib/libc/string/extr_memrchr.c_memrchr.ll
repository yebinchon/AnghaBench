; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_memrchr.c_memrchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_memrchr.c_memrchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memrchr(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %8, align 8
  br label %15

15:                                               ; preds = %27, %11
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 -1
  store i8* %17, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %6, align 4
  %21 = trunc i32 %20 to i8
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %4, align 8
  br label %33

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %15, label %31

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31, %3
  store i8* null, i8** %4, align 8
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i8*, i8** %4, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
