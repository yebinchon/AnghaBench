; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_internal.h_ucl_maybe_parse_boolean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_internal.h_ucl_maybe_parse_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@UCL_BOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64)* @ucl_maybe_parse_boolean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_maybe_parse_boolean(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 5
  br i1 %12, label %13, label %31

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 102
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 70
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %13
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strncasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %25, %19
  br label %133

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 4
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 116
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 84
  br i1 %45, label %46, label %51

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strncasecmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %50, %46, %40
  br label %132

52:                                               ; preds = %31
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %53, 3
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 121
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 89
  br i1 %66, label %67, label %72

67:                                               ; preds = %61, %55
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strncasecmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %90

72:                                               ; preds = %67, %61
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 111
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 79
  br i1 %83, label %84, label %89

84:                                               ; preds = %78, %72
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @strncasecmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %88, %84, %78
  br label %90

90:                                               ; preds = %89, %71
  br label %131

91:                                               ; preds = %52
  %92 = load i64, i64* %6, align 8
  %93 = icmp eq i64 %92, 2
  br i1 %93, label %94, label %130

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 110
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 78
  br i1 %105, label %106, label %111

106:                                              ; preds = %100, %94
  %107 = load i8*, i8** %7, align 8
  %108 = call i64 @strncasecmp(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %129

111:                                              ; preds = %106, %100
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 111
  br i1 %116, label %123, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 79
  br i1 %122, label %123, label %128

123:                                              ; preds = %117, %111
  %124 = load i8*, i8** %7, align 8
  %125 = call i64 @strncasecmp(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %128

128:                                              ; preds = %127, %123, %117
  br label %129

129:                                              ; preds = %128, %110
  br label %130

130:                                              ; preds = %129, %91
  br label %131

131:                                              ; preds = %130, %90
  br label %132

132:                                              ; preds = %131, %51
  br label %133

133:                                              ; preds = %132, %30
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %133
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = icmp ne %struct.TYPE_5__* %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i32, i32* @UCL_BOOLEAN, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 4
  br label %147

147:                                              ; preds = %139, %136, %133
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
