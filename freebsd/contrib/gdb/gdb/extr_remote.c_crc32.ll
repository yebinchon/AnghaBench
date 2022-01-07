; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_crc32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc32_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32)* @crc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @crc32(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** @crc32_table, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %46, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 24
  store i32 %20, i32* %9, align 4
  store i32 8, i32* %8, align 4
  br label %21

21:                                               ; preds = %37, %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, -2147483648
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 1
  %31 = xor i32 %30, 79764919
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 1
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %31, %28 ], [ %34, %32 ]
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** @crc32_table, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %15

49:                                               ; preds = %15
  br label %50

50:                                               ; preds = %49, %3
  br label %51

51:                                               ; preds = %55, %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 8
  %58 = load i32*, i32** @crc32_table, align 8
  %59 = load i32, i32* %6, align 4
  %60 = lshr i32 %59, 24
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %60, %63
  %65 = and i32 %64, 255
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %57, %68
  store i32 %69, i32* %6, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %51

72:                                               ; preds = %51
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  ret i64 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
