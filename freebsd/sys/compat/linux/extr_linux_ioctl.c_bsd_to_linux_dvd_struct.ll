; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_dvd_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_bsd_to_linux_dvd_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvd_struct = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.l_dvd_layer* }
%struct.l_dvd_layer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvd_layer = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvd_struct*, %struct.TYPE_13__*)* @bsd_to_linux_dvd_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_to_linux_dvd_struct(%struct.dvd_struct* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvd_struct*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.dvd_layer*, align 8
  %7 = alloca %struct.l_dvd_layer*, align 8
  store %struct.dvd_struct* %0, %struct.dvd_struct** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %8 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %9 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %143 [
    i32 128, label %11
    i32 131, label %91
    i32 130, label %104
    i32 132, label %113
    i32 129, label %128
  ]

11:                                               ; preds = %2
  %12 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %13 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dvd_layer*
  store %struct.dvd_layer* %15, %struct.dvd_layer** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %18, align 8
  %20 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %21 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %19, i64 %22
  store %struct.l_dvd_layer* %23, %struct.l_dvd_layer** %7, align 8
  %24 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %25 = call i32 @memset(%struct.l_dvd_layer* %24, i32 0, i32 52)
  %26 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %27 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %30 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %32 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %35 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %37 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %40 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %42 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %45 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %47 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %50 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %52 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %55 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %57 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %60 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %62 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %65 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %67 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %70 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %72 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %75 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %77 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %80 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %82 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %85 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.dvd_layer*, %struct.dvd_layer** %6, align 8
  %87 = getelementptr inbounds %struct.dvd_layer, %struct.dvd_layer* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.l_dvd_layer*, %struct.l_dvd_layer** %7, align 8
  %90 = getelementptr inbounds %struct.l_dvd_layer, %struct.l_dvd_layer* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %145

91:                                               ; preds = %2
  %92 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %93 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %99 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  br label %145

104:                                              ; preds = %2
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %110 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @memcpy(i32 %108, i64 %111, i32 4)
  br label %145

113:                                              ; preds = %2
  %114 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %115 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %125 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @memcpy(i32 %123, i64 %126, i32 4)
  br label %145

128:                                              ; preds = %2
  %129 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %130 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.dvd_struct*, %struct.dvd_struct** %4, align 8
  %140 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @memcpy(i32 %138, i64 %141, i32 4)
  br label %145

143:                                              ; preds = %2
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %3, align 4
  br label %146

145:                                              ; preds = %128, %113, %104, %91, %11
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %143
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @memset(%struct.l_dvd_layer*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
