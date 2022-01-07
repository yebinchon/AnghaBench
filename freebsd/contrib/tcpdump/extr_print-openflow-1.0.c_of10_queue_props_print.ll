; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_queue_props_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-openflow-1.0.c_of10_queue_props_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OF_QUEUE_PROP_HEADER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"\0A\09   property %s\00", align 1
@ofpqt_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid (0x%04x)\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c", len %u\00", align 1
@OF_QUEUE_PROP_MIN_RATE_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c" (bogus)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c", rate disabled\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c", rate %u.%u%%\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@istr = common dso_local global i32 0, align 4
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64)* @of10_queue_props_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @of10_queue_props_print(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %10, align 8
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %129, %4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %133

22:                                               ; preds = %19
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @OF_QUEUE_PROP_HEADER_LEN, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %135

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ND_TCHECK2(i32 %29, i64 2)
  %31 = load i32*, i32** %7, align 8
  %32 = call i64 @EXTRACT_16BITS(i32* %31)
  store i64 %32, i64* %12, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @ofpqt_str, align 4
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @tok2str(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ND_TCHECK2(i32 %43, i64 2)
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @EXTRACT_16BITS(i32* %45)
  store i64 %46, i64* %13, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %13, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @ND_PRINT(i32* %51)
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @OF_QUEUE_PROP_HEADER_LEN, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %27
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %27
  br label %135

61:                                               ; preds = %56
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ND_TCHECK2(i32 %63, i64 4)
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %7, align 8
  %67 = load i64, i64* %12, align 8
  switch i64 %67, label %78 [
    i64 128, label %68
    i64 129, label %73
  ]

68:                                               ; preds = %61
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* @OF_QUEUE_PROP_HEADER_LEN, align 8
  %71 = icmp ne i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %15, align 4
  br label %79

73:                                               ; preds = %61
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @OF_QUEUE_PROP_MIN_RATE_LEN, align 8
  %76 = icmp ne i64 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %15, align 4
  br label %79

78:                                               ; preds = %61
  store i32 1, i32* %16, align 4
  br label %79

79:                                               ; preds = %78, %73, %68
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  store i32 1, i32* %16, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %13, align 8
  %92 = sub nsw i64 %91, 4
  %93 = call i32 @ND_TCHECK2(i32 %90, i64 %92)
  %94 = load i64, i64* %13, align 8
  %95 = sub nsw i64 %94, 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 %95
  store i32* %97, i32** %7, align 8
  br label %129

98:                                               ; preds = %85
  %99 = load i64, i64* %12, align 8
  %100 = icmp eq i64 %99, 129
  br i1 %100, label %101, label %128

101:                                              ; preds = %98
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ND_TCHECK2(i32 %103, i64 2)
  %105 = load i32*, i32** %7, align 8
  %106 = call i64 @EXTRACT_16BITS(i32* %105)
  store i64 %106, i64* %14, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32* %108, i32** %7, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp sgt i64 %109, 1000
  br i1 %110, label %111, label %114

111:                                              ; preds = %101
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.4 to i32*))
  br label %122

114:                                              ; preds = %101
  %115 = load i32*, i32** %6, align 8
  %116 = load i64, i64* %14, align 8
  %117 = sdiv i64 %116, 10
  %118 = load i64, i64* %14, align 8
  %119 = srem i64 %118, 10
  %120 = inttoptr i64 %119 to i32*
  %121 = call i32 @ND_PRINT(i32* %120)
  br label %122

122:                                              ; preds = %114, %111
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ND_TCHECK2(i32 %124, i64 6)
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 6
  store i32* %127, i32** %7, align 8
  br label %128

128:                                              ; preds = %122, %98
  br label %129

129:                                              ; preds = %128, %88
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %9, align 8
  %132 = sub nsw i64 %131, %130
  store i64 %132, i64* %9, align 8
  br label %19

133:                                              ; preds = %19
  %134 = load i32*, i32** %7, align 8
  store i32* %134, i32** %5, align 8
  br label %155

135:                                              ; preds = %60, %26
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* @istr, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i32*
  %140 = call i32 @ND_PRINT(i32* %139)
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @ND_TCHECK2(i32 %142, i64 %143)
  %145 = load i32*, i32** %10, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %5, align 8
  br label %155

148:                                              ; No predecessors!
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* @tstr, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i32*
  %153 = call i32 @ND_PRINT(i32* %152)
  %154 = load i32*, i32** %8, align 8
  store i32* %154, i32** %5, align 8
  br label %155

155:                                              ; preds = %148, %135, %133
  %156 = load i32*, i32** %5, align 8
  ret i32* %156
}

declare dso_local i32 @ND_TCHECK2(i32, i64) #1

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
