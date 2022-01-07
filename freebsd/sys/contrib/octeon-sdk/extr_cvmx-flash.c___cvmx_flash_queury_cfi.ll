; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-flash.c___cvmx_flash_queury_cfi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-flash.c___cvmx_flash_queury_cfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@flash_info = common dso_local global %struct.TYPE_4__* null, align 8
@CVMX_CLOCK_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @__cvmx_flash_queury_cfi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_flash_queury_cfi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @flash_info, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %14
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 7
  store i32* %17, i32** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @__cvmx_flash_write_cmd(i32 %22, i32 0, i32 240)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @__cvmx_flash_write_cmd(i32 %24, i32 85, i32 152)
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @__cvmx_flash_read_cmd(i32 %26, i32 16)
  %28 = icmp ne i32 %27, 81
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @__cvmx_flash_read_cmd(i32 %30, i32 17)
  %32 = icmp ne i32 %31, 82
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @__cvmx_flash_read_cmd(i32 %34, i32 18)
  %36 = icmp ne i32 %35, 89
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29, %2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  store i32* null, i32** %39, align 8
  store i32 -1, i32* %3, align 4
  br label %159

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = call i8* @__cvmx_flash_read_cmd16(i32 %41, i32 19)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @__cvmx_flash_read_cmd(i32 %46, i32 31)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @__cvmx_flash_read_cmd(i32 %48, i32 35)
  %50 = add nsw i32 %47, %49
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @__cvmx_flash_read_cmd(i32 %55, i32 33)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @__cvmx_flash_read_cmd(i32 %57, i32 37)
  %59 = add nsw i32 %56, %58
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @__cvmx_flash_read_cmd(i32 %64, i32 39)
  %66 = shl i32 1, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @__cvmx_flash_read_cmd(i32 %69, i32 44)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %126, %40
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %129

79:                                               ; preds = %73
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 %90, 4
  %92 = add nsw i32 45, %91
  %93 = call i8* @__cvmx_flash_read_cmd16(i32 %89, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add i32 1, %95
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %6, align 4
  %101 = mul nsw i32 %100, 4
  %102 = add nsw i32 45, %101
  %103 = add nsw i32 %102, 2
  %104 = call i8* @__cvmx_flash_read_cmd16(i32 %99, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %79
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i32 128, i32* %110, align 4
  br label %116

111:                                              ; preds = %79
  %112 = load i32, i32* %11, align 4
  %113 = mul i32 256, %112
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %111, %108
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = mul i32 %119, %122
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %73

129:                                              ; preds = %73
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @flash_info, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %142 [
    i32 130, label %136
    i32 128, label %139
    i32 129, label %139
  ]

136:                                              ; preds = %129
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @__cvmx_flash_write_cmd(i32 %137, i32 0, i32 240)
  br label %139

139:                                              ; preds = %129, %129, %136
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @__cvmx_flash_write_cmd(i32 %140, i32 0, i32 255)
  br label %142

142:                                              ; preds = %129, %139
  %143 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %144 = call i32 @cvmx_clock_get_rate(i32 %143)
  %145 = sdiv i32 %144, 1000000
  %146 = sext i32 %145 to i64
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = mul i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load i32, i32* @CVMX_CLOCK_CORE, align 4
  %152 = call i32 @cvmx_clock_get_rate(i32 %151)
  %153 = sdiv i32 %152, 1000
  %154 = sext i32 %153 to i64
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = mul i64 %157, %154
  store i64 %158, i64* %156, align 8
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %142, %37
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @__cvmx_flash_write_cmd(i32, i32, i32) #1

declare dso_local i32 @__cvmx_flash_read_cmd(i32, i32) #1

declare dso_local i8* @__cvmx_flash_read_cmd16(i32, i32) #1

declare dso_local i32 @cvmx_clock_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
