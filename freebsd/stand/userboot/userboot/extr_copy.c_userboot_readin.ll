; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_copy.c_userboot_readin.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_copy.c_userboot_readin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@copyin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @userboot_readin(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4096 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %33, %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ugt i64 %17, 4096
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i64 4096, i64* %10, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @read(i32 %21, i8* %22, i64 %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %50

28:                                               ; preds = %20
  %29 = load i64, i64* %9, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %4, align 8
  br label %52

33:                                               ; preds = %28
  %34 = load i32, i32* @copyin, align 4
  %35 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %36 = load i32, i32* %6, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @CALLBACK(i32 %34, i8* %35, i32 %36, i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %12

50:                                               ; preds = %27, %12
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %50, %31
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @CALLBACK(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
