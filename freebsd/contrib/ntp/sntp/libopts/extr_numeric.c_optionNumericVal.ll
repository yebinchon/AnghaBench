; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_numeric.c_optionNumericVal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_numeric.c_optionNumericVal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 (%struct.TYPE_10__*, i32)*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i64 }

@OPTST_RESET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@OPTST_SCALED_NUM = common dso_local global i32 0, align 4
@OPTST_ALLOC_ARG = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@zNotNumber = common dso_local global i8* null, align 8
@OPTPROC_ERRSTOP = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optionNumericVal(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = call i64 @INQUERY_CALL(%struct.TYPE_10__* %7, %struct.TYPE_11__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  br label %151

18:                                               ; preds = %11
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @OPTST_RESET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %21, %18
  br label %151

35:                                               ; preds = %27
  store i64 0, i64* @errno, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strtol(i8* %39, i8** %5, i32 0)
  store i64 %40, i64* %6, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %41, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  %48 = load i64, i64* @errno, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %35
  br label %122

51:                                               ; preds = %47
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @OPTST_SCALED_NUM, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %90 [
    i32 128, label %63
    i32 116, label %66
    i32 103, label %69
    i32 109, label %72
    i32 107, label %75
    i32 84, label %78
    i32 71, label %81
    i32 77, label %84
    i32 75, label %87
  ]

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %5, align 8
  br label %91

66:                                               ; preds = %58
  %67 = load i64, i64* %6, align 8
  %68 = mul nsw i64 %67, 1000
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %58, %66
  %70 = load i64, i64* %6, align 8
  %71 = mul nsw i64 %70, 1000
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %58, %69
  %73 = load i64, i64* %6, align 8
  %74 = mul nsw i64 %73, 1000
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %58, %72
  %76 = load i64, i64* %6, align 8
  %77 = mul nsw i64 %76, 1000
  store i64 %77, i64* %6, align 8
  br label %91

78:                                               ; preds = %58
  %79 = load i64, i64* %6, align 8
  %80 = mul nsw i64 %79, 1024
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %58, %78
  %82 = load i64, i64* %6, align 8
  %83 = mul nsw i64 %82, 1024
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %58, %81
  %85 = load i64, i64* %6, align 8
  %86 = mul nsw i64 %85, 1024
  store i64 %86, i64* %6, align 8
  br label %87

87:                                               ; preds = %58, %84
  %88 = load i64, i64* %6, align 8
  %89 = mul nsw i64 %88, 1024
  store i64 %89, i64* %6, align 8
  br label %91

90:                                               ; preds = %58
  br label %122

91:                                               ; preds = %87, %75, %63
  br label %92

92:                                               ; preds = %91, %51
  %93 = load i8*, i8** %5, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 128
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %122

98:                                               ; preds = %92
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @OPTST_ALLOC_ARG, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %98
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @AGFREE(i8* %109)
  %111 = load i32, i32* @OPTST_ALLOC_ARG, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %105, %98
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  store i64 %118, i64* %121, align 8
  br label %151

122:                                              ; preds = %97, %90, %50
  %123 = load i32, i32* @stderr, align 4
  %124 = load i8*, i8** @zNotNumber, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @fprintf(i32 %123, i8* %124, i32 %127, i8* %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @OPTPROC_ERRSTOP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %122
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %141, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = load i32, i32* @EXIT_FAILURE, align 4
  %145 = call i32 %142(%struct.TYPE_10__* %143, i32 %144)
  br label %146

146:                                              ; preds = %139, %122
  %147 = load i64, i64* @EINVAL, align 8
  store i64 %147, i64* @errno, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  store i64 -1, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %117, %34, %17
  ret void
}

declare dso_local i64 @INQUERY_CALL(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @AGFREE(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
