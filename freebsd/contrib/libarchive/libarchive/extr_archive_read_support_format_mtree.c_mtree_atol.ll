; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_mtree_atol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_mtree_atol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MIN = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32)* @mtree_atol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtree_atol(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 48
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 10, i32* %5, align 4
  br label %39

19:                                               ; preds = %12
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 120
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 88
  br i1 %32, label %33, label %37

33:                                               ; preds = %26, %19
  %34 = load i8**, i8*** %4, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %36, i8** %34, align 8
  store i32 16, i32* %5, align 4
  br label %38

37:                                               ; preds = %26
  store i32 8, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %33
  br label %39

39:                                               ; preds = %38, %18
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 45
  br i1 %45, label %46, label %96

46:                                               ; preds = %40
  %47 = load i32, i32* @INT64_MIN, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @INT64_MIN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = srem i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i8**, i8*** %4, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %53, align 8
  store i32 0, i32* %6, align 4
  %56 = load i8**, i8*** %4, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @parsedigit(i8 signext %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %83, %46
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %64, %65
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ]
  br i1 %68, label %69, label %94

69:                                               ; preds = %67
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77, %69
  %82 = load i32, i32* @INT64_MIN, align 4
  store i32 %82, i32* %3, align 4
  br label %143

83:                                               ; preds = %77, %73
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %5, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %6, align 4
  %89 = load i8**, i8*** %4, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %89, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @parsedigit(i8 signext %92)
  store i32 %93, i32* %8, align 4
  br label %60

94:                                               ; preds = %67
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %143

96:                                               ; preds = %40
  %97 = load i32, i32* @INT64_MAX, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sdiv i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* @INT64_MAX, align 4
  %101 = load i32, i32* %5, align 4
  %102 = srem i32 %100, %101
  store i32 %102, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %103 = load i8**, i8*** %4, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i8, i8* %104, align 1
  %106 = call i32 @parsedigit(i8 signext %105)
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %130, %96
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %111, %112
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi i1 [ false, %107 ], [ %113, %110 ]
  br i1 %115, label %116, label %141

116:                                              ; preds = %114
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124, %116
  %129 = load i32, i32* @INT64_MAX, align 4
  store i32 %129, i32* %3, align 4
  br label %143

130:                                              ; preds = %124, %120
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %5, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %6, align 4
  %136 = load i8**, i8*** %4, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %136, align 8
  %139 = load i8, i8* %138, align 1
  %140 = call i32 @parsedigit(i8 signext %139)
  store i32 %140, i32* %8, align 4
  br label %107

141:                                              ; preds = %114
  %142 = load i32, i32* %6, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %128, %94, %81
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @parsedigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
