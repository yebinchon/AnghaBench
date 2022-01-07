; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_checksum.c_create_osi_cksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_checksum.c_create_osi_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_osi_cksum(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %43, %3
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %4, align 8
  br label %42

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %4, align 8
  %37 = load i32, i32* %35, align 4
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %33, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %14

46:                                               ; preds = %14
  %47 = load i32, i32* %10, align 4
  %48 = srem i32 %47, 255
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = srem i32 %49, 255
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %46
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %46
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %7, align 4
  %78 = srem i32 %77, 255
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = srem i32 %79, 255
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 255, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %76
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 255, i32* %8, align 4
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, 255
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 8
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
