; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_SHA512.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_SHA512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32*)* @SHA512 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA512(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 127
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %30, %4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sub i32 %18, %19
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %12, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @SHA512Transform(i32* %23, i32* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %12, align 4
  %32 = add i32 %31, 128
  store i32 %32, i32* %12, align 4
  br label %16

33:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add i32 %41, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load i32, i32* %11, align 4
  %55 = icmp ult i32 %54, 112
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %59
  store i32 128, i32* %60, align 4
  br label %61

61:                                               ; preds = %68, %56
  %62 = load i32, i32* %11, align 4
  %63 = icmp ult i32 %62, 112
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %66
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %61

71:                                               ; preds = %61
  br label %88

72:                                               ; preds = %53
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %75
  store i32 128, i32* %76, align 4
  br label %77

77:                                               ; preds = %84, %72
  %78 = load i32, i32* %11, align 4
  %79 = icmp ult i32 %78, 240
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %82
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %77

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %71
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 %90, 3
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %98 = call i32 @Encode64(i32* %96, i32* %97, i32 8)
  %99 = load i32, i32* %11, align 4
  %100 = zext i32 %99 to i64
  %101 = add i64 %100, 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %114, %88
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = call i32 @SHA512Transform(i32* %108, i32* %112)
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %12, align 4
  %116 = add i32 %115, 128
  store i32 %116, i32* %12, align 4
  br label %103

117:                                              ; preds = %103
  %118 = load i32*, i32** %8, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @Encode64(i32* %118, i32* %119, i32 16)
  ret void
}

declare dso_local i32 @SHA512Transform(i32*, i32*) #1

declare dso_local i32 @Encode64(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
