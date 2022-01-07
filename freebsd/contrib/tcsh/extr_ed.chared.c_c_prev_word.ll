; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_prev_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.chared.c_c_prev_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VImode = common dso_local global i32 0, align 4
@C_CLASS_WHITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @c_prev_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @c_prev_word(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 -1
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @VImode, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp uge i32* %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @isword(i32 %25)
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi i1 [ false, %19 ], [ %28, %23 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 -1
  store i32* %33, i32** %5, align 8
  br label %19

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %46, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp uge i32* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @isword(i32 %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 -1
  store i32* %48, i32** %5, align 8
  br label %35

49:                                               ; preds = %44
  br label %14

50:                                               ; preds = %14
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %5, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = icmp ult i32* %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  store i32* %57, i32** %5, align 8
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32*, i32** %5, align 8
  store i32* %59, i32** %4, align 8
  br label %118

60:                                               ; preds = %3
  br label %61

61:                                               ; preds = %113, %93, %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %114

65:                                               ; preds = %61
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ult i32* %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %114

70:                                               ; preds = %65
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @c_to_class(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %86, %70
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = icmp uge i32* %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @c_to_class(i32 %81)
  %83 = icmp eq i32 %79, %82
  br label %84

84:                                               ; preds = %78, %74
  %85 = phi i1 [ false, %74 ], [ %83, %78 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 -1
  store i32* %88, i32** %5, align 8
  br label %74

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @C_CLASS_WHITE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %61

94:                                               ; preds = %89
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @c_to_class(i32 %96)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %110, %94
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = icmp uge i32* %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @c_to_class(i32 %105)
  %107 = icmp eq i32 %103, %106
  br label %108

108:                                              ; preds = %102, %98
  %109 = phi i1 [ false, %98 ], [ %107, %102 ]
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 -1
  store i32* %112, i32** %5, align 8
  br label %98

113:                                              ; preds = %108
  br label %61

114:                                              ; preds = %69, %61
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %5, align 8
  %117 = load i32*, i32** %5, align 8
  store i32* %117, i32** %4, align 8
  br label %118

118:                                              ; preds = %114, %58
  %119 = load i32*, i32** %4, align 8
  ret i32* %119
}

declare dso_local i64 @isword(i32) #1

declare dso_local i32 @c_to_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
