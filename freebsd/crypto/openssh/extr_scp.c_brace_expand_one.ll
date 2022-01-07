; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_brace_expand_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_brace_expand_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8***, i64*, i32*, i32*)* @brace_expand_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brace_expand_one(i8* %0, i8*** %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8*** %1, i8**** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @find_brace(i8* %21, i32* %14, i32* %15)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  store i32 1, i32* %25, align 4
  store i32 0, i32* %6, align 4
  br label %128

26:                                               ; preds = %5
  %27 = load i32, i32* %14, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %128

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %17, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %115, %31
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %118

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %70 [
    i32 123, label %45
    i32 125, label %52
    i32 91, label %59
    i32 93, label %60
    i32 92, label %61
  ]

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %70

49:                                               ; preds = %45
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %16, align 4
  br label %70

52:                                               ; preds = %38
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %70

56:                                               ; preds = %52
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %16, align 4
  br label %70

59:                                               ; preds = %38
  store i32 1, i32* %13, align 4
  br label %70

60:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %70

61:                                               ; preds = %38
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %38, %69, %60, %59, %56, %55, %49, %48
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 44
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %78, %70
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83
  br label %115

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %15, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %15, align 4
  br label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  store i32 %100, i32* %18, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i8***, i8**** %8, align 8
  %107 = load i64*, i64** %9, align 8
  %108 = call i64 @emit_expansion(i8* %101, i32 %102, i32 %103, i32 %104, i32 %105, i8*** %106, i64* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 -1, i32* %6, align 4
  br label %128

111:                                              ; preds = %99
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %115

114:                                              ; preds = %78
  br label %115

115:                                              ; preds = %114, %111, %89
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %34

118:                                              ; preds = %34
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %16, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121, %118
  %125 = load i32*, i32** %11, align 8
  store i32 1, i32* %125, align 4
  store i32 0, i32* %6, align 4
  br label %128

126:                                              ; preds = %121
  %127 = load i32*, i32** %10, align 8
  store i32 1, i32* %127, align 4
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %124, %110, %29, %24
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i64 @find_brace(i8*, i32*, i32*) #1

declare dso_local i64 @emit_expansion(i8*, i32, i32, i32, i32, i8***, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
