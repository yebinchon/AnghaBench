; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_getstr_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_mkupdate.c_getstr_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@digits = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8***, i8**)* @getstr_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getstr_str(i8* %0, i32 %1, i8*** %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8*** %2, i8**** %7, align 8
  store i8** %3, i8*** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %9, align 8
  br label %17

17:                                               ; preds = %122, %89, %57, %49, %40, %4
  %18 = load i8***, i8**** %7, align 8
  %19 = load i8**, i8*** %18, align 8
  %20 = load i8**, i8*** %8, align 8
  %21 = icmp ule i8** %19, %20
  br i1 %21, label %22, label %123

22:                                               ; preds = %17
  %23 = load i8***, i8**** %7, align 8
  %24 = load i8**, i8*** %23, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %123

29:                                               ; preds = %22
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @isspace(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8***, i8**** %7, align 8
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %41, align 8
  br label %17

44:                                               ; preds = %36, %33, %29
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %66 [
    i32 92, label %46
    i32 34, label %54
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  %50 = load i8***, i8**** %7, align 8
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %50, align 8
  br label %17

53:                                               ; preds = %46
  br label %67

54:                                               ; preds = %44
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %62 = load i8***, i8**** %7, align 8
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %62, align 8
  br label %17

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %44, %65
  br label %67

67:                                               ; preds = %66, %53
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  switch i32 %71, label %93 [
    i32 48, label %72
    i32 49, label %72
    i32 50, label %72
    i32 51, label %72
    i32 52, label %72
    i32 53, label %72
    i32 54, label %72
    i32 55, label %72
    i32 56, label %72
    i32 57, label %72
  ]

72:                                               ; preds = %70, %70, %70, %70, %70, %70, %70, %70, %70, %70
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %73, 10
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @digits, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @strchr(i64 %76, i32 %77)
  %79 = load i64, i64* @digits, align 8
  %80 = sub nsw i64 %78, %79
  %81 = add nsw i64 %75, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 255
  store i32 %88, i32* %10, align 4
  br label %93

89:                                               ; preds = %72
  %90 = load i8***, i8**** %7, align 8
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %90, align 8
  br label %17

93:                                               ; preds = %70, %86
  store i32 0, i32* %14, align 4
  br label %103

94:                                               ; preds = %67
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @isspace(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %124

102:                                              ; preds = %97, %94
  br label %103

103:                                              ; preds = %102, %93
  %104 = load i8*, i8** %9, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = getelementptr inbounds i8, i8* %108, i64 -1
  %110 = icmp uge i8* %104, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %124

112:                                              ; preds = %103
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = ptrtoint i8* %115 to i8
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %9, align 8
  store i8 %116, i8* %117, align 1
  %119 = load i8***, i8**** %7, align 8
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i32 1
  store i8** %121, i8*** %119, align 8
  br label %122

122:                                              ; preds = %112
  br label %17

123:                                              ; preds = %28, %17
  br label %124

124:                                              ; preds = %123, %111, %101
  %125 = load i8*, i8** %9, align 8
  store i8 0, i8* %125, align 1
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = icmp eq i8* %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 0, i32 -1
  %134 = sext i32 %133 to i64
  br label %141

135:                                              ; preds = %124
  %136 = load i8*, i8** %9, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  br label %141

141:                                              ; preds = %135, %129
  %142 = phi i64 [ %134, %129 ], [ %140, %135 ]
  %143 = trunc i64 %142 to i32
  ret i32 %143
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @strchr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
