; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_tar_i64toa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_tar_i64toa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tar_i64toa.buff = internal global [24 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tar_i64toa(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = sub nsw i32 0, %8
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %9, %7 ], [ %11, %10 ]
  store i32 %13, i32* %3, align 4
  store i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @tar_i64toa.buff, i64 0, i64 0), i64 24), i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %15, i8** %4, align 8
  store i8 0, i8* %15, align 1
  br label %16

16:                                               ; preds = %23, %12
  %17 = load i32, i32* %3, align 4
  %18 = srem i32 %17, 10
  %19 = add nsw i32 48, %18
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %4, align 8
  store i8 %20, i8* %22, align 1
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = sdiv i32 %24, 10
  store i32 %25, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %16, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %4, align 8
  store i8 45, i8* %32, align 1
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %4, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
