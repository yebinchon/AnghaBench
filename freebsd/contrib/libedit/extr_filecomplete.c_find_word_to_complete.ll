; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_find_word_to_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_filecomplete.c_find_word_to_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i64*)* @find_word_to_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_word_to_complete(i32* %0, i32* %1, i32* %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ugt i32* %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i32*, i32** %12, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 -1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %26 [
    i32 92, label %23
    i32 39, label %23
    i32 34, label %23
  ]

23:                                               ; preds = %19, %19, %19
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 -1
  store i32* %25, i32** %12, align 8
  br label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %27, %5
  br label %29

29:                                               ; preds = %90, %75, %54, %28
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ule i32* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %93

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @wcschr(i32* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %34
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = ptrtoint i32* %42 to i64
  %45 = ptrtoint i32* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 4
  %48 = icmp sge i64 %47, 2
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 -2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -2
  store i32* %56, i32** %12, align 8
  br label %29

57:                                               ; preds = %49, %41
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = icmp sge i64 %63, 2
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 -2
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 39
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 -2
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 34
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %65
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 -1
  store i32* %77, i32** %12, align 8
  br label %29

78:                                               ; preds = %70, %57
  br label %93

79:                                               ; preds = %34
  %80 = load i32*, i32** %10, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 -1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @wcschr(i32* %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %93

90:                                               ; preds = %82, %79
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 -1
  store i32* %92, i32** %12, align 8
  br label %29

93:                                               ; preds = %89, %78, %33
  %94 = load i32*, i32** %7, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp eq i64 %100, 1
  br i1 %101, label %102, label %115

102:                                              ; preds = %93
  %103 = load i32*, i32** %12, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 39
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %12, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 34
  br i1 %111, label %112, label %115

112:                                              ; preds = %107, %102
  store i64 0, i64* %13, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %12, align 8
  br label %115

115:                                              ; preds = %112, %107, %93
  %116 = load i64, i64* %13, align 8
  %117 = load i64*, i64** %11, align 8
  store i64 %116, i64* %117, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i32* @unescape_string(i32* %118, i64 %119)
  store i32* %120, i32** %14, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32* null, i32** %6, align 8
  br label %126

124:                                              ; preds = %115
  %125 = load i32*, i32** %14, align 8
  store i32* %125, i32** %6, align 8
  br label %126

126:                                              ; preds = %124, %123
  %127 = load i32*, i32** %6, align 8
  ret i32* %127
}

declare dso_local i64 @wcschr(i32*, i32) #1

declare dso_local i32* @unescape_string(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
