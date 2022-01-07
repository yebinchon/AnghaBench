; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_scas_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_scas_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_scas_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_scas_byte(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %5 = load i32, i32* @F_DF, align 4
  %6 = call i64 @ACCESS_FLAG(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %4, align 4
  br label %10

9:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %12 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %58, %18
  %20 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %21 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %27 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %28 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %32 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fetch_byte(%struct.x86emu* %26, i32 %30, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %38 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @cmp_byte(%struct.x86emu* %36, i32 %40, i32 %41)
  %43 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %44 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %50 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @F_ZF, align 4
  %55 = call i64 @ACCESS_FLAG(i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %25
  br label %59

58:                                               ; preds = %25
  br label %19

59:                                               ; preds = %57, %19
  %60 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %63 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %61
  store i32 %66, i32* %64, align 8
  br label %149

67:                                               ; preds = %10
  %68 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %69 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %124

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %115, %75
  %77 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %78 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %116

82:                                               ; preds = %76
  %83 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %84 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %85 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %89 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @fetch_byte(%struct.x86emu* %83, i32 %87, i32 %91)
  store i32 %92, i32* %3, align 4
  %93 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %94 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %95 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @cmp_byte(%struct.x86emu* %93, i32 %97, i32 %98)
  %100 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %101 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %107 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, %105
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @F_ZF, align 4
  %112 = call i64 @ACCESS_FLAG(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %82
  br label %116

115:                                              ; preds = %82
  br label %76

116:                                              ; preds = %114, %76
  %117 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %120 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %118
  store i32 %123, i32* %121, align 8
  br label %148

124:                                              ; preds = %67
  %125 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %126 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %127 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %131 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @fetch_byte(%struct.x86emu* %125, i32 %129, i32 %133)
  store i32 %134, i32* %3, align 4
  %135 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %136 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %137 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %3, align 4
  %141 = call i32 @cmp_byte(%struct.x86emu* %135, i32 %139, i32 %140)
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %144 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, %142
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %124, %116
  br label %149

149:                                              ; preds = %148, %59
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @fetch_byte(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @cmp_byte(%struct.x86emu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
