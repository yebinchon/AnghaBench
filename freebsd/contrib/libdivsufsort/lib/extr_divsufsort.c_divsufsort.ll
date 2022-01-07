; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libdivsufsort/lib/extr_divsufsort.c_divsufsort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libdivsufsort/lib/extr_divsufsort.c_divsufsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUCKET_A_SIZE = common dso_local global i32 0, align 4
@BUCKET_B_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @divsufsort(i64* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %3
  store i32 -1, i32* %4, align 4
  br label %94

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %94

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %94

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = xor i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 1, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %94

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* @BUCKET_A_SIZE, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i64 @malloc(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %8, align 8
  %62 = load i32, i32* @BUCKET_B_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i64 @malloc(i32 %65)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %55
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i64*, i64** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @sort_typeBstar(i64* %74, i32* %75, i32* %76, i32* %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i64*, i64** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @construct_SA(i64* %80, i32* %81, i32* %82, i32* %83, i32 %84, i32 %85)
  br label %88

87:                                               ; preds = %70, %55
  store i32 -2, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %73
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @free(i32* %89)
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @free(i32* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %34, %28, %24, %20
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @sort_typeBstar(i64*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @construct_SA(i64*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
