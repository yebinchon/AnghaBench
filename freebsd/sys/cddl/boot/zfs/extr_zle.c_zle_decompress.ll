; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_zle.c_zle_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_zle.c_zle_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64, i32)* @zle_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zle_decompress(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %14, align 8
  br label %24

24:                                               ; preds = %67, %5
  %25 = load i8*, i8** %11, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** %12, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp ult i8* %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %68

34:                                               ; preds = %32
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %11, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 1, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %48, %43
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %15, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  %51 = load i8, i8* %49, align 1
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %12, align 8
  store i8 %51, i8* %52, align 1
  br label %44

54:                                               ; preds = %44
  br label %67

55:                                               ; preds = %34
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %63, %55
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %15, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %12, align 8
  store i8 0, i8* %64, align 1
  br label %59

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %54
  br label %24

68:                                               ; preds = %32
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = icmp eq i8* %69, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 -1
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
