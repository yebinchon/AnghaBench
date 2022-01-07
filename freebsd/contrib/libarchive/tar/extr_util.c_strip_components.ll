; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_strip_components.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_strip_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @strip_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @strip_components(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %4, align 8
  %12 = load i8, i8* %10, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %18 [
    i32 47, label %14
    i32 0, label %17
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %5, align 4
  br label %18

17:                                               ; preds = %9
  store i8* null, i8** %3, align 8
  br label %31

18:                                               ; preds = %9, %14
  br label %6

19:                                               ; preds = %6
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %28 [
    i32 47, label %24
    i32 0, label %27
  ]

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  br label %30

27:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %31

28:                                               ; preds = %20
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %3, align 8
  br label %31

30:                                               ; preds = %24
  br label %20

31:                                               ; preds = %28, %27, %17
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
