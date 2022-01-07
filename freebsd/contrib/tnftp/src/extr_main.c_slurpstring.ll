; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_main.c_slurpstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_main.c_slurpstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slurpstring.bangstr = internal global [2 x i8] c"!\00", align 1
@slurpstring.dollarstr = internal global [2 x i8] c"$\00", align 1
@stringbase = common dso_local global i8* null, align 8
@argbase = common dso_local global i8* null, align 8
@slrflag = common dso_local global i32 0, align 4
@altarg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @slurpstring() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %6 = load i8*, i8** @stringbase, align 8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** @argbase, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** @argbase, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 33
  br i1 %12, label %18, label %13

13:                                               ; preds = %0
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 36
  br i1 %17, label %18, label %37

18:                                               ; preds = %13, %0
  %19 = load i32, i32* @slrflag, align 4
  switch i32 %19, label %35 [
    i32 0, label %20
    i32 1, label %31
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @slrflag, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @slrflag, align 4
  %23 = load i8*, i8** @stringbase, align 8
  %24 = call i32 @INC_CHKCURSOR(i8* %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 33
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @slurpstring.bangstr, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @slurpstring.dollarstr, i64 0, i64 0)
  store i8* %30, i8** %1, align 8
  br label %128

31:                                               ; preds = %18
  %32 = load i32, i32* @slrflag, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @slrflag, align 4
  %34 = load i8*, i8** @stringbase, align 8
  store i8* %34, i8** @altarg, align 8
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %31
  br label %37

37:                                               ; preds = %36, %13
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %46 [
    i32 0, label %42
    i32 32, label %43
    i32 9, label %43
  ]

42:                                               ; preds = %38
  br label %105

43:                                               ; preds = %38, %38
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @INC_CHKCURSOR(i8* %44)
  br label %38

46:                                               ; preds = %38
  %47 = load i32, i32* @slrflag, align 4
  switch i32 %47, label %55 [
    i32 0, label %48
    i32 1, label %51
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @slrflag, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @slrflag, align 4
  br label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @slrflag, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @slrflag, align 4
  %54 = load i8*, i8** %3, align 8
  store i8* %54, i8** @altarg, align 8
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %51, %48
  br label %57

57:                                               ; preds = %94, %81, %68, %56
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %68 [
    i32 32, label %61
    i32 9, label %61
    i32 0, label %61
    i32 92, label %62
    i32 34, label %65
  ]

61:                                               ; preds = %57, %57, %57
  br label %105

62:                                               ; preds = %57
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @INC_CHKCURSOR(i8* %63)
  br label %76

65:                                               ; preds = %57
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @INC_CHKCURSOR(i8* %66)
  br label %89

68:                                               ; preds = %57
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %4, align 8
  store i8 %70, i8* %71, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @INC_CHKCURSOR(i8* %74)
  store i32 1, i32* %2, align 4
  br label %57

76:                                               ; preds = %62
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  switch i32 %79, label %81 [
    i32 0, label %80
  ]

80:                                               ; preds = %76
  br label %105

81:                                               ; preds = %76
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %82, align 1
  %84 = load i8*, i8** %4, align 8
  store i8 %83, i8* %84, align 1
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 @INC_CHKCURSOR(i8* %87)
  store i32 1, i32* %2, align 4
  br label %57

89:                                               ; preds = %97, %65
  %90 = load i8*, i8** %3, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  switch i32 %92, label %97 [
    i32 0, label %93
    i32 34, label %94
  ]

93:                                               ; preds = %89
  br label %105

94:                                               ; preds = %89
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @INC_CHKCURSOR(i8* %95)
  br label %57

97:                                               ; preds = %89
  %98 = load i8*, i8** %3, align 8
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %4, align 8
  store i8 %99, i8* %100, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  %103 = load i8*, i8** %3, align 8
  %104 = call i32 @INC_CHKCURSOR(i8* %103)
  store i32 1, i32* %2, align 4
  br label %89

105:                                              ; preds = %93, %80, %61, %42
  %106 = load i32, i32* %2, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  store i8 0, i8* %109, align 1
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i8*, i8** %4, align 8
  store i8* %112, i8** @argbase, align 8
  %113 = load i8*, i8** %3, align 8
  store i8* %113, i8** @stringbase, align 8
  %114 = load i32, i32* %2, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i8*, i8** %5, align 8
  store i8* %117, i8** %1, align 8
  br label %128

118:                                              ; preds = %111
  %119 = load i32, i32* @slrflag, align 4
  switch i32 %119, label %126 [
    i32 0, label %120
    i32 1, label %123
  ]

120:                                              ; preds = %118
  %121 = load i32, i32* @slrflag, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @slrflag, align 4
  br label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @slrflag, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @slrflag, align 4
  store i8* null, i8** @altarg, align 8
  br label %127

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %123, %120
  store i8* null, i8** %1, align 8
  br label %128

128:                                              ; preds = %127, %116, %20
  %129 = load i8*, i8** %1, align 8
  ret i8* %129
}

declare dso_local i32 @INC_CHKCURSOR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
