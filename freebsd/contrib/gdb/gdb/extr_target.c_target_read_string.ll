; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_read_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_target_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_read_string(i32 %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  store i32 4, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = call i8* @xmalloc(i32 %20)
  store i8* %21, i8** %15, align 8
  %22 = load i8*, i8** %15, align 8
  store i8* %22, i8** %17, align 8
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %108, %4
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %118

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 3
  %31 = sub nsw i32 4, %30
  %32 = call i32 @MIN(i32 %28, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 3
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, -4
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %38 = call i32 @target_xfer_memory(i32 %36, i8* %37, i32 4, i32 0)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %44 = call i32 @target_xfer_memory(i32 %42, i8* %43, i32 1, i32 0)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %119

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i8*, i8** %17, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %49
  %62 = load i8*, i8** %17, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %16, align 4
  %69 = mul nsw i32 %68, 2
  store i32 %69, i32* %16, align 4
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i8* @xrealloc(i8* %70, i32 %71)
  store i8* %72, i8** %15, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i32, i32* %19, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8* %76, i8** %17, align 8
  br label %77

77:                                               ; preds = %61, %49
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %105, %77
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = load i8*, i8** %17, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %17, align 8
  store i8 %88, i8* %89, align 1
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %82
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %18, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %18, align 4
  br label %119

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %78

108:                                              ; preds = %78
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %18, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %18, align 4
  br label %24

118:                                              ; preds = %24
  br label %119

119:                                              ; preds = %118, %99, %47
  %120 = load i32*, i32** %8, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = load i32*, i32** %8, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i8**, i8*** %6, align 8
  %127 = icmp ne i8** %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i8*, i8** %15, align 8
  %130 = load i8**, i8*** %6, align 8
  store i8* %129, i8** %130, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %18, align 4
  ret i32 %132
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @target_xfer_memory(i32, i8*, i32, i32) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
