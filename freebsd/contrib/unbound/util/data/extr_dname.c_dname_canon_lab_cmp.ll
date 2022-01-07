; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_canon_lab_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_dname.c_dname_canon_lab_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dname_canon_lab_cmp(i64* %0, i32 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %7, align 8
  %30 = load i64, i64* %28, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 %31
  store i64* %33, i64** %7, align 8
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %14, align 4
  br label %23

36:                                               ; preds = %23
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @log_assert(i32 %40)
  br label %68

42:                                               ; preds = %5
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %52, %46
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i64*, i64** %9, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %9, align 8
  %55 = load i64, i64* %53, align 8
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 %56
  store i64* %58, i64** %9, align 8
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %14, align 4
  br label %48

61:                                               ; preds = %48
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @log_assert(i32 %65)
  br label %67

67:                                               ; preds = %61, %42
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %94, %68
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  %75 = load i64*, i64** %7, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %7, align 8
  %77 = load i64, i64* %75, align 8
  store i64 %77, i64* %12, align 8
  %78 = load i64*, i64** %9, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %9, align 8
  %80 = load i64, i64* %78, align 8
  store i64 %80, i64* %13, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @memcanoncmp(i64* %81, i64 %82, i64* %83, i64 %84)
  store i32 %85, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = load i32, i32* %17, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 -1, i32* %16, align 4
  br label %92

91:                                               ; preds = %87
  store i32 1, i32* %16, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %92, %74
  %95 = load i64, i64* %12, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 %95
  store i64* %97, i64** %7, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64*, i64** %9, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 %98
  store i64* %100, i64** %9, align 8
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %14, align 4
  br label %71

103:                                              ; preds = %71
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 1, i32* %6, align 4
  br label %123

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 -1, i32* %6, align 4
  br label %123

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120, %103
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %118, %113
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memcanoncmp(i64*, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
