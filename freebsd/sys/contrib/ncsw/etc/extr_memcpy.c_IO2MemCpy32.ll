; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_IO2MemCpy32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_memcpy.c_IO2MemCpy32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @IO2MemCpy32(i8* %0, i8* %1, i32 %2) #0 {
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
  br i1 %28, label %29, label %40

29:                                               ; preds = %27
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GET_UINT8(i32 %31)
  %33 = load i32*, i32** %14, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %14, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %13, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %19

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %51, %40
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @PTR_TO_UINT(i32* %42)
  %44 = and i32 %43, 3
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi i1 [ false, %41 ], [ %48, %46 ]
  br i1 %50, label %51, label %62

51:                                               ; preds = %49
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GET_UINT8(i32 %53)
  %55 = load i32*, i32** %14, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %13, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  br label %41

62:                                               ; preds = %49
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @PTR_TO_UINT(i32* %63)
  %65 = and i32 %64, 3
  %66 = shl i32 %65, 3
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 32, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %62
  %72 = load i32*, i32** %13, align 8
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %14, align 8
  store i32* %73, i32** %12, align 8
  br label %74

74:                                               ; preds = %78, %71
  %75 = load i32, i32* %6, align 4
  %76 = ashr i32 %75, 2
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @GET_UINT32(i32 %80)
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %12, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %11, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 4
  store i32 %88, i32* %6, align 4
  br label %74

89:                                               ; preds = %74
  %90 = load i32*, i32** %11, align 8
  store i32* %90, i32** %13, align 8
  %91 = load i32*, i32** %12, align 8
  store i32* %91, i32** %14, align 8
  br label %136

92:                                               ; preds = %62
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %7, align 4
  %95 = ashr i32 %94, 3
  %96 = sext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32* %98, i32** %11, align 8
  %99 = load i32*, i32** %14, align 8
  store i32* %99, i32** %12, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @GET_UINT32(i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  br label %105

105:                                              ; preds = %109, %92
  %106 = load i32, i32* %6, align 4
  %107 = ashr i32 %106, 3
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %105
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @GET_UINT32(i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %7, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %116, %117
  %119 = or i32 %115, %118
  %120 = load i32*, i32** %12, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %9, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %11, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %12, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 %126, 4
  store i32 %127, i32* %6, align 4
  br label %105

128:                                              ; preds = %105
  %129 = load i32*, i32** %12, align 8
  store i32* %129, i32** %14, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 -4
  %132 = load i32, i32* %7, align 4
  %133 = ashr i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32* %135, i32** %13, align 8
  br label %136

136:                                              ; preds = %128, %89
  br label %137

137:                                              ; preds = %141, %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %6, align 4
  %140 = icmp ne i32 %138, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @GET_UINT8(i32 %143)
  %145 = load i32*, i32** %14, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %14, align 8
  %148 = load i32*, i32** %13, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %13, align 8
  br label %137

150:                                              ; preds = %137
  %151 = load i8*, i8** %4, align 8
  ret i8* %151
}

declare dso_local i32 @PTR_TO_UINT(i32*) #1

declare dso_local i32 @GET_UINT8(i32) #1

declare dso_local i32 @GET_UINT32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
