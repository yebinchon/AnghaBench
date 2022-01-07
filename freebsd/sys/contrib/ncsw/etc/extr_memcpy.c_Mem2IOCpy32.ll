; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_Mem2IOCpy32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_Mem2IOCpy32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Mem2IOCpy32(i8* %0, i8* %1, i32 %2) #0 {
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
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WRITE_UINT8(i32 %31, i32 %33)
  %35 = load i32*, i32** %14, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %13, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %19

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @PTR_TO_UINT(i32* %43)
  %45 = and i32 %44, 3
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i1 [ false, %42 ], [ %49, %47 ]
  br i1 %51, label %52, label %64

52:                                               ; preds = %50
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WRITE_UINT8(i32 %54, i32 %56)
  %58 = load i32*, i32** %14, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %13, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  br label %42

64:                                               ; preds = %50
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @PTR_TO_UINT(i32* %65)
  %67 = and i32 %66, 3
  %68 = shl i32 %67, 3
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 32, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %64
  %74 = load i32*, i32** %13, align 8
  store i32* %74, i32** %11, align 8
  %75 = load i32*, i32** %14, align 8
  store i32* %75, i32** %12, align 8
  br label %76

76:                                               ; preds = %80, %73
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @WRITE_UINT32(i32 %82, i32 %84)
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %12, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %11, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 4
  store i32 %91, i32* %6, align 4
  br label %76

92:                                               ; preds = %76
  %93 = load i32*, i32** %11, align 8
  store i32* %93, i32** %13, align 8
  %94 = load i32*, i32** %12, align 8
  store i32* %94, i32** %14, align 8
  br label %138

95:                                               ; preds = %64
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %7, align 4
  %98 = ashr i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32* %101, i32** %11, align 8
  %102 = load i32*, i32** %14, align 8
  store i32* %102, i32** %12, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  %105 = load i32, i32* %103, align 4
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %110, %95
  %107 = load i32, i32* %6, align 4
  %108 = ashr i32 %107, 3
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %10, align 4
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %8, align 4
  %120 = ashr i32 %118, %119
  %121 = or i32 %117, %120
  %122 = call i32 @WRITE_UINT32(i32 %114, i32 %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %9, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %11, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %12, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %128, 4
  store i32 %129, i32* %6, align 4
  br label %106

130:                                              ; preds = %106
  %131 = load i32*, i32** %12, align 8
  store i32* %131, i32** %14, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 -4
  %134 = load i32, i32* %7, align 4
  %135 = ashr i32 %134, 3
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32* %137, i32** %13, align 8
  br label %138

138:                                              ; preds = %130, %92
  br label %139

139:                                              ; preds = %143, %138
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %6, align 4
  %142 = icmp ne i32 %140, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @WRITE_UINT8(i32 %145, i32 %147)
  %149 = load i32*, i32** %14, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %14, align 8
  %151 = load i32*, i32** %13, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %13, align 8
  br label %139

153:                                              ; preds = %139
  %154 = load i8*, i8** %4, align 8
  ret i8* %154
}

declare dso_local i32 @PTR_TO_UINT(i32*) #1

declare dso_local i32 @WRITE_UINT8(i32, i32) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
