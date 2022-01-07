; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_common.c_soc_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_common.c_soc_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"SOC: \00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"(0x%4x:0x%02x) \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Marvell 88F5181\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Marvell 88F5182\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Marvell 88F5281\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"D1\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"D2\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Marvell 88F6281\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"Z0\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Marvell 88RC8180\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Marvell 88RC9480\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"Marvell 88RC9580\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Marvell 88F6781\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"Y0\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Marvell 88F6282\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Marvell 88F6828\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Marvell 88F6820\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Marvell 88F6810\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Marvell MV78100 Z0\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Marvell MV78100\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Marvell MV78160\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"Marvell MV78260\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Marvell MV78460\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" rev %s\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c", TClock %dMHz\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c", Frequency %dMHz\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CPU_CONFIG = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [57 x i8] c"  Instruction cache prefetch %s, data cache prefetch %s\0A\00", align 1
@CPU_CONFIG_IC_PREF = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@CPU_CONFIG_DC_PREF = common dso_local global i32 0, align 4
@CPU_L2_CONFIG = common dso_local global i32 0, align 4
@CPU_L2_CONFIG_MODE = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [51 x i8] c"  256KB 4-way set-associative %s unified L2 cache\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"write-through\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"write-back\00", align 1
@CPU_CONTROL = common dso_local global i32 0, align 4
@CPU_CONTROL_L2_SIZE = common dso_local global i32 0, align 4
@CPU_CONTROL_L2_MODE = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [42 x i8] c"  %s set-associative %s unified L2 cache\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"256KB 4-way\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"512KB 8-way\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @soc_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_identify(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @bootverbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %85 [
    i32 144, label %19
    i32 143, label %24
    i32 142, label %29
    i32 141, label %44
    i32 135, label %59
    i32 134, label %60
    i32 133, label %61
    i32 139, label %62
    i32 140, label %67
    i32 136, label %77
    i32 137, label %78
    i32 138, label %79
    i32 131, label %80
    i32 132, label %81
    i32 130, label %82
    i32 129, label %83
    i32 128, label %84
  ]

19:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %23

23:                                               ; preds = %22, %19
  br label %86

24:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %28

28:                                               ; preds = %27, %24
  br label %86

29:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %36
  br label %43

43:                                               ; preds = %42, %32
  br label %86

44:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %57

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57, %47
  br label %86

59:                                               ; preds = %17
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %86

60:                                               ; preds = %17
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8** %8, align 8
  br label %86

61:                                               ; preds = %17
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8** %8, align 8
  br label %86

62:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %8, align 8
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %66

66:                                               ; preds = %65, %62
  br label %86

67:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %8, align 8
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %70
  br label %86

77:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8** %8, align 8
  br label %86

78:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8** %8, align 8
  br label %86

79:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8** %8, align 8
  br label %86

80:                                               ; preds = %17
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8** %8, align 8
  br label %86

81:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8** %8, align 8
  br label %86

82:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8** %8, align 8
  br label %86

83:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8** %8, align 8
  br label %86

84:                                               ; preds = %17
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i8** %8, align 8
  br label %86

85:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8** %8, align 8
  br label %86

86:                                               ; preds = %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %66, %61, %60, %59, %58, %43, %28, %23
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %86
  %97 = call i32 (...) @get_tclk()
  %98 = sdiv i32 %97, 1000
  %99 = sdiv i32 %98, 1000
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i32 %99)
  %101 = call i32 (...) @get_cpu_freq()
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = sdiv i32 %105, 1000
  %107 = sdiv i32 %106, 1000
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %104, %96
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %111 = load i32, i32* @CPU_CONFIG, align 4
  %112 = call i32 @read_cpu_ctrl(i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @CPU_CONFIG_IC_PREF, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0)
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @CPU_CONFIG_DC_PREF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.35, i64 0, i64 0), i8* %118, i8* %124)
  %126 = load i32, i32* %3, align 4
  switch i32 %126, label %155 [
    i32 141, label %127
    i32 140, label %127
    i32 132, label %137
  ]

127:                                              ; preds = %109, %109
  %128 = load i32, i32* @CPU_L2_CONFIG, align 4
  %129 = call i32 @read_cpu_ctrl(i32 %128)
  %130 = load i32, i32* @CPU_L2_CONFIG_MODE, align 4
  %131 = and i32 %129, %130
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0)
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i8* %135)
  br label %156

137:                                              ; preds = %109
  %138 = load i32, i32* @CPU_CONTROL, align 4
  %139 = call i32 @read_cpu_ctrl(i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @CPU_CONTROL_L2_SIZE, align 4
  %142 = and i32 %140, %141
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @CPU_CONTROL_L2_MODE, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0)
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0)
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.41, i64 0, i64 0), i8* %149, i8* %153)
  br label %156

155:                                              ; preds = %109
  br label %156

156:                                              ; preds = %155, %137, %127
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_tclk(...) #1

declare dso_local i32 @get_cpu_freq(...) #1

declare dso_local i32 @read_cpu_ctrl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
