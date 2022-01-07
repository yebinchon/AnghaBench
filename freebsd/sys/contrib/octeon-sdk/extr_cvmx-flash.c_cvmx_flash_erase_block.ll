; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-flash.c_cvmx_flash_erase_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-flash.c_cvmx_flash_erase_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@flash_lock = common dso_local global i32 0, align 4
@flash_info = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"cvmx-flash: Hardware timeout erasing block\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cvmx-flash: Timeout erasing block\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"cvmx-flash: Hardware failure erasing block\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cvmx-flash: Unsupported flash vendor\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_flash_erase_block(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = call i32 @cvmx_spinlock_lock(i32* @flash_lock)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @flash_info, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @flash_info, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %27, %38
  %40 = add nsw i32 %26, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @flash_info, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %166 [
    i32 130, label %47
    i32 128, label %120
    i32 129, label %120
  ]

47:                                               ; preds = %3
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @__cvmx_flash_write_cmd(i32 %48, i32 0, i32 240)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @__cvmx_flash_write_cmd(i32 %50, i32 1365, i32 170)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @__cvmx_flash_write_cmd(i32 %52, i32 682, i32 85)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @__cvmx_flash_write_cmd(i32 %54, i32 1365, i32 128)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @__cvmx_flash_write_cmd(i32 %56, i32 1365, i32 170)
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @__cvmx_flash_write_cmd(i32 %58, i32 682, i32 85)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @__cvmx_flash_write8(i32 %60, i32 %61, i32 48)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @__cvmx_flash_read8(i32 %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = call i64 (...) @cvmx_get_cycle()
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %47, %115
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @__cvmx_flash_read8(i32 %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = xor i32 %72, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 64
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %67
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @__cvmx_flash_read8(i32 %83, i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @__cvmx_flash_read8(i32 %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = xor i32 %89, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 64
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %82
  %96 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %97 = call i32 @cvmx_spinlock_unlock(i32* @flash_lock)
  store i32 -1, i32* %4, align 4
  br label %169

98:                                               ; preds = %82
  br label %116

99:                                               ; preds = %78
  br label %101

100:                                              ; preds = %67
  br label %116

101:                                              ; preds = %99
  %102 = call i64 (...) @cvmx_get_cycle()
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @flash_info, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %103, %109
  %111 = icmp sgt i64 %102, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %114 = call i32 @cvmx_spinlock_unlock(i32* @flash_lock)
  store i32 -1, i32* %4, align 4
  br label %169

115:                                              ; preds = %101
  br label %67

116:                                              ; preds = %100, %98
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @__cvmx_flash_write_cmd(i32 %117, i32 0, i32 240)
  %119 = call i32 @cvmx_spinlock_unlock(i32* @flash_lock)
  store i32 0, i32* %4, align 4
  br label %169

120:                                              ; preds = %3, %3
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @__cvmx_flash_write_cmd(i32 %121, i32 0, i32 255)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @__cvmx_flash_write8(i32 %123, i32 %124, i32 32)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @__cvmx_flash_write8(i32 %126, i32 %127, i32 208)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @__cvmx_flash_read8(i32 %129, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = call i64 (...) @cvmx_get_cycle()
  store i64 %132, i64* %14, align 8
  br label %133

133:                                              ; preds = %151, %120
  %134 = load i32, i32* %13, align 4
  %135 = and i32 %134, 128
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %133
  %138 = call i64 (...) @cvmx_get_cycle()
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @flash_info, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %139, %145
  %147 = icmp sgt i64 %138, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %137
  %149 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %150 = call i32 @cvmx_spinlock_unlock(i32* @flash_lock)
  store i32 -1, i32* %4, align 4
  br label %169

151:                                              ; preds = %137
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @__cvmx_flash_read8(i32 %152, i32 %153)
  store i32 %154, i32* %13, align 4
  br label %133

155:                                              ; preds = %133
  %156 = load i32, i32* %13, align 4
  %157 = and i32 %156, 127
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %161 = call i32 @cvmx_spinlock_unlock(i32* @flash_lock)
  store i32 -1, i32* %4, align 4
  br label %169

162:                                              ; preds = %155
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @__cvmx_flash_write_cmd(i32 %163, i32 0, i32 255)
  %165 = call i32 @cvmx_spinlock_unlock(i32* @flash_lock)
  store i32 0, i32* %4, align 4
  br label %169

166:                                              ; preds = %3
  %167 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %168 = call i32 @cvmx_spinlock_unlock(i32* @flash_lock)
  store i32 -1, i32* %4, align 4
  br label %169

169:                                              ; preds = %166, %162, %159, %148, %116, %112, %95
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @cvmx_spinlock_lock(i32*) #1

declare dso_local i32 @__cvmx_flash_write_cmd(i32, i32, i32) #1

declare dso_local i32 @__cvmx_flash_write8(i32, i32, i32) #1

declare dso_local i32 @__cvmx_flash_read8(i32, i32) #1

declare dso_local i64 @cvmx_get_cycle(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cvmx_spinlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
