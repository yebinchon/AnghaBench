; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_fnmatch.c_rangematch.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_fnmatch.c_rangematch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FNM_NOESCAPE = common dso_local global i32 0, align 4
@EOS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @rangematch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rangematch(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 33
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 94
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ true, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  br i1 %22, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %112, %27
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = load i8, i8* %29, align 1
  store i8 %31, i8* %10, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 93
  br i1 %33, label %34, label %113

34:                                               ; preds = %28
  %35 = load i8, i8* %10, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FNM_NOESCAPE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %5, align 8
  %46 = load i8, i8* %44, align 1
  store i8 %46, i8* %10, align 1
  br label %47

47:                                               ; preds = %43, %38, %34
  %48 = load i8, i8* %10, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @EOS, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i8* null, i8** %4, align 8
  br label %122

54:                                               ; preds = %47
  %55 = load i8*, i8** %5, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 45
  br i1 %58, label %59, label %105

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %11, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @EOS, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %59
  %68 = load i8, i8* %11, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 93
  br i1 %70, label %71, label %105

71:                                               ; preds = %67
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8* %73, i8** %5, align 8
  %74 = load i8, i8* %11, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 92
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @FNM_NOESCAPE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  %85 = load i8, i8* %83, align 1
  store i8 %85, i8* %11, align 1
  br label %86

86:                                               ; preds = %82, %77, %71
  %87 = load i8, i8* %11, align 1
  %88 = sext i8 %87 to i32
  %89 = load i8, i8* @EOS, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i8* null, i8** %4, align 8
  br label %122

93:                                               ; preds = %86
  %94 = load i8, i8* %10, align 1
  %95 = sext i8 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = load i8, i8* %11, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sle i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %98, %93
  br label %112

105:                                              ; preds = %67, %59, %54
  %106 = load i8, i8* %10, align 1
  %107 = sext i8 %106 to i32
  %108 = load i32, i32* %6, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %105
  br label %112

112:                                              ; preds = %111, %104
  br label %28

113:                                              ; preds = %28
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %120

118:                                              ; preds = %113
  %119 = load i8*, i8** %5, align 8
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi i8* [ null, %117 ], [ %119, %118 ]
  store i8* %121, i8** %4, align 8
  br label %122

122:                                              ; preds = %120, %92, %53
  %123 = load i8*, i8** %4, align 8
  ret i8* %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
