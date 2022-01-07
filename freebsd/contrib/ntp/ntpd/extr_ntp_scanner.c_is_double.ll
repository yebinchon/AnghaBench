; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_is_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_scanner.c_is_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_double(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %5, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 43, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 45, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12, %1
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %19, %12
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i64 @isdigit(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %30, %23
  %39 = phi i1 [ false, %23 ], [ %37, %30 ]
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %23

46:                                               ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 46, %51
  br i1 %52, label %53, label %80

53:                                               ; preds = %46
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %76, %53
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i8*, i8** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = call i64 @isdigit(i32 %68)
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %63, %56
  %72 = phi i1 [ false, %56 ], [ %70, %63 ]
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %5, align 8
  br label %56

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %46
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %150

84:                                               ; preds = %80
  %85 = load i8*, i8** %3, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = icmp ne i8 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store i32 1, i32* %2, align 4
  br label %150

91:                                               ; preds = %84
  %92 = load i8*, i8** %3, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = call signext i8 @tolower(i32 %96)
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 101, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %5, align 8
  br label %104

103:                                              ; preds = %91
  store i32 0, i32* %2, align 4
  br label %150

104:                                              ; preds = %100
  %105 = load i8*, i8** %3, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 43, %109
  br i1 %110, label %118, label %111

111:                                              ; preds = %104
  %112 = load i8*, i8** %3, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 45, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111, %104
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %118, %111
  br label %122

122:                                              ; preds = %139, %121
  %123 = load i8*, i8** %3, align 8
  %124 = load i64, i64* %5, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load i8*, i8** %3, align 8
  %131 = load i64, i64* %5, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = call i64 @isdigit(i32 %134)
  %136 = icmp ne i64 %135, 0
  br label %137

137:                                              ; preds = %129, %122
  %138 = phi i1 [ false, %122 ], [ %136, %129 ]
  br i1 %138, label %139, label %142

139:                                              ; preds = %137
  %140 = load i64, i64* %5, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %5, align 8
  br label %122

142:                                              ; preds = %137
  %143 = load i8*, i8** %3, align 8
  %144 = load i64, i64* %5, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  store i32 1, i32* %2, align 4
  br label %150

149:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %148, %103, %90, %83
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local signext i8 @tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
