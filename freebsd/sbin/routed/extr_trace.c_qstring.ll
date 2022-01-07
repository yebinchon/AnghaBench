; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_qstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_qstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qstring.buf = internal global [161 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @qstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qstring(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([161 x i8], [161 x i8]* @qstring.buf, i64 0, i64 0), i8** %5, align 8
  br label %8

8:                                                ; preds = %96, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ult i8* %12, getelementptr inbounds ([161 x i8], [161 x i8]* @qstring.buf, i64 0, i64 160)
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %99

16:                                               ; preds = %14
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %40, %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = icmp ult i8* %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %43

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  br label %26

43:                                               ; preds = %38, %26
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = icmp uge i8* %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %100

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %16
  %53 = load i8, i8* %7, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sge i32 %54, 32
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i8, i8* %7, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %58, 127
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 92
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8, i8* %7, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 %65, i8* %66, align 1
  br label %96

68:                                               ; preds = %60, %56, %52
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  store i8 92, i8* %69, align 1
  %71 = load i8, i8* %7, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %88 [
    i32 92, label %73
    i32 10, label %76
    i32 13, label %79
    i32 9, label %82
    i32 8, label %85
  ]

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  store i8 92, i8* %74, align 1
  br label %95

76:                                               ; preds = %68
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  store i8 110, i8* %77, align 1
  br label %95

79:                                               ; preds = %68
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  store i8 114, i8* %80, align 1
  br label %95

82:                                               ; preds = %68
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  store i8 116, i8* %83, align 1
  br label %95

85:                                               ; preds = %68
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  store i8 98, i8* %86, align 1
  br label %95

88:                                               ; preds = %68
  %89 = load i8*, i8** %5, align 8
  %90 = load i8, i8* %7, align 1
  %91 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %90)
  %92 = load i8*, i8** %5, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %5, align 8
  br label %95

95:                                               ; preds = %88, %85, %82, %79, %76, %73
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %4, align 4
  br label %8

99:                                               ; preds = %14
  br label %100

100:                                              ; preds = %99, %50
  %101 = load i8*, i8** %5, align 8
  store i8 0, i8* %101, align 1
  ret i8* getelementptr inbounds ([161 x i8], [161 x i8]* @qstring.buf, i64 0, i64 0)
}

declare dso_local i32 @sprintf(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
