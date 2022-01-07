; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_g_parse_lba.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_g_parse_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_parse_lba(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ugt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strtoimax(i8* %24, i8** %11, i32 0)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp eq i8* %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30, %3
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %127

35:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %93

42:                                               ; preds = %35
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %64 [
    i32 101, label %46
    i32 69, label %46
    i32 112, label %49
    i32 80, label %49
    i32 116, label %52
    i32 84, label %52
    i32 103, label %55
    i32 71, label %55
    i32 109, label %58
    i32 77, label %58
    i32 107, label %61
    i32 75, label %61
  ]

46:                                               ; preds = %42, %42
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 1024
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %42, %42, %46
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 1024
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %42, %42, %49
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, 1024
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %42, %42, %52
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 1024
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %42, %42, %55
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 1024
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %42, %42, %58
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, 1024
  store i32 %63, i32* %9, align 4
  br label %65

64:                                               ; preds = %42
  br label %74

65:                                               ; preds = %61
  store i32 1, i32* %10, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %93

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i8*, i8** %11, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  switch i32 %77, label %81 [
    i32 115, label %78
    i32 83, label %78
    i32 98, label %80
    i32 66, label %80
  ]

78:                                               ; preds = %74, %74
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %10, align 4
  br label %83

80:                                               ; preds = %74, %74
  store i32 1, i32* %10, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %4, align 4
  br label %127

83:                                               ; preds = %80, %78
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %4, align 4
  br label %127

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %72, %41
  %94 = load i32, i32* @OFF_MAX, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sdiv i32 %94, %95
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* @OFF_MAX, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sdiv i32 %100, %101
  %103 = load i32, i32* %10, align 4
  %104 = sdiv i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99, %93
  %108 = load i32, i32* @ERANGE, align 4
  store i32 %108, i32* %4, align 4
  br label %127

109:                                              ; preds = %99
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = mul nsw i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %6, align 4
  %117 = urem i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* @EINVAL, align 4
  store i32 %120, i32* %4, align 4
  br label %127

121:                                              ; preds = %109
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %8, align 4
  %124 = udiv i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32*, i32** %7, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %121, %119, %107, %90, %81, %33
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strtoimax(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
