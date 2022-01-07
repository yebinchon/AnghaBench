; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_ntptime.c_sprintb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_ntptime.c_sprintb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sprintb.buf = internal global [132 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"0%o\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"sprintb buffer too small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sprintb(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @snprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @sprintb.buf, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %24

21:                                               ; preds = %13, %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @snprintf(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @sprintb.buf, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = call i32 @strlen(i8* getelementptr inbounds ([132 x i8], [132 x i8]* @sprintb.buf, i64 0, i64 0))
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @sprintb.buf, i64 0, i64 0), i64 %26
  store i8* %27, i8** %6, align 8
  store i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @sprintb.buf, i64 0, i64 0), i64 132), i8** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %102

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 32, i8* %33, align 1
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  store i8 40, i8* %35, align 1
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %93, %30
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  %41 = load i8, i8* %39, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %94

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = shl i32 1, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %82

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 44, i8* %55, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = icmp uge i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %104

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %78, %62
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %10, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sgt i32 %67, 32
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i8, i8* %10, align 1
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %6, align 8
  store i8 %70, i8* %71, align 1
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp uge i8* %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %104

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  br label %64

81:                                               ; preds = %64
  br label %93

82:                                               ; preds = %44
  br label %83

83:                                               ; preds = %89, %82
  %84 = load i8*, i8** %5, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sgt i32 %86, 32
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %5, align 8
  br label %83

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %81
  br label %38

94:                                               ; preds = %38
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %6, align 8
  store i8 41, i8* %95, align 1
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = icmp uge i8* %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %104

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %24
  %103 = load i8*, i8** %6, align 8
  store i8 0, i8* %103, align 1
  store i8* getelementptr inbounds ([132 x i8], [132 x i8]* @sprintb.buf, i64 0, i64 0), i8** %3, align 8
  br label %105

104:                                              ; preds = %100, %76, %60
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %105

105:                                              ; preds = %104, %102
  %106 = load i8*, i8** %3, align 8
  ret i8* %106
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
