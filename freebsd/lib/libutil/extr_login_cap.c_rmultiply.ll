; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_rmultiply.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_cap.c_rmultiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rmultiply.bpw = internal global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@UQUAD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rmultiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmultiply(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %121

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %121

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  br label %121

26:                                               ; preds = %21
  %27 = load i32, i32* @rmultiply.bpw, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  store i32 32, i32* @rmultiply.bpw, align 4
  br label %30

30:                                               ; preds = %35, %29
  %31 = load i32, i32* @rmultiply.bpw, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @rmultiply.bpw, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @rmultiply.bpw, align 4
  br label %30

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i32, i32* @rmultiply.bpw, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %49, %39
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  %44 = shl i32 1, %43
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %8, align 4
  br label %41

52:                                               ; preds = %41
  %53 = load i32, i32* @rmultiply.bpw, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %62, %52
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 1
  %57 = shl i32 1, %56
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %9, align 4
  br label %54

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %68, 2
  %70 = load i32, i32* @rmultiply.bpw, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @ERANGE, align 4
  store i32 %73, i32* @errno, align 4
  %74 = load i32, i32* @UQUAD_MAX, align 4
  store i32 %74, i32* %3, align 4
  br label %121

75:                                               ; preds = %65
  %76 = load i32, i32* %4, align 4
  %77 = ashr i32 %76, 1
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 1
  %80 = mul nsw i32 %77, %79
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @rmultiply.bpw, align 4
  %83 = sub nsw i32 %82, 2
  %84 = shl i32 1, %83
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i32, i32* @ERANGE, align 4
  store i32 %87, i32* @errno, align 4
  %88 = load i32, i32* @UQUAD_MAX, align 4
  store i32 %88, i32* %3, align 4
  br label %121

89:                                               ; preds = %75
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 %90, 4
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %92, %93
  %95 = and i32 %94, 1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 1
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, -2
  %100 = mul nsw i32 %97, %99
  %101 = add nsw i32 %95, %100
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 1
  %104 = load i32, i32* %5, align 4
  %105 = and i32 %104, -2
  %106 = mul nsw i32 %103, %105
  %107 = add nsw i32 %101, %106
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %89
  %114 = load i32, i32* @ERANGE, align 4
  store i32 %114, i32* @errno, align 4
  %115 = load i32, i32* @UQUAD_MAX, align 4
  store i32 %115, i32* %3, align 4
  br label %121

116:                                              ; preds = %89
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %113, %86, %72, %24, %19, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
