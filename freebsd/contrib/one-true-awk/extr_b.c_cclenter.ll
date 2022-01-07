; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_cclenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_cclenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cclenter.buf = internal global i64* null, align 8
@cclenter.bufsz = internal global i32 100, align 4
@.str = private unnamed_addr constant [46 x i8] c"out of space for character class [%.10s...] 1\00", align 1
@NCHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"cclenter1\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"out of space for character class [%.10s...] 2\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cclenter2\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"out of space for character class [%.10s...] 3\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"cclenter: in = |%s|, out = |%s|\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cclenter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %7, align 8
  %12 = load i64*, i64** %7, align 8
  store i64* %12, i64** %8, align 8
  %13 = load i64*, i64** @cclenter.buf, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @cclenter.bufsz, align 4
  %17 = call i64 @malloc(i32 %16)
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** @cclenter.buf, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i64*, i64** %7, align 8
  %22 = call i32 @FATAL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64* %21)
  br label %23

23:                                               ; preds = %20, %15, %1
  %24 = load i64*, i64** @cclenter.buf, align 8
  store i64* %24, i64** %9, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %133, %115, %69, %23
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %7, align 8
  %28 = load i64, i64* %26, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %140

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 @quoted(i64** %7)
  store i32 %35, i32* %4, align 4
  br label %118

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %117

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %117

42:                                               ; preds = %39
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 -1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %117

47:                                               ; preds = %42
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %116

51:                                               ; preds = %47
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 -1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load i64*, i64** %7, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %7, align 8
  %58 = load i64, i64* %56, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 92
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = call i32 @quoted(i64** %7)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %51
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @collate_range_cmp(i32 %65, i32 %66)
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i64*, i64** %9, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 -1
  store i64* %71, i64** %9, align 8
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %3, align 4
  br label %25

74:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %112, %74
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @NCHARS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @collate_range_cmp(i32 %80, i32 %81)
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @collate_range_cmp(i32 %85, i32 %86)
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %79
  br label %112

90:                                               ; preds = %84
  %91 = load i64*, i64** %9, align 8
  %92 = load i64*, i64** @cclenter.buf, align 8
  %93 = ptrtoint i64* %91 to i64
  %94 = ptrtoint i64* %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 8
  %97 = add nsw i64 %96, 2
  %98 = trunc i64 %97 to i32
  %99 = bitcast i64** %9 to i8**
  %100 = call i32 @adjbuf(i8** bitcast (i64** @cclenter.buf to i8**), i32* @cclenter.bufsz, i32 %98, i32 100, i8** %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %90
  %103 = load i64*, i64** %7, align 8
  %104 = call i32 @FATAL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64* %103)
  br label %105

105:                                              ; preds = %102, %90
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64*, i64** %9, align 8
  %109 = getelementptr inbounds i64, i64* %108, i32 1
  store i64* %109, i64** %9, align 8
  store i64 %107, i64* %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %105, %89
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %75

115:                                              ; preds = %75
  br label %25

116:                                              ; preds = %47
  br label %117

117:                                              ; preds = %116, %42, %39, %36
  br label %118

118:                                              ; preds = %117, %34
  %119 = load i64*, i64** %9, align 8
  %120 = load i64*, i64** @cclenter.buf, align 8
  %121 = ptrtoint i64* %119 to i64
  %122 = ptrtoint i64* %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 8
  %125 = add nsw i64 %124, 2
  %126 = trunc i64 %125 to i32
  %127 = bitcast i64** %9 to i8**
  %128 = call i32 @adjbuf(i8** bitcast (i64** @cclenter.buf to i8**), i32* @cclenter.bufsz, i32 %126, i32 100, i8** %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %118
  %131 = load i64*, i64** %7, align 8
  %132 = call i32 @FATAL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64* %131)
  br label %133

133:                                              ; preds = %130, %118
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64*, i64** %9, align 8
  %137 = getelementptr inbounds i64, i64* %136, i32 1
  store i64* %137, i64** %9, align 8
  store i64 %135, i64* %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %3, align 4
  br label %25

140:                                              ; preds = %25
  %141 = load i64*, i64** %9, align 8
  store i64 0, i64* %141, align 8
  %142 = load i64*, i64** %8, align 8
  %143 = load i64*, i64** @cclenter.buf, align 8
  %144 = bitcast i64* %143 to i8*
  %145 = call i32 @dprintf(i8* %144)
  %146 = load i64*, i64** %8, align 8
  %147 = call i32 @xfree(i64* %146)
  %148 = load i64*, i64** @cclenter.buf, align 8
  %149 = bitcast i64* %148 to i8*
  %150 = call i64 @tostring(i8* %149)
  %151 = inttoptr i64 %150 to i8*
  ret i8* %151
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, i64*) #1

declare dso_local i32 @quoted(i64**) #1

declare dso_local i64 @collate_range_cmp(i32, i32) #1

declare dso_local i32 @adjbuf(i8**, i32*, i32, i32, i8**, i8*) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @xfree(i64*) #1

declare dso_local i64 @tostring(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
