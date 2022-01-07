; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_IOMemSet32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_IOMemSet32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @IOMemSet32(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %9, align 8
  %12 = load i64, i64* %5, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 8
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %32, %3
  %23 = load i64*, i64** %9, align 8
  %24 = call i32 @PTR_TO_UINT(i64* %23)
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i1 [ false, %22 ], [ %29, %27 ]
  br i1 %31, label %32, label %41

32:                                               ; preds = %30
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @WRITE_UINT8(i64 %34, i64 %35)
  %37 = load i64*, i64** %9, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %22

41:                                               ; preds = %30
  %42 = load i64*, i64** %9, align 8
  %43 = bitcast i64* %42 to i32*
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %48, %41
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @WRITE_UINT32(i32 %50, i32 %51)
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 4
  store i32 %56, i32* %6, align 4
  br label %44

57:                                               ; preds = %44
  %58 = load i32*, i32** %8, align 8
  %59 = bitcast i32* %58 to i64*
  store i64* %59, i64** %9, align 8
  br label %60

60:                                               ; preds = %64, %57
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @WRITE_UINT8(i64 %66, i64 %67)
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %9, align 8
  br label %60

71:                                               ; preds = %60
  %72 = load i8*, i8** %4, align 8
  ret i8* %72
}

declare dso_local i32 @PTR_TO_UINT(i64*) #1

declare dso_local i32 @WRITE_UINT8(i64, i64) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
