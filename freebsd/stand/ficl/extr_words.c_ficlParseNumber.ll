; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlParseNumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlParseNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@COMPILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ficlParseNumber(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @FALSE, align 4
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %7, align 1
  %16 = load i32, i32* @FALSE, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %8, align 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @SI_PTR(i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @SI_COUNT(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %47

27:                                               ; preds = %2
  %28 = load i8*, i8** %10, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %45 [
    i32 45, label %31
    i32 43, label %38
  ]

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %7, align 1
  br label %46

38:                                               ; preds = %27
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %7, align 1
  br label %46

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45, %38, %31
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load i32, i32* @TRUE, align 4
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %8, align 1
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %59, %50, %47
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %3, align 4
  br label %135

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %105, %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %11, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  %77 = load i8, i8* %75, align 1
  %78 = sext i8 %77 to i32
  store i32 %78, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %74, %70
  %81 = phi i1 [ false, %70 ], [ %79, %74 ]
  br i1 %81, label %82, label %111

82:                                               ; preds = %80
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @isalnum(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @FALSE, align 4
  store i32 %87, i32* %3, align 4
  br label %135

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  %90 = sub i32 %89, 48
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ugt i32 %91, 9
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  %95 = call signext i8 @tolower(i32 %94)
  %96 = sext i8 %95 to i32
  %97 = sub nsw i32 %96, 97
  %98 = add nsw i32 %97, 10
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %93, %88
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp uge i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %3, align 4
  br label %135

105:                                              ; preds = %99
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %9, align 4
  %108 = mul i32 %106, %107
  %109 = load i32, i32* %13, align 4
  %110 = add i32 %108, %109
  store i32 %110, i32* %6, align 4
  br label %70

111:                                              ; preds = %80
  %112 = load i8, i8* %8, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 @PUSHINT(i32 0)
  br label %116

116:                                              ; preds = %114, %111
  %117 = load i8, i8* %7, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = sub i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @PUSHINT(i32 %123)
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @COMPILE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %132 = call i32 @literalIm(%struct.TYPE_4__* %131)
  br label %133

133:                                              ; preds = %130, %122
  %134 = load i32, i32* @TRUE, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %103, %86, %67
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i8* @SI_PTR(i32) #1

declare dso_local i32 @SI_COUNT(i32) #1

declare dso_local i32 @isalnum(i32) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i32 @PUSHINT(i32) #1

declare dso_local i32 @literalIm(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
