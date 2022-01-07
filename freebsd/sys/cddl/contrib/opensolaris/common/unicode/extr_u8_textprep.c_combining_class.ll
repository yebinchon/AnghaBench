; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_combining_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/unicode/extr_u8_textprep.c_combining_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@u8_common_b1_tbl = common dso_local global i64** null, align 8
@U8_TBL_ELEMENT_NOT_DEF = common dso_local global i64 0, align 8
@u8_combining_class_b2_tbl = common dso_local global i64*** null, align 8
@u8_combining_class_b3_tbl = common dso_local global i64*** null, align 8
@u8_combining_class_b4_tbl = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*, i64)* @combining_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @combining_class(i64 %0, i64* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i64 0, i64* %4, align 8
  br label %112

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 2
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  br label %59

28:                                               ; preds = %18
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, 3
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i64*, i64** %6, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  br label %58

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i64*, i64** %6, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load i64*, i64** %6, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %44, %41
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i64**, i64*** @u8_common_b1_tbl, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i64*, i64** %60, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  store i64 0, i64* %4, align 8
  br label %112

71:                                               ; preds = %59
  %72 = load i64***, i64**** @u8_combining_class_b2_tbl, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i64**, i64*** %72, i64 %73
  %75 = load i64**, i64*** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i64*, i64** %75, i64 %76
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  store i64 0, i64* %4, align 8
  br label %112

86:                                               ; preds = %71
  %87 = load i64***, i64**** @u8_combining_class_b3_tbl, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds i64**, i64*** %87, i64 %88
  %90 = load i64**, i64*** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i64*, i64** %90, i64 %91
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @U8_TBL_ELEMENT_NOT_DEF, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  store i64 0, i64* %4, align 8
  br label %112

101:                                              ; preds = %86
  %102 = load i64***, i64**** @u8_combining_class_b4_tbl, align 8
  %103 = load i64, i64* %5, align 8
  %104 = getelementptr inbounds i64**, i64*** %102, i64 %103
  %105 = load i64**, i64*** %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds i64*, i64** %105, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %11, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %4, align 8
  br label %112

112:                                              ; preds = %101, %100, %85, %70, %17
  %113 = load i64, i64* %4, align 8
  ret i64 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
