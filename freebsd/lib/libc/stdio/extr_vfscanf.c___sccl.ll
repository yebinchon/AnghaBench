; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c___sccl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c___sccl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlocale_collate = type { i32 }
%struct.TYPE_2__ = type { i64* }

@XLC_COLLATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @__sccl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__sccl(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xlocale_collate*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = call %struct.TYPE_2__* (...) @__get_locale()
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @XLC_COLLATE, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.xlocale_collate*
  store %struct.xlocale_collate* %17, %struct.xlocale_collate** %10, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* %18, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 94
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %24, align 4
  store i32 %26, i32* %6, align 4
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memset(i8* %29, i32 %30, i32 256)
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 -1
  store i32* %36, i32** %3, align 8
  br label %129

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 1, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %128, %37
  %41 = load i32, i32* %8, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  br label %47

47:                                               ; preds = %122, %40
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32, i32* %48, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  switch i32 %51, label %126 [
    i32 0, label %52
    i32 45, label %55
    i32 93, label %124
  ]

52:                                               ; preds = %47
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 -1
  store i32* %54, i32** %3, align 8
  br label %129

55:                                               ; preds = %47
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 93
  br i1 %59, label %74, label %60

60:                                               ; preds = %55
  %61 = load %struct.xlocale_collate*, %struct.xlocale_collate** %10, align 8
  %62 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %74, label %75

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @__collate_range_cmp(i32 %70, i32 %71)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %65, %55
  store i32 45, i32* %6, align 4
  br label %128

75:                                               ; preds = %69, %65
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %5, align 8
  %78 = load %struct.xlocale_collate*, %struct.xlocale_collate** %10, align 8
  %79 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %91, %82
  %84 = load i32, i32* %8, align 4
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 %85, i8* %90, align 1
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %83, label %95

95:                                               ; preds = %91
  br label %122

96:                                               ; preds = %75
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %118, %96
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 256
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @__collate_range_cmp(i32 %101, i32 %102)
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @__collate_range_cmp(i32 %106, i32 %107)
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  br label %117

117:                                              ; preds = %110, %105, %100
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %97

121:                                              ; preds = %97
  br label %122

122:                                              ; preds = %121, %95
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %6, align 4
  br label %47

124:                                              ; preds = %47
  %125 = load i32*, i32** %5, align 8
  store i32* %125, i32** %3, align 8
  br label %129

126:                                              ; preds = %47
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %74
  br label %40

129:                                              ; preds = %124, %52, %34
  %130 = load i32*, i32** %3, align 8
  ret i32* %130
}

declare dso_local %struct.TYPE_2__* @__get_locale(...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @__collate_range_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
