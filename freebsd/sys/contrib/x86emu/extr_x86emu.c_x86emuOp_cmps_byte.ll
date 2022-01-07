; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_cmps_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_cmps_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_cmps_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_cmps_byte(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %6 = load i32, i32* @F_DF, align 4
  %7 = call i64 @ACCESS_FLAG(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %5, align 4
  br label %11

10:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %13 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %77

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %68, %19
  %21 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %22 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %20
  %27 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %28 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @fetch_data_byte(%struct.x86emu* %27, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %34 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %35 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %39 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fetch_byte(%struct.x86emu* %33, i32 %37, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @cmp_byte(%struct.x86emu* %43, i32 %44, i32 %45)
  %47 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %48 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %54 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %52
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %60 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @F_ZF, align 4
  %65 = call i64 @ACCESS_FLAG(i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %26
  br label %69

68:                                               ; preds = %26
  br label %20

69:                                               ; preds = %67, %20
  %70 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %73 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %177

77:                                               ; preds = %11
  %78 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %79 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %143

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %134, %85
  %87 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %88 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %135

92:                                               ; preds = %86
  %93 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %94 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %95 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @fetch_data_byte(%struct.x86emu* %93, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %100 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %101 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %105 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @fetch_byte(%struct.x86emu* %99, i32 %103, i32 %107)
  store i32 %108, i32* %4, align 4
  %109 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @cmp_byte(%struct.x86emu* %109, i32 %110, i32 %111)
  %113 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %114 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %120 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, %118
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %126 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %124
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @F_ZF, align 4
  %131 = call i64 @ACCESS_FLAG(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %92
  br label %135

134:                                              ; preds = %92
  br label %86

135:                                              ; preds = %133, %86
  %136 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %139 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %137
  store i32 %142, i32* %140, align 8
  br label %176

143:                                              ; preds = %77
  %144 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %145 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %146 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @fetch_data_byte(%struct.x86emu* %144, i32 %148)
  store i32 %149, i32* %3, align 4
  %150 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %151 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %152 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %156 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @fetch_byte(%struct.x86emu* %150, i32 %154, i32 %158)
  store i32 %159, i32* %4, align 4
  %160 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @cmp_byte(%struct.x86emu* %160, i32 %161, i32 %162)
  %164 = load i32, i32* %5, align 4
  %165 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %166 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, %164
  store i32 %169, i32* %167, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %172 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %170
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %143, %135
  br label %177

177:                                              ; preds = %176, %69
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @fetch_data_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @fetch_byte(%struct.x86emu*, i32, i32) #1

declare dso_local i32 @cmp_byte(%struct.x86emu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
