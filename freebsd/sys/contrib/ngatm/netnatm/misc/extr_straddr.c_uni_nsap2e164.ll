; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/misc/extr_straddr.c_uni_nsap2e164.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/misc/extr_straddr.c_uni_nsap2e164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uni_nsap2e164(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 69
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %134

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 8
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 15
  %22 = icmp ne i32 %21, 15
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %134

24:                                               ; preds = %17
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %76, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %26, 7
  br i1 %27, label %28, label %79

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %76

43:                                               ; preds = %38, %28
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %44, 10
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %134

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 48
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %8, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 15
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %76

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %9, align 4
  %68 = icmp sge i32 %67, 10
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %134

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 48
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  store i8 %73, i8* %74, align 1
  br label %76

76:                                               ; preds = %70, %65, %42
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %25

79:                                               ; preds = %25
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 4
  %86 = and i32 %85, 15
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %79
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89, %79
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 10
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 -1, i32* %4, align 4
  br label %134

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 48
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  store i8 %100, i8* %101, align 1
  br label %103

103:                                              ; preds = %97, %89
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %134

108:                                              ; preds = %103
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  store i8 0, i8* %109, align 1
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %134

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %130, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 1
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 19, i32 20
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %115
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 -1, i32* %4, align 4
  br label %134

130:                                              ; preds = %122
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %115

133:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %129, %113, %107, %96, %69, %46, %23, %16
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
