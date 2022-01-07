; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_parse_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_parse_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid number: %s\00", align 1
@DN_MAX_ID = common dso_local global i32 0, align 4
@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32*, i32)* @parse_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_range(i32 %0, i8** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i32], align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32* %19, i32** %7, align 8
  store i32 2, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  br label %23

23:                                               ; preds = %129, %20
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %134

26:                                               ; preds = %23
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @strtoul(i8* %27, i8** %10, i32 10)
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 45
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  br label %43

39:                                               ; preds = %26
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = call i32 @strtoul(i8* %41, i8** %10, i32 10)
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %39 ]
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i8* [ %57, %54 ], [ null, %58 ]
  store i8* %60, i8** %11, align 8
  br label %78

61:                                               ; preds = %43
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 44
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  store i8* %70, i8** %11, align 8
  br label %129

71:                                               ; preds = %61
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %10, align 8
  store i8* %73, i8** %11, align 8
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load i8**, i8*** %6, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 -1
  store i8** %77, i8*** %6, align 8
  br label %78

78:                                               ; preds = %71, %59
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %100, label %86

86:                                               ; preds = %78
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DN_MAX_ID, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp sge i32 %89, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @DN_MAX_ID, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp sge i32 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %86, %78
  br label %129

101:                                              ; preds = %93
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i32, i32* @DN_MAX_ID, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @DN_MAX_ID, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %106, %101
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %118, 2
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  br label %127

125:                                              ; preds = %117
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  br label %127

127:                                              ; preds = %125, %122
  %128 = phi i32* [ %124, %122 ], [ %126, %125 ]
  store i32* %128, i32** %7, align 8
  br label %129

129:                                              ; preds = %127, %100, %66
  %130 = load i8**, i8*** %6, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %131, i8*** %6, align 8
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %5, align 4
  br label %23

134:                                              ; preds = %23
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
