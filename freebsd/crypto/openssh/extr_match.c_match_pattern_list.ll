; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_match.c_match_pattern_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_match.c_match_pattern_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_pattern_list(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %13, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %114, %3
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %115

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %11, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 33
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %11, align 8
  br label %31

30:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %27
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %78, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %37, 1023
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 44
  br label %46

46:                                               ; preds = %39, %36, %32
  %47 = phi i1 [ false, %36 ], [ false, %32 ], [ %45, %39 ]
  br i1 %47, label %48, label %83

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = call i64 @isupper(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call signext i8 @tolower(i32 %64)
  %66 = sext i8 %65 to i32
  br label %73

67:                                               ; preds = %51, %48
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  br label %73

73:                                               ; preds = %67, %59
  %74 = phi i32 [ %66, %59 ], [ %72, %67 ]
  %75 = trunc i32 %74 to i8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %76
  store i8 %75, i8* %77, align 1
  br label %78

78:                                               ; preds = %73
  %79 = load i64, i64* %12, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %32

83:                                               ; preds = %46
  %84 = load i64, i64* %12, align 8
  %85 = icmp uge i64 %84, 1023
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %117

87:                                               ; preds = %83
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %13, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i8*, i8** %6, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 44
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %98, %91, %87
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %106 = call i64 @match_pattern(i8* %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 -1, i32* %4, align 4
  br label %117

112:                                              ; preds = %108
  store i32 1, i32* %10, align 4
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %101
  br label %16

115:                                              ; preds = %16
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %111, %86
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i64 @match_pattern(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
