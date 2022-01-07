; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_next_field_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_next_field_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32**, i32**, i32*)* @next_field_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_field_w(i32** %0, i32** %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* %3, i32** %8, align 8
  br label %9

9:                                                ; preds = %26, %4
  %10 = load i32**, i32*** %5, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load i32**, i32*** %5, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 9
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32**, i32*** %5, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 10
  br label %24

24:                                               ; preds = %19, %14, %9
  %25 = phi i1 [ true, %14 ], [ true, %9 ], [ %23, %19 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %27, align 8
  br label %9

30:                                               ; preds = %24
  %31 = load i32**, i32*** %5, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = load i32**, i32*** %6, align 8
  store i32* %32, i32** %33, align 8
  br label %34

34:                                               ; preds = %61, %30
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load i32**, i32*** %5, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 44
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i32**, i32*** %5, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 58
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 10
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32**, i32*** %5, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 35
  br label %59

59:                                               ; preds = %54, %49, %44, %39, %34
  %60 = phi i1 [ false, %49 ], [ false, %44 ], [ false, %39 ], [ false, %34 ], [ %58, %54 ]
  br i1 %60, label %61, label %65

61:                                               ; preds = %59
  %62 = load i32**, i32*** %5, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %62, align 8
  br label %34

65:                                               ; preds = %59
  %66 = load i32**, i32*** %5, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32**, i32*** %5, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = load i32**, i32*** %6, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i32**, i32*** %5, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = load i32**, i32*** %7, align 8
  store i32* %77, i32** %78, align 8
  br label %109

79:                                               ; preds = %65
  %80 = load i32**, i32*** %5, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 -1
  %83 = load i32**, i32*** %7, align 8
  store i32* %82, i32** %83, align 8
  br label %84

84:                                               ; preds = %101, %79
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load i32**, i32*** %7, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 9
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i32**, i32*** %7, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 10
  br label %99

99:                                               ; preds = %94, %89, %84
  %100 = phi i1 [ true, %89 ], [ true, %84 ], [ %98, %94 ]
  br i1 %100, label %101, label %105

101:                                              ; preds = %99
  %102 = load i32**, i32*** %7, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 -1
  store i32* %104, i32** %102, align 8
  br label %84

105:                                              ; preds = %99
  %106 = load i32**, i32*** %7, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %106, align 8
  br label %109

109:                                              ; preds = %105, %75
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 35
  br i1 %112, label %113, label %140

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %131, %113
  %115 = load i32**, i32*** %5, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %114
  %120 = load i32**, i32*** %5, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 44
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32**, i32*** %5, align 8
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 10
  br label %129

129:                                              ; preds = %124, %119, %114
  %130 = phi i1 [ false, %119 ], [ false, %114 ], [ %128, %124 ]
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = load i32**, i32*** %5, align 8
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %132, align 8
  br label %114

135:                                              ; preds = %129
  %136 = load i32**, i32*** %5, align 8
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %8, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %109
  %141 = load i32**, i32*** %5, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32**, i32*** %5, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %146, align 8
  br label %149

149:                                              ; preds = %145, %140
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
