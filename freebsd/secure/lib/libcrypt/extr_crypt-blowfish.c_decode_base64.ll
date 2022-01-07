; ModuleID = '/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-blowfish.c_decode_base64.c'
source_filename = "/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-blowfish.c_decode_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @decode_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_base64(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %8, align 8
  br label %15

15:                                               ; preds = %85, %3
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = icmp ult i32* %16, %20
  br i1 %21, label %22, label %95

22:                                               ; preds = %15
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CHAR64(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CHAR64(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 255
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %22
  br label %95

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 %37, 2
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 48
  %41 = ashr i32 %40, 4
  %42 = or i32 %38, %41
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = icmp uge i32* %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %95

52:                                               ; preds = %36
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CHAR64(i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 255
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %95

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 15
  %63 = shl i32 %62, 4
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 60
  %66 = ashr i32 %65, 2
  %67 = or i32 %63, %66
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = icmp uge i32* %70, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %60
  br label %95

77:                                               ; preds = %60
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @CHAR64(i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 255
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %95

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, 3
  %88 = shl i32 %87, 6
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %88, %89
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  store i32* %94, i32** %8, align 8
  br label %15

95:                                               ; preds = %84, %76, %59, %51, %35, %15
  ret void
}

declare dso_local i32 @CHAR64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
