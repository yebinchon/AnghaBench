; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_MemCpy32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_MemCpy32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @MemCpy32(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %13, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %14, align 8
  br label %19

19:                                               ; preds = %29, %3
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @PTR_TO_UINT(i32* %20)
  %22 = and i32 %21, 3
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %37

29:                                               ; preds = %27
  %30 = load i32*, i32** %13, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %13, align 8
  %32 = load i32, i32* %30, align 4
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %14, align 8
  store i32 %32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  br label %19

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @PTR_TO_UINT(i32* %39)
  %41 = and i32 %40, 3
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i1 [ false, %38 ], [ %45, %43 ]
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %13, align 8
  %51 = load i32, i32* %49, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %14, align 8
  store i32 %51, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %38

56:                                               ; preds = %46
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @PTR_TO_UINT(i32* %57)
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 3
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 32, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %56
  %66 = load i32*, i32** %13, align 8
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %14, align 8
  store i32* %67, i32** %12, align 8
  br label %68

68:                                               ; preds = %72, %65
  %69 = load i32, i32* %6, align 4
  %70 = ashr i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %11, align 8
  %75 = load i32, i32* %73, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 4
  store i32 %79, i32* %6, align 4
  br label %68

80:                                               ; preds = %68
  %81 = load i32*, i32** %11, align 8
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %12, align 8
  store i32* %82, i32** %14, align 8
  br label %124

83:                                               ; preds = %56
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32* %89, i32** %11, align 8
  %90 = load i32*, i32** %14, align 8
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %11, align 8
  %93 = load i32, i32* %91, align 4
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %98, %83
  %95 = load i32, i32* %6, align 4
  %96 = ashr i32 %95, 3
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  %106 = ashr i32 %104, %105
  %107 = or i32 %103, %106
  %108 = load i32*, i32** %12, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %9, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %11, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %12, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 4
  store i32 %115, i32* %6, align 4
  br label %94

116:                                              ; preds = %94
  %117 = load i32*, i32** %12, align 8
  store i32* %117, i32** %14, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 -4
  %120 = load i32, i32* %7, align 4
  %121 = ashr i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32* %123, i32** %13, align 8
  br label %124

124:                                              ; preds = %116, %80
  br label %125

125:                                              ; preds = %129, %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %6, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32*, i32** %13, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %13, align 8
  %132 = load i32, i32* %130, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %14, align 8
  store i32 %132, i32* %133, align 4
  br label %125

135:                                              ; preds = %125
  %136 = load i8*, i8** %4, align 8
  ret i8* %136
}

declare dso_local i32 @PTR_TO_UINT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
