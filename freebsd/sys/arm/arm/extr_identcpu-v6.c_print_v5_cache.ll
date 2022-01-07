; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_identcpu-v6.c_print_v5_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_identcpu-v6.c_print_v5_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cpuinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPU_CT_S = common dso_local global i32 0, align 4
@CPU_CT_xSIZE_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"  %dKB/%dB %d-way %s unified cache\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"WT\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"WB\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"  %dKB/%dB %d-way instruction cache\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"  %dKB/%dB %d-way %s data cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_v5_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_v5_cache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %13 = load i32, i32* @CPU_CT_S, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %19 = call i32 @CPU_CT_CTYPE(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %17
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %24 = call i32 @CPU_CT_ISIZE(i32 %23)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @CPU_CT_xSIZE_M, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 3, i32 2
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @CPU_CT_xSIZE_LEN(i32 %31)
  %33 = add nsw i32 %32, 3
  %34 = shl i32 1, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @CPU_CT_xSIZE_ASSOC(i32 %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %22
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @CPU_CT_xSIZE_M, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %45

44:                                               ; preds = %38
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %44, %43
  br label %52

46:                                               ; preds = %22
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @CPU_CT_xSIZE_ASSOC(i32 %48)
  %50 = sub nsw i32 %49, 1
  %51 = shl i32 %47, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @CPU_CT_xSIZE_SIZE(i32 %54)
  %56 = add nsw i32 %55, 8
  %57 = shl i32 %53, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52, %17
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpuinfo, i32 0, i32 0), align 4
  %60 = call i32 @CPU_CT_DSIZE(i32 %59)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @CPU_CT_xSIZE_M, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 3, i32 2
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @CPU_CT_xSIZE_LEN(i32 %67)
  %69 = add nsw i32 %68, 3
  %70 = shl i32 1, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @CPU_CT_xSIZE_ASSOC(i32 %71)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %58
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* @CPU_CT_xSIZE_M, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  br label %81

80:                                               ; preds = %74
  store i32 1, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %88

82:                                               ; preds = %58
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @CPU_CT_xSIZE_ASSOC(i32 %84)
  %86 = sub nsw i32 %85, 1
  %87 = shl i32 %83, %86
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %82, %81
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @CPU_CT_xSIZE_SIZE(i32 %90)
  %92 = add nsw i32 %91, 8
  %93 = shl i32 %89, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %128

100:                                              ; preds = %96, %88
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = sdiv i32 %104, 1024
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %112 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %106, i32 %107, i8* %111)
  br label %128

113:                                              ; preds = %100
  %114 = load i32, i32* %6, align 4
  %115 = sdiv i32 %114, 1024
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %9, align 4
  %120 = sdiv i32 %119, 1024
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %127 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121, i32 %122, i8* %126)
  br label %128

128:                                              ; preds = %99, %113, %103
  ret void
}

declare dso_local i32 @CPU_CT_CTYPE(i32) #1

declare dso_local i32 @CPU_CT_ISIZE(i32) #1

declare dso_local i32 @CPU_CT_xSIZE_LEN(i32) #1

declare dso_local i32 @CPU_CT_xSIZE_ASSOC(i32) #1

declare dso_local i32 @CPU_CT_xSIZE_SIZE(i32) #1

declare dso_local i32 @CPU_CT_DSIZE(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
