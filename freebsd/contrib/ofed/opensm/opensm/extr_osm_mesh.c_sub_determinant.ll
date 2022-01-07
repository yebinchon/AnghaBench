; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_sub_determinant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_sub_determinant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32, i32***, i32**)* @sub_determinant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sub_determinant(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32*** %5, i32** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32***, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32***, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32*** %5, i32**** %13, align 8
  store i32** %6, i32*** %14, align 8
  store i32 -1, i32* %15, align 4
  store i32*** null, i32**** %16, align 8
  store i32* null, i32** %17, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %7
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32* @poly_alloc(i32* %27, i32 %28)
  store i32* %29, i32** %17, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %125

32:                                               ; preds = %26
  %33 = load i32, i32* %23, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %17, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 1, i32* %37, align 4
  store i32 0, i32* %15, align 4
  br label %125

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32*** @pm_alloc(i32* %39, i32 %40, i32 %41)
  store i32*** %42, i32**** %16, align 8
  %43 = icmp ne i32*** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @free(i32* %45)
  store i32* null, i32** %17, align 8
  br label %125

47:                                               ; preds = %38
  store i32 0, i32* %21, align 4
  store i32 0, i32* %18, align 4
  br label %48

48:                                               ; preds = %110, %47
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %113

52:                                               ; preds = %48
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %110

57:                                               ; preds = %52
  store i32 0, i32* %22, align 4
  store i32 0, i32* %19, align 4
  br label %58

58:                                               ; preds = %104, %57
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %107

62:                                               ; preds = %58
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %104

67:                                               ; preds = %62
  store i32 0, i32* %20, align 4
  br label %68

68:                                               ; preds = %98, %67
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %68
  %73 = load i32***, i32**** %13, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32**, i32*** %73, i64 %75
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32***, i32**** %16, align 8
  %87 = load i32, i32* %21, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32**, i32*** %86, i64 %88
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %22, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %85, i32* %97, align 4
  br label %98

98:                                               ; preds = %72
  %99 = load i32, i32* %20, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %20, align 4
  br label %68

101:                                              ; preds = %68
  %102 = load i32, i32* %22, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %22, align 4
  br label %104

104:                                              ; preds = %101, %66
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %19, align 4
  br label %58

107:                                              ; preds = %58
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %110

110:                                              ; preds = %107, %56
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %18, align 4
  br label %48

113:                                              ; preds = %48
  %114 = load i32*, i32** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32***, i32**** %16, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = call i64 @determinant(i32* %114, i32 %115, i32 %116, i32*** %117, i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32*, i32** %17, align 8
  %123 = call i32 @free(i32* %122)
  store i32* null, i32** %17, align 8
  br label %125

124:                                              ; preds = %113
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %124, %121, %44, %35, %31
  %126 = load i32***, i32**** %16, align 8
  %127 = load i32, i32* %23, align 4
  %128 = call i32 @pm_free(i32*** %126, i32 %127)
  %129 = load i32*, i32** %17, align 8
  %130 = load i32**, i32*** %14, align 8
  store i32* %129, i32** %130, align 8
  %131 = load i32, i32* %15, align 4
  ret i32 %131
}

declare dso_local i32* @poly_alloc(i32*, i32) #1

declare dso_local i32*** @pm_alloc(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @determinant(i32*, i32, i32, i32***, i32*) #1

declare dso_local i32 @pm_free(i32***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
