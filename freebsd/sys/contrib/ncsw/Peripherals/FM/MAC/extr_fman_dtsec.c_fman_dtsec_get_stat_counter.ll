; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_get_stat_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_dtsec.c_fman_dtsec_get_stat_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_dtsec_get_stat_counter(%struct.dtsec_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.dtsec_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dtsec_regs* %0, %struct.dtsec_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %123 [
    i32 131, label %7
    i32 135, label %11
    i32 133, label %15
    i32 132, label %19
    i32 134, label %23
    i32 130, label %27
    i32 129, label %31
    i32 154, label %35
    i32 145, label %39
    i32 147, label %43
    i32 155, label %47
    i32 143, label %51
    i32 156, label %55
    i32 150, label %59
    i32 153, label %63
    i32 152, label %67
    i32 144, label %71
    i32 146, label %75
    i32 149, label %79
    i32 148, label %83
    i32 151, label %87
    i32 139, label %91
    i32 141, label %95
    i32 136, label %99
    i32 138, label %103
    i32 142, label %107
    i32 128, label %111
    i32 137, label %115
    i32 140, label %119
  ]

7:                                                ; preds = %2
  %8 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %9 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %8, i32 0, i32 28
  %10 = call i32 @ioread32be(i32* %9)
  store i32 %10, i32* %5, align 4
  br label %124

11:                                               ; preds = %2
  %12 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %13 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %12, i32 0, i32 27
  %14 = call i32 @ioread32be(i32* %13)
  store i32 %14, i32* %5, align 4
  br label %124

15:                                               ; preds = %2
  %16 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %17 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %16, i32 0, i32 26
  %18 = call i32 @ioread32be(i32* %17)
  store i32 %18, i32* %5, align 4
  br label %124

19:                                               ; preds = %2
  %20 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %21 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %20, i32 0, i32 25
  %22 = call i32 @ioread32be(i32* %21)
  store i32 %22, i32* %5, align 4
  br label %124

23:                                               ; preds = %2
  %24 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %25 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %24, i32 0, i32 24
  %26 = call i32 @ioread32be(i32* %25)
  store i32 %26, i32* %5, align 4
  br label %124

27:                                               ; preds = %2
  %28 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %29 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %28, i32 0, i32 23
  %30 = call i32 @ioread32be(i32* %29)
  store i32 %30, i32* %5, align 4
  br label %124

31:                                               ; preds = %2
  %32 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %33 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %32, i32 0, i32 22
  %34 = call i32 @ioread32be(i32* %33)
  store i32 %34, i32* %5, align 4
  br label %124

35:                                               ; preds = %2
  %36 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %37 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %36, i32 0, i32 21
  %38 = call i32 @ioread32be(i32* %37)
  store i32 %38, i32* %5, align 4
  br label %124

39:                                               ; preds = %2
  %40 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %41 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %40, i32 0, i32 20
  %42 = call i32 @ioread32be(i32* %41)
  store i32 %42, i32* %5, align 4
  br label %124

43:                                               ; preds = %2
  %44 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %45 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %44, i32 0, i32 19
  %46 = call i32 @ioread32be(i32* %45)
  store i32 %46, i32* %5, align 4
  br label %124

47:                                               ; preds = %2
  %48 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %49 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %48, i32 0, i32 18
  %50 = call i32 @ioread32be(i32* %49)
  store i32 %50, i32* %5, align 4
  br label %124

51:                                               ; preds = %2
  %52 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %53 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %52, i32 0, i32 17
  %54 = call i32 @ioread32be(i32* %53)
  store i32 %54, i32* %5, align 4
  br label %124

55:                                               ; preds = %2
  %56 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %57 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %56, i32 0, i32 16
  %58 = call i32 @ioread32be(i32* %57)
  store i32 %58, i32* %5, align 4
  br label %124

59:                                               ; preds = %2
  %60 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %61 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %60, i32 0, i32 15
  %62 = call i32 @ioread32be(i32* %61)
  store i32 %62, i32* %5, align 4
  br label %124

63:                                               ; preds = %2
  %64 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %65 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %64, i32 0, i32 14
  %66 = call i32 @ioread32be(i32* %65)
  store i32 %66, i32* %5, align 4
  br label %124

67:                                               ; preds = %2
  %68 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %69 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %68, i32 0, i32 13
  %70 = call i32 @ioread32be(i32* %69)
  store i32 %70, i32* %5, align 4
  br label %124

71:                                               ; preds = %2
  %72 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %73 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %72, i32 0, i32 12
  %74 = call i32 @ioread32be(i32* %73)
  store i32 %74, i32* %5, align 4
  br label %124

75:                                               ; preds = %2
  %76 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %77 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %76, i32 0, i32 11
  %78 = call i32 @ioread32be(i32* %77)
  store i32 %78, i32* %5, align 4
  br label %124

79:                                               ; preds = %2
  %80 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %81 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %80, i32 0, i32 10
  %82 = call i32 @ioread32be(i32* %81)
  store i32 %82, i32* %5, align 4
  br label %124

83:                                               ; preds = %2
  %84 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %85 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %84, i32 0, i32 9
  %86 = call i32 @ioread32be(i32* %85)
  store i32 %86, i32* %5, align 4
  br label %124

87:                                               ; preds = %2
  %88 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %89 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %88, i32 0, i32 8
  %90 = call i32 @ioread32be(i32* %89)
  store i32 %90, i32* %5, align 4
  br label %124

91:                                               ; preds = %2
  %92 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %93 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %92, i32 0, i32 7
  %94 = call i32 @ioread32be(i32* %93)
  store i32 %94, i32* %5, align 4
  br label %124

95:                                               ; preds = %2
  %96 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %97 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %96, i32 0, i32 6
  %98 = call i32 @ioread32be(i32* %97)
  store i32 %98, i32* %5, align 4
  br label %124

99:                                               ; preds = %2
  %100 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %101 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %100, i32 0, i32 5
  %102 = call i32 @ioread32be(i32* %101)
  store i32 %102, i32* %5, align 4
  br label %124

103:                                              ; preds = %2
  %104 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %105 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %104, i32 0, i32 4
  %106 = call i32 @ioread32be(i32* %105)
  store i32 %106, i32* %5, align 4
  br label %124

107:                                              ; preds = %2
  %108 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %109 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %108, i32 0, i32 3
  %110 = call i32 @ioread32be(i32* %109)
  store i32 %110, i32* %5, align 4
  br label %124

111:                                              ; preds = %2
  %112 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %113 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %112, i32 0, i32 2
  %114 = call i32 @ioread32be(i32* %113)
  store i32 %114, i32* %5, align 4
  br label %124

115:                                              ; preds = %2
  %116 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %117 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %116, i32 0, i32 1
  %118 = call i32 @ioread32be(i32* %117)
  store i32 %118, i32* %5, align 4
  br label %124

119:                                              ; preds = %2
  %120 = load %struct.dtsec_regs*, %struct.dtsec_regs** %3, align 8
  %121 = getelementptr inbounds %struct.dtsec_regs, %struct.dtsec_regs* %120, i32 0, i32 0
  %122 = call i32 @ioread32be(i32* %121)
  store i32 %122, i32* %5, align 4
  br label %124

123:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %119, %115, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
