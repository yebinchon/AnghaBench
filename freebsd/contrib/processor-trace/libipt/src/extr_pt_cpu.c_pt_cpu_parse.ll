; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_cpu.c_pt_cpu_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_cpu.c_pt_cpu_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_cpu = type { i8*, i8*, i32, i32 }

@pte_invalid = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@UCHAR_MAX = common dso_local global i64 0, align 8
@pcv_intel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_cpu_parse(%struct.pt_cpu* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_cpu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.pt_cpu* %0, %struct.pt_cpu** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8 47, i8* %6, align 1
  %11 = load %struct.pt_cpu*, %struct.pt_cpu** %4, align 8
  %12 = icmp ne %struct.pt_cpu* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @pte_invalid, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %124

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strtol(i8* %20, i8** %7, i32 0)
  store i64 %21, i64* %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 47
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %25, %19
  %36 = load i32, i32* @pte_invalid, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %124

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @USHRT_MAX, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41, %38
  %46 = load i32, i32* @pte_invalid, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %124

48:                                               ; preds = %41
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @strtol(i8* %51, i8** %7, i32 0)
  store i64 %52, i64* %9, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %48
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 47
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %48
  %67 = load i32, i32* @pte_invalid, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %124

69:                                               ; preds = %61, %56
  %70 = load i64, i64* %9, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* @UCHAR_MAX, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %69
  %77 = load i32, i32* @pte_invalid, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %124

79:                                               ; preds = %72
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i64 0, i64* %10, align 8
  br label %108

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = call i64 @strtol(i8* %88, i8** %7, i32 0)
  store i64 %89, i64* %10, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @pte_invalid, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %124

97:                                               ; preds = %85
  %98 = load i64, i64* %10, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @UCHAR_MAX, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100, %97
  %105 = load i32, i32* @pte_invalid, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %124

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %84
  %109 = load i32, i32* @pcv_intel, align 4
  %110 = load %struct.pt_cpu*, %struct.pt_cpu** %4, align 8
  %111 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load i64, i64* %8, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.pt_cpu*, %struct.pt_cpu** %4, align 8
  %115 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* %9, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.pt_cpu*, %struct.pt_cpu** %4, align 8
  %119 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* %10, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.pt_cpu*, %struct.pt_cpu** %4, align 8
  %123 = getelementptr inbounds %struct.pt_cpu, %struct.pt_cpu* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %108, %104, %94, %76, %66, %45, %35, %16
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
