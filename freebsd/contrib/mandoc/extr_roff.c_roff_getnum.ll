; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_getnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_getnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROFFNUM_WHITE = common dso_local global i32 0, align 4
@ROFFNUM_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32)* @roff_getnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_getnum(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* null, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32* %10, i32** %8, align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %17
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %41

38:                                               ; preds = %30, %17
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ROFFNUM_WHITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %55, %46
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isspace(i8 zeroext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %47

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32*, i32** %8, align 8
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %82, %59
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @isdigit(i8 zeroext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 10, %71
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = add nsw i32 %72, %78
  %80 = sub nsw i32 %79, 48
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %61

85:                                               ; preds = %61
  %86 = load i32, i32* %13, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %161

93:                                               ; preds = %85
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 0, %98
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  switch i32 %107, label %144 [
    i32 102, label %108
    i32 105, label %112
    i32 99, label %116
    i32 118, label %123
    i32 80, label %123
    i32 109, label %127
    i32 110, label %127
    i32 112, label %131
    i32 117, label %136
    i32 77, label %139
  ]

108:                                              ; preds = %101
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 65536
  store i32 %111, i32* %11, align 4
  br label %149

112:                                              ; preds = %101
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 240
  store i32 %115, i32* %11, align 4
  br label %149

116:                                              ; preds = %101
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 240
  %120 = sitofp i32 %119 to double
  %121 = fdiv double %120, 2.540000e+00
  %122 = fptosi double %121 to i32
  store i32 %122, i32* %11, align 4
  br label %149

123:                                              ; preds = %101, %101
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %125, 40
  store i32 %126, i32* %11, align 4
  br label %149

127:                                              ; preds = %101, %101
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, 24
  store i32 %130, i32* %11, align 4
  br label %149

131:                                              ; preds = %101
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 10
  %135 = sdiv i32 %134, 3
  store i32 %135, i32* %11, align 4
  br label %149

136:                                              ; preds = %101
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %11, align 4
  br label %149

139:                                              ; preds = %101
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, 6
  %143 = sdiv i32 %142, 25
  store i32 %143, i32* %11, align 4
  br label %149

144:                                              ; preds = %101
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %144, %139, %136, %131, %127, %123, %116, %112, %108
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @ROFFNUM_SCALE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %11, align 4
  %156 = load i32*, i32** %8, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %149
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  %160 = load i32*, i32** %7, align 8
  store i32 %159, i32* %160, align 4
  store i32 1, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %92
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
