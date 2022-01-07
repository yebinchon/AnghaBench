; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq_global.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_chan_to_freq_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ieee80211_chan_to_freq_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_chan_to_freq_global(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %114 [
    i32 81, label %7
    i32 82, label %18
    i32 83, label %26
    i32 84, label %26
    i32 115, label %37
    i32 116, label %37
    i32 117, label %37
    i32 118, label %37
    i32 119, label %37
    i32 120, label %37
    i32 121, label %48
    i32 122, label %48
    i32 123, label %48
    i32 124, label %59
    i32 126, label %59
    i32 127, label %59
    i32 125, label %70
    i32 128, label %81
    i32 130, label %81
    i32 129, label %92
    i32 180, label %103
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 13
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7
  store i32 -1, i32* %3, align 4
  br label %115

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 5, %15
  %17 = add nsw i32 2407, %16
  store i32 %17, i32* %3, align 4
  br label %115

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 14
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %115

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 5, %23
  %25 = add nsw i32 2414, %24
  store i32 %25, i32* %3, align 4
  br label %115

26:                                               ; preds = %2, %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 13
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  store i32 -1, i32* %3, align 4
  br label %115

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 5, %34
  %36 = add nsw i32 2407, %35
  store i32 %36, i32* %3, align 4
  br label %115

37:                                               ; preds = %2, %2, %2, %2, %2, %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 36
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %41, 64
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 -1, i32* %3, align 4
  br label %115

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 5, %45
  %47 = add nsw i32 5000, %46
  store i32 %47, i32* %3, align 4
  br label %115

48:                                               ; preds = %2, %2, %2
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 100
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 140
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  store i32 -1, i32* %3, align 4
  br label %115

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 5, %56
  %58 = add nsw i32 5000, %57
  store i32 %58, i32* %3, align 4
  br label %115

59:                                               ; preds = %2, %2, %2
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 149
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %63, 161
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %59
  store i32 -1, i32* %3, align 4
  br label %115

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = mul nsw i32 5, %67
  %69 = add nsw i32 5000, %68
  store i32 %69, i32* %3, align 4
  br label %115

70:                                               ; preds = %2
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 149
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp sgt i32 %74, 169
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %70
  store i32 -1, i32* %3, align 4
  br label %115

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 5, %78
  %80 = add nsw i32 5000, %79
  store i32 %80, i32* %3, align 4
  br label %115

81:                                               ; preds = %2, %2
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 36
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = icmp sgt i32 %85, 161
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %81
  store i32 -1, i32* %3, align 4
  br label %115

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 5, %89
  %91 = add nsw i32 5000, %90
  store i32 %91, i32* %3, align 4
  br label %115

92:                                               ; preds = %2
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 36
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = icmp sgt i32 %96, 128
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %92
  store i32 -1, i32* %3, align 4
  br label %115

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = mul nsw i32 5, %100
  %102 = add nsw i32 5000, %101
  store i32 %102, i32* %3, align 4
  br label %115

103:                                              ; preds = %2
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp sgt i32 %107, 4
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %103
  store i32 -1, i32* %3, align 4
  br label %115

110:                                              ; preds = %106
  %111 = load i32, i32* %5, align 4
  %112 = mul nsw i32 2160, %111
  %113 = add nsw i32 56160, %112
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %110, %109, %99, %98, %88, %87, %77, %76, %66, %65, %55, %54, %44, %43, %33, %32, %22, %21, %14, %13
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
