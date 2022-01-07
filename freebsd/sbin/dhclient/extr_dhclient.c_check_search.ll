; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_check_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_check_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_search(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @PERIOD, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %3, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  store i32 %12, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = icmp sgt i32 %14, 256
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @whitechar(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  %25 = load i8, i8* %23, align 1
  %26 = sext i8 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %18

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %99, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %101

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %3, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @periodchar(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @whitechar(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %31
  br label %75

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @periodchar(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @borderchar(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %106

53:                                               ; preds = %48
  br label %74

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @periodchar(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @borderchar(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %106

66:                                               ; preds = %61
  br label %73

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @middlechar(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %106

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %66
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74, %43
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @whitechar(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %4, align 4
  br label %99

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %86, %81
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @whitechar(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %3, align 8
  %89 = load i8, i8* %87, align 1
  %90 = sext i8 %89 to i32
  store i32 %90, i32* %7, align 4
  br label %82

91:                                               ; preds = %82
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @PERIOD, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %79
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %5, align 4
  br label %28

101:                                              ; preds = %28
  %102 = load i32, i32* %6, align 4
  %103 = icmp sgt i32 %102, 6
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %106

105:                                              ; preds = %101
  store i32 1, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %104, %71, %65, %52, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @whitechar(i32) #1

declare dso_local i64 @periodchar(i32) #1

declare dso_local i32 @borderchar(i32) #1

declare dso_local i32 @middlechar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
