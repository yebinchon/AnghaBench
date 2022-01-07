; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_int.c___ultoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_int.c___ultoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_MAX = common dso_local global i32 0, align 4
@CHAR_MAX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i8*, i32, i8, i8*)* @__ultoa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__ultoa(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i8 signext %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8 %5, i8* %14, align 1
  store i8* %6, i8** %15, align 8
  %19 = load i8*, i8** %10, align 8
  store i8* %19, i8** %16, align 8
  %20 = load i32, i32* %11, align 4
  switch i32 %20, label %125 [
    i32 10, label %21
    i32 8, label %96
    i32 16, label %109
  ]

21:                                               ; preds = %7
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = call signext i8 @to_char(i32 %25)
  %27 = load i8*, i8** %16, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %16, align 8
  store i8 %26, i8* %28, align 1
  %29 = load i8*, i8** %16, align 8
  store i8* %29, i8** %8, align 8
  br label %132

30:                                               ; preds = %21
  store i32 0, i32* %18, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @LONG_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = srem i32 %35, 10
  %37 = call signext i8 @to_char(i32 %36)
  %38 = load i8*, i8** %16, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %39, i8** %16, align 8
  store i8 %37, i8* %39, align 1
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 10
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %17, align 8
  br label %48

45:                                               ; preds = %30
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %17, align 8
  br label %48

48:                                               ; preds = %45, %34
  br label %49

49:                                               ; preds = %92, %48
  %50 = load i64, i64* %17, align 8
  %51 = srem i64 %50, 10
  %52 = trunc i64 %51 to i32
  %53 = call signext i8 @to_char(i32 %52)
  %54 = load i8*, i8** %16, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %16, align 8
  store i8 %53, i8* %55, align 1
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %49
  %61 = load i32, i32* %18, align 4
  %62 = load i8*, i8** %15, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %60
  %67 = load i8*, i8** %15, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* @CHAR_MAX, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load i64, i64* %17, align 8
  %75 = icmp sgt i64 %74, 9
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i8, i8* %14, align 1
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** %16, align 8
  store i8 %77, i8* %79, align 1
  store i32 0, i32* %18, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i8*, i8** %15, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %15, align 8
  br label %88

88:                                               ; preds = %85, %76
  br label %89

89:                                               ; preds = %88, %73, %66, %60, %49
  %90 = load i64, i64* %17, align 8
  %91 = sdiv i64 %90, 10
  store i64 %91, i64* %17, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load i64, i64* %17, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %49, label %95

95:                                               ; preds = %92
  br label %130

96:                                               ; preds = %7
  br label %97

97:                                               ; preds = %105, %96
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 7
  %100 = call signext i8 @to_char(i32 %99)
  %101 = load i8*, i8** %16, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 -1
  store i8* %102, i8** %16, align 8
  store i8 %100, i8* %102, align 1
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 3
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %97, label %108

108:                                              ; preds = %105
  br label %130

109:                                              ; preds = %7
  br label %110

110:                                              ; preds = %121, %109
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 15
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %16, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 -1
  store i8* %118, i8** %16, align 8
  store i8 %116, i8* %118, align 1
  %119 = load i32, i32* %9, align 4
  %120 = ashr i32 %119, 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %110, label %124

124:                                              ; preds = %121
  br label %130

125:                                              ; preds = %7
  %126 = load i32, i32* %11, align 4
  %127 = icmp eq i32 %126, 16
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  br label %130

130:                                              ; preds = %125, %124, %108, %95
  %131 = load i8*, i8** %16, align 8
  store i8* %131, i8** %8, align 8
  br label %132

132:                                              ; preds = %130, %24
  %133 = load i8*, i8** %8, align 8
  ret i8* %133
}

declare dso_local signext i8 @to_char(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
