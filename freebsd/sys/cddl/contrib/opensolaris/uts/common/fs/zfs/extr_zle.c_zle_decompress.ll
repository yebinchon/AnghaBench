; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zle.c_zle_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zle.c_zle_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zle_decompress(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %14, align 8
  br label %26

26:                                               ; preds = %68, %5
  %27 = load i32*, i32** %11, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ult i32* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = icmp ult i32* %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %69

36:                                               ; preds = %34
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %37, align 4
  %40 = add nsw i32 1, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %15, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %11, align 8
  %52 = load i32, i32* %50, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %12, align 8
  store i32 %52, i32* %53, align 4
  br label %45

55:                                               ; preds = %45
  br label %68

56:                                               ; preds = %36
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %64, %56
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %15, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %12, align 8
  store i32 0, i32* %65, align 4
  br label %60

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %55
  br label %26

69:                                               ; preds = %34
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = icmp eq i32* %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 -1
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
