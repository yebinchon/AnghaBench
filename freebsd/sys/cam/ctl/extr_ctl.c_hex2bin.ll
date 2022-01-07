; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_hex2bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_hex2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @hex2bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hex2bin(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @memset(i8* %9, i32 0, i32 %10)
  br label %12

12:                                               ; preds = %18, %3
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isspace(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 120
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 88
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %27
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %41, i8** %4, align 8
  br label %42

42:                                               ; preds = %39, %33, %21
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 2
  store i32 %44, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %136, %42
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi i1 [ false, %45 ], [ %56, %53 ]
  br i1 %58, label %59, label %139

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %68, %59
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 45
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %4, align 8
  br label %60

71:                                               ; preds = %60
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %8, align 1
  %77 = load i8, i8* %8, align 1
  %78 = call i64 @isdigit(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load i8, i8* %8, align 1
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %8, align 1
  br label %101

85:                                               ; preds = %71
  %86 = load i8, i8* %8, align 1
  %87 = call i64 @isalpha(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i8, i8* %8, align 1
  %91 = call i64 @isupper(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 55, i32 87
  %95 = load i8, i8* %8, align 1
  %96 = sext i8 %95 to i32
  %97 = sub nsw i32 %96, %94
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %8, align 1
  br label %100

99:                                               ; preds = %85
  br label %139

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %80
  %102 = load i8, i8* %8, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp sge i32 %103, 16
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %139

106:                                              ; preds = %101
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = load i8, i8* %8, align 1
  %112 = sext i8 %111 to i32
  %113 = shl i32 %112, 4
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sdiv i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = or i32 %120, %113
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %118, align 1
  br label %135

123:                                              ; preds = %106
  %124 = load i8, i8* %8, align 1
  %125 = sext i8 %124 to i32
  %126 = load i8*, i8** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sdiv i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = or i32 %132, %125
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %130, align 1
  br label %135

135:                                              ; preds = %123, %110
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %45

139:                                              ; preds = %105, %99, %57
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  %142 = sdiv i32 %141, 2
  ret i32 %142
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @isupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
