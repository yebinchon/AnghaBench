; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_get_gen_ht_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_get_gen_ht_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM_KG_SCH_GEN_HT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @get_gen_ht_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_gen_ht_code(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %140 [
    i32 156, label %9
    i32 155, label %14
    i32 132, label %19
    i32 129, label %24
    i32 128, label %29
    i32 136, label %34
    i32 140, label %39
    i32 139, label %44
    i32 138, label %52
    i32 137, label %60
    i32 145, label %65
    i32 143, label %70
    i32 144, label %75
    i32 142, label %80
    i32 141, label %85
    i32 146, label %90
    i32 149, label %95
    i32 131, label %100
    i32 130, label %105
    i32 135, label %110
    i32 157, label %115
    i32 148, label %120
    i32 147, label %125
    i32 134, label %130
    i32 133, label %131
    i32 154, label %132
    i32 151, label %133
    i32 150, label %134
    i32 153, label %135
    i32 152, label %136
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 115, i32 3
  store i32 %13, i32* %7, align 4
  br label %142

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 119, i32 7
  store i32 %18, i32* %7, align 4
  br label %142

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 116, i32 4
  store i32 %23, i32* %7, align 4
  br label %142

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 117, i32 5
  store i32 %28, i32* %7, align 4
  br label %142

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 118, i32 6
  store i32 %33, i32* %7, align 4
  br label %142

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 120, i32 8
  store i32 %38, i32* %7, align 4
  br label %142

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 121, i32 9
  store i32 %43, i32* %7, align 4
  br label %142

44:                                               ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @FM_KG_SCH_GEN_HT_INVALID, align 4
  br label %50

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 25, %49 ]
  store i32 %51, i32* %7, align 4
  br label %142

52:                                               ; preds = %3
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @FM_KG_SCH_GEN_HT_INVALID, align 4
  br label %58

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 41, %57 ]
  store i32 %59, i32* %7, align 4
  br label %142

60:                                               ; preds = %3
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 122, i32 10
  store i32 %64, i32* %7, align 4
  br label %142

65:                                               ; preds = %3
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 123, i32 11
  store i32 %69, i32* %7, align 4
  br label %142

70:                                               ; preds = %3
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 123, i32 27
  store i32 %74, i32* %7, align 4
  br label %142

75:                                               ; preds = %3
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 124, i32 12
  store i32 %79, i32* %7, align 4
  br label %142

80:                                               ; preds = %3
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 124, i32 28
  store i32 %84, i32* %7, align 4
  br label %142

85:                                               ; preds = %3
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 124, i32 44
  store i32 %89, i32* %7, align 4
  br label %142

90:                                               ; preds = %3
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 114, i32 2
  store i32 %94, i32* %7, align 4
  br label %142

95:                                               ; preds = %3
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 125, i32 13
  store i32 %99, i32* %7, align 4
  br label %142

100:                                              ; preds = %3
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 126, i32 14
  store i32 %104, i32* %7, align 4
  br label %142

105:                                              ; preds = %3
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 126, i32 30
  store i32 %109, i32* %7, align 4
  br label %142

110:                                              ; preds = %3
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 126, i32 62
  store i32 %114, i32* %7, align 4
  br label %142

115:                                              ; preds = %3
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 126, i32 78
  store i32 %119, i32* %7, align 4
  br label %142

120:                                              ; preds = %3
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 126, i32 46
  store i32 %124, i32* %7, align 4
  br label %142

125:                                              ; preds = %3
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 126, i32 110
  store i32 %129, i32* %7, align 4
  br label %142

130:                                              ; preds = %3
  store i32 112, i32* %7, align 4
  br label %142

131:                                              ; preds = %3
  store i32 113, i32* %7, align 4
  br label %142

132:                                              ; preds = %3
  store i32 16, i32* %7, align 4
  br label %142

133:                                              ; preds = %3
  store i32 64, i32* %7, align 4
  br label %142

134:                                              ; preds = %3
  store i32 32, i32* %7, align 4
  br label %142

135:                                              ; preds = %3
  store i32 127, i32* %7, align 4
  br label %142

136:                                              ; preds = %3
  store i32 32, i32* %7, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 32
  store i32 %139, i32* %137, align 4
  br label %142

140:                                              ; preds = %3
  %141 = load i32, i32* @FM_KG_SCH_GEN_HT_INVALID, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %136, %135, %134, %133, %132, %131, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %58, %50, %39, %34, %29, %24, %19, %14, %9
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
