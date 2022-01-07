; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_display_selector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_display_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"0x%03lx: \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Segment not present\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"base=0x%08x limit=0x%08x\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" 32-bit \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" 16-bit \00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Data (Read-Only, Exp-up\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Data (Read/Write, Exp-up\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Unused segment (\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Data (Read/Write, Exp-down\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Code (Exec-Only, N.Conf\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Code (Exec/Read, N.Conf\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Code (Exec-Only, Conf\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Code (Exec/Read, Conf\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Unknown type 0x%x\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c", N.Acc\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"System selector \00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Priviledge level = %d. \00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Page granular.\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Byte granular.\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Invalid selector 0x%lx.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @display_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_selector(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @GetThreadSelectorEntry(i32 %9, i32 %10, %struct.TYPE_7__* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %132

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = call i32 @puts_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 24
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = add nsw i32 %28, %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %34, %36
  store i32 %37, i32* %7, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %41, 16
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %8, align 4
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %23
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 12
  %54 = or i32 %53, 4095
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %23
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = call i32 @puts_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %68

66:                                               ; preds = %55
  %67 = call i32 @puts_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 15
  %74 = ashr i32 %73, 1
  switch i32 %74, label %91 [
    i32 0, label %75
    i32 1, label %77
    i32 2, label %79
    i32 3, label %81
    i32 4, label %83
    i32 5, label %85
    i32 6, label %87
    i32 7, label %89
  ]

75:                                               ; preds = %68
  %76 = call i32 @puts_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %97

77:                                               ; preds = %68
  %78 = call i32 @puts_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %97

79:                                               ; preds = %68
  %80 = call i32 @puts_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %97

81:                                               ; preds = %68
  %82 = call i32 @puts_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %97

83:                                               ; preds = %68
  %84 = call i32 @puts_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %97

85:                                               ; preds = %68
  %86 = call i32 @puts_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %97

87:                                               ; preds = %68
  %88 = call i32 @puts_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %97

89:                                               ; preds = %68
  %90 = call i32 @puts_filtered(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  br label %97

91:                                               ; preds = %68
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %89, %87, %85, %83, %81, %79, %77, %75
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = call i32 @puts_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %97
  %107 = call i32 @puts_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = call i32 @puts_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %106
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %116
  %128 = call i32 @puts_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %131

129:                                              ; preds = %116
  %130 = call i32 @puts_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %127
  store i32 1, i32* %3, align 4
  br label %135

132:                                              ; preds = %2
  %133 = load i32, i32* %5, align 4
  %134 = call i32 (i8*, i32, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %132, %131, %21
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @GetThreadSelectorEntry(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @printf_filtered(i8*, i32, ...) #1

declare dso_local i32 @puts_filtered(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
