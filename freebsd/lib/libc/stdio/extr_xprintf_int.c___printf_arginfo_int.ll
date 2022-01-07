; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_int.c___printf_arginfo_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_xprintf_int.c___printf_arginfo_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_info = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@PA_INT = common dso_local global i32 0, align 4
@PA_FLAG_PTRDIFF = common dso_local global i32 0, align 4
@PA_FLAG_SIZE = common dso_local global i32 0, align 4
@PA_FLAG_LONG = common dso_local global i32 0, align 4
@PA_FLAG_INTMAX = common dso_local global i32 0, align 4
@PA_FLAG_QUAD = common dso_local global i32 0, align 4
@PA_FLAG_LONG_LONG = common dso_local global i32 0, align 4
@PA_FLAG_SHORT = common dso_local global i32 0, align 4
@PA_CHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__printf_arginfo_int(%struct.printf_info* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.printf_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.printf_info* %0, %struct.printf_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ugt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* @PA_INT, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.printf_info*, %struct.printf_info** %4, align 8
  %15 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @PA_FLAG_PTRDIFF, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %106

24:                                               ; preds = %3
  %25 = load %struct.printf_info*, %struct.printf_info** %4, align 8
  %26 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @PA_FLAG_SIZE, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %105

35:                                               ; preds = %24
  %36 = load %struct.printf_info*, %struct.printf_info** %4, align 8
  %37 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @PA_FLAG_LONG, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %104

46:                                               ; preds = %35
  %47 = load %struct.printf_info*, %struct.printf_info** %4, align 8
  %48 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @PA_FLAG_INTMAX, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %103

57:                                               ; preds = %46
  %58 = load %struct.printf_info*, %struct.printf_info** %4, align 8
  %59 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @PA_FLAG_QUAD, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %102

68:                                               ; preds = %57
  %69 = load %struct.printf_info*, %struct.printf_info** %4, align 8
  %70 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @PA_FLAG_LONG_LONG, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %101

79:                                               ; preds = %68
  %80 = load %struct.printf_info*, %struct.printf_info** %4, align 8
  %81 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @PA_FLAG_SHORT, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %100

90:                                               ; preds = %79
  %91 = load %struct.printf_info*, %struct.printf_info** %4, align 8
  %92 = getelementptr inbounds %struct.printf_info, %struct.printf_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @PA_CHAR, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %84
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %62
  br label %103

103:                                              ; preds = %102, %51
  br label %104

104:                                              ; preds = %103, %40
  br label %105

105:                                              ; preds = %104, %29
  br label %106

106:                                              ; preds = %105, %18
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
