; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_analyze_control_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-tdep.c_sparc_analyze_control_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*)* @sparc_analyze_control_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sparc_analyze_control_transfer(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @sparc_fetch_instruction(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @X_COND(i64 %12)
  %14 = and i32 %13, 7
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @X_OP(i64 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @X_OP2(i64 %19)
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %23, 16777216
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %83

27:                                               ; preds = %22, %18, %2
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @X_OP(i64 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @X_OP2(i64 %32)
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @X_DISP22(i64 %36)
  %38 = mul nsw i32 4, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %9, align 8
  br label %82

40:                                               ; preds = %31, %27
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @X_OP(i64 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @X_OP2(i64 %45)
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @X_DISP19(i64 %49)
  %51 = mul nsw i32 4, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %9, align 8
  br label %81

53:                                               ; preds = %44, %40
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @X_OP(i64 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @X_OP2(i64 %58)
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  store i32 1, i32* %8, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @X_DISP22(i64 %62)
  %64 = mul nsw i32 4, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %9, align 8
  br label %80

66:                                               ; preds = %57, %53
  %67 = load i64, i64* %6, align 8
  %68 = call i64 @X_OP(i64 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @X_OP2(i64 %71)
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  store i32 1, i32* %8, align 4
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @X_DISP19(i64 %75)
  %77 = mul nsw i32 4, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %74, %70, %66
  br label %80

80:                                               ; preds = %79, %61
  br label %81

81:                                               ; preds = %80, %48
  br label %82

82:                                               ; preds = %81, %35
  br label %83

83:                                               ; preds = %82, %26
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i64, i64* %6, align 8
  %91 = call i64 @X_A(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i64*, i64** %5, align 8
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 4
  br label %98

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i64 [ %96, %93 ], [ 0, %97 ]
  store i64 %99, i64* %3, align 8
  br label %122

100:                                              ; preds = %86
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @X_COND(i64 %101)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i64*, i64** %5, align 8
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %4, align 8
  store i64 4, i64* %9, align 8
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i64, i64* %6, align 8
  %109 = call i64 @X_A(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i64*, i64** %5, align 8
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i64, i64* %9, align 8
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @gdb_assert(i32 %116)
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* %9, align 8
  %120 = add nsw i64 %118, %119
  store i64 %120, i64* %3, align 8
  br label %122

121:                                              ; preds = %83
  store i64 0, i64* %3, align 8
  br label %122

122:                                              ; preds = %121, %113, %98
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i64 @sparc_fetch_instruction(i64) #1

declare dso_local i32 @X_COND(i64) #1

declare dso_local i64 @X_OP(i64) #1

declare dso_local i32 @X_OP2(i64) #1

declare dso_local i32 @X_DISP22(i64) #1

declare dso_local i32 @X_DISP19(i64) #1

declare dso_local i64 @X_A(i64) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
