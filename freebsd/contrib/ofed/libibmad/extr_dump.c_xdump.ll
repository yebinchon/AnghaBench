; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_xdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_xdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdump(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @fputs(i8* %16, i32* %17)
  br label %19

19:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %127, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %130

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = add nsw i32 48, %32
  br label %40

34:                                               ; preds = %24
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 4
  %38 = sub nsw i32 %37, 10
  %39 = add nsw i32 97, %38
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i32 [ %33, %29 ], [ %39, %34 ]
  %42 = trunc i32 %41 to i8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @fputc(i8 signext %42, i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = add nsw i32 48, %52
  br label %60

54:                                               ; preds = %40
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 15
  %58 = sub nsw i32 %57, 10
  %59 = add nsw i32 97, %58
  br label %60

60:                                               ; preds = %54, %49
  %61 = phi i32 [ %53, %49 ], [ %59, %54 ]
  %62 = trunc i32 %61 to i8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @fputc(i8 signext %62, i32* %63)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %130

70:                                               ; preds = %60
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 4
  %75 = icmp slt i32 %74, 10
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 4
  %81 = add nsw i32 48, %80
  br label %89

82:                                               ; preds = %70
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 4
  %87 = sub nsw i32 %86, 10
  %88 = add nsw i32 97, %87
  br label %89

89:                                               ; preds = %82, %76
  %90 = phi i32 [ %81, %76 ], [ %88, %82 ]
  %91 = trunc i32 %90 to i8
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @fputc(i8 signext %91, i32* %92)
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 15
  %98 = icmp slt i32 %97, 10
  br i1 %98, label %99, label %105

99:                                               ; preds = %89
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 15
  %104 = add nsw i32 48, %103
  br label %112

105:                                              ; preds = %89
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 15
  %110 = sub nsw i32 %109, 10
  %111 = add nsw i32 97, %110
  br label %112

112:                                              ; preds = %105, %99
  %113 = phi i32 [ %104, %99 ], [ %111, %105 ]
  %114 = trunc i32 %113 to i8
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @fputc(i8 signext %114, i32* %115)
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = srem i32 %118, 16
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @fputc(i8 signext 32, i32* %122)
  br label %127

124:                                              ; preds = %112
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @fputc(i8 signext 10, i32* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32* %129, i32** %9, align 8
  br label %20

130:                                              ; preds = %69, %20
  %131 = load i32, i32* %10, align 4
  %132 = srem i32 %131, 16
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @fputc(i8 signext 10, i32* %135)
  br label %137

137:                                              ; preds = %134, %130
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
