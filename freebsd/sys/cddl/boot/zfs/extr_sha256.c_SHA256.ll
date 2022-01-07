; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_SHA256.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_sha256.c_SHA256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32*)* @SHA256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA256(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [128 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 63
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %29, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %10, align 4
  %19 = sub i32 %17, %18
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %11, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @SHA256Transform(i32* %22, i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %11, align 4
  %31 = add i32 %30, 64
  store i32 %31, i32* %11, align 4
  br label %15

32:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %55
  store i32 128, i32* %56, align 4
  br label %57

57:                                               ; preds = %65, %52
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %58, 63
  %60 = icmp ne i32 %59, 56
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %63
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %57

68:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* %11, align 4
  %71 = icmp ult i32 %70, 8
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 %73, 3
  %75 = load i32, i32* %11, align 4
  %76 = mul i32 8, %75
  %77 = sub i32 56, %76
  %78 = ashr i32 %74, %77
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %69

86:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %98, %86
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds [128 x i32], [128 x i32]* %9, i64 0, i64 0
  %94 = load i32, i32* %11, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @SHA256Transform(i32* %92, i32* %96)
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %11, align 4
  %100 = add i32 %99, 64
  store i32 %100, i32* %11, align 4
  br label %87

101:                                              ; preds = %87
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 32
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %106, %109
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 32
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %114, %117
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 32
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 5
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %122, %125
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 6
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 32
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 7
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %130, %133
  %135 = call i32 @ZIO_SET_CHECKSUM(i32* %102, i32 %110, i32 %118, i32 %126, i32 %134)
  ret void
}

declare dso_local i32 @SHA256Transform(i32*, i32*) #1

declare dso_local i32 @ZIO_SET_CHECKSUM(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
