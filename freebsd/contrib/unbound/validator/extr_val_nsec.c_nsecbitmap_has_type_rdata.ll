; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsecbitmap_has_type_rdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_nsecbitmap_has_type_rdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.nsecbitmap_has_type_rdata.masks = private unnamed_addr constant [8 x i32] [i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsecbitmap_has_type_rdata(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([8 x i32]* @__const.nsecbitmap_has_type_rdata.masks to i8*), i64 32, i1 false)
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %79, %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %80

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %81

26:                                               ; preds = %22
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  %29 = load i32, i32* %27, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  %32 = load i32, i32* %30, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* %6, align 8
  %34 = sub i64 %33, 2
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 32
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %26
  store i32 0, i32* %4, align 4
  br label %81

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = ashr i32 %51, 3
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %13, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %13, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %81

59:                                               ; preds = %50
  %60 = load i32*, i32** %5, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %63, %68
  store i32 %69, i32* %4, align 4
  br label %81

70:                                               ; preds = %46
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %5, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %6, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %70
  br label %19

80:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %59, %58, %45, %25
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
