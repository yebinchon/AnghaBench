; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_milenage.c_milenage_auts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_milenage.c_milenage_auts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @milenage_auts(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca [6 x i32], align 16
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 8, i1 false)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %21 = call i64 @milenage_f2345(i32* %17, i32* %18, i32* %19, i32* null, i32* null, i32* null, i32* null, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %63

24:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 6
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %33, %37
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %53 = call i64 @milenage_f1(i32* %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* null, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %46
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  %59 = call i64 @os_memcmp_const(i32* %56, i32* %58, i32 8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %46
  store i32 -1, i32* %6, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %61, %23
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @milenage_f2345(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @milenage_f1(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
