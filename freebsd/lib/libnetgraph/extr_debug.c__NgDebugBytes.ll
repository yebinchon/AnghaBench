; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_debug.c__NgDebugBytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetgraph/extr_debug.c__NgDebugBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%04x:  \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BYPERLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_NgDebugBytes(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [100 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %130, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %135

12:                                               ; preds = %8
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %14 = load i32, i32* %7, align 4
  %15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %53, %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %26 = call i32 @strlen(i8* %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = sub i64 100, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %52

40:                                               ; preds = %19
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %43 = call i32 @strlen(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %47 = call i32 @strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = sub i64 100, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %40, %23
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %16

58:                                               ; preds = %16
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %61 = call i32 @strlen(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %65 = call i32 @strlen(i8* %64)
  %66 = sext i32 %65 to i64
  %67 = sub i64 100, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 16
  store i32 %71, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %120, %58
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 16
  br i1 %74, label %75, label %125

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %82 = call i32 @strlen(i8* %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %86 = call i32 @strlen(i8* %85)
  %87 = sext i32 %86 to i64
  %88 = sub i64 100, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @isprint(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %79
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  br label %104

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %97
  %105 = phi i32 [ %102, %97 ], [ 46, %103 ]
  %106 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %84, i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  br label %119

107:                                              ; preds = %75
  %108 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %109 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %110 = call i32 @strlen(i8* %109)
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %114 = call i32 @strlen(i8* %113)
  %115 = sext i32 %114 to i64
  %116 = sub i64 100, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %112, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %119

119:                                              ; preds = %107, %104
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %72

125:                                              ; preds = %72
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, 16
  store i32 %127, i32* %7, align 4
  %128 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %129 = call i32 @NGLOGX(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %125
  %131 = load i32*, i32** %3, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 16
  store i32* %132, i32** %3, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 16
  store i32 %134, i32* %7, align 4
  br label %8

135:                                              ; preds = %8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isprint(i32) #1

declare dso_local i32 @NGLOGX(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
