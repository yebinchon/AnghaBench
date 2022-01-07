; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mstolfp.c_mstolfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_mstolfp.c_mstolfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mstolfp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %18, %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isspace(i8 zeroext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  store i8 45, i8* %27, align 1
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 46
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isdigit(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %148

42:                                               ; preds = %36, %31
  %43 = load i8*, i8** %6, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %49, %42
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isdigit(i8 zeroext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %44

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = icmp sgt i64 %57, 3
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %66, %59
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = load i8, i8* %61, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  store i8 %63, i8* %64, align 1
  br label %66

66:                                               ; preds = %60
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = icmp sgt i64 %71, 3
  br i1 %72, label %60, label %73

73:                                               ; preds = %66
  br label %77

74:                                               ; preds = %52
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  store i8 48, i8* %75, align 1
  br label %77

77:                                               ; preds = %74, %73
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  store i8 46, i8* %78, align 1
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = icmp slt i64 %84, 3
  br i1 %85, label %86, label %101

86:                                               ; preds = %77
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sub nsw i64 3, %91
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %96, %86
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %7, align 8
  store i8 48, i8* %94, align 1
  br label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %10, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %93, label %100

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %100, %77
  br label %102

102:                                              ; preds = %106, %101
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = icmp ult i8* %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  %109 = load i8, i8* %107, align 1
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %7, align 8
  store i8 %109, i8* %110, align 1
  br label %102

112:                                              ; preds = %102
  %113 = load i8*, i8** %6, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 46
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %6, align 8
  br label %120

120:                                              ; preds = %125, %117
  %121 = load i8*, i8** %6, align 8
  %122 = load i8, i8* %121, align 1
  %123 = call i64 @isdigit(i8 zeroext %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  %128 = load i8, i8* %126, align 1
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %7, align 8
  store i8 %128, i8* %129, align 1
  br label %120

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %112
  %133 = load i8*, i8** %7, align 8
  store i8 0, i8* %133, align 1
  %134 = load i8*, i8** %6, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i8*, i8** %6, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i64 @isspace(i8 zeroext %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %148

144:                                              ; preds = %138, %132
  %145 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @atolfp(i8* %145, i32* %146)
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %143, %41
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @atolfp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
