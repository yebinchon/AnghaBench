; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_MASK = common dso_local global i32 0, align 4
@CHAR_EOS = common dso_local global i32 0, align 4
@M_NOT = common dso_local global i32 0, align 4
@M_END = common dso_local global i32 0, align 4
@M_RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %12

12:                                               ; preds = %123, %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ult i32* %13, %14
  br i1 %15, label %16, label %124

16:                                               ; preds = %12
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %6, align 8
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @M_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %115 [
    i32 130, label %23
    i32 129, label %44
    i32 128, label %52
  ]

23:                                               ; preds = %16
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %130

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @match(i32* %30, i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %130

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load i32, i32* @CHAR_EOS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %29, label %43

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %130

44:                                               ; preds = %16
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load i32, i32* @CHAR_EOS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %130

51:                                               ; preds = %44
  br label %123

52:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* %53, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @CHAR_EOS, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %130

59:                                               ; preds = %52
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @M_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @M_NOT, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* @CHAR_EOS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %6, align 8
  br label %72

72:                                               ; preds = %69, %59
  br label %73

73:                                               ; preds = %108, %72
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  %76 = load i32, i32* %74, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* @M_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @M_END, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %73
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @M_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @M_RNG, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 1, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %92, %88
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  store i32* %101, i32** %6, align 8
  br label %108

102:                                              ; preds = %81
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1, i32* %8, align 4
  br label %107

107:                                              ; preds = %106, %102
  br label %108

108:                                              ; preds = %107, %99
  br label %73

109:                                              ; preds = %73
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %130

114:                                              ; preds = %109
  br label %123

115:                                              ; preds = %16
  %116 = load i32*, i32** %5, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %5, align 8
  %118 = load i32, i32* %116, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %130

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122, %114, %51
  br label %12

124:                                              ; preds = %12
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CHAR_EOS, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %124, %121, %113, %58, %50, %43, %35, %27
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
