; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_sigqueue.c_sigorder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_sigqueue.c_sigorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@asc = common dso_local global i32 0, align 4
@SIGRTMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64)* @sigorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sigorder(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = mul i64 %12, 4
  %14 = call i32 @memcpy(i32* %10, i32* %11, i64 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @asc, align 4
  %18 = call i32 @qsort(i32* %15, i64 %16, i32 4, i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %4, align 8
  br label %83

23:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %77, %23
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, 1
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SIGRTMIN, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %77

37:                                               ; preds = %29
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ult i64 %55, %56
  br label %58

58:                                               ; preds = %54, %44
  %59 = phi i1 [ false, %44 ], [ %57, %54 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %44

63:                                               ; preds = %58
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %80

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  br label %77

77:                                               ; preds = %68, %36
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %24

80:                                               ; preds = %67, %24
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %80, %21
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
