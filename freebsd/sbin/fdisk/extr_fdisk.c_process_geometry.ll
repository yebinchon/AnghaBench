; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_process_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_process_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@geom_processed = common dso_local global i32 0, align 4
@part_processed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [98 x i8] c"ERROR line %d: the geometry specification line must occur before\0A    all partition specifications\00", align 1
@current_line_number = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ERROR line %d: incorrect number of geometry args\00", align 1
@dos_cyls = common dso_local global i32 0, align 4
@dos_heads = common dso_local global i32 0, align 4
@dos_sectors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"ERROR line %d: unknown geometry arg type: '%c' (0x%02x)\00", align 1
@dos_cylsecs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"ERROR line %d: number of cylinders not specified\00", align 1
@.str.4 = private unnamed_addr constant [168 x i8] c"WARNING line %d: number of cylinders (%d) may be out-of-range\0A    (must be within 1-1024 for normal BIOS operation, unless the entire disk\0A    is dedicated to FreeBSD)\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"ERROR line %d: number of heads not specified\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"ERROR line %d: number of heads must be within (1-256)\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"ERROR line %d: number of sectors not specified\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"ERROR line %d: number of sectors must be within (1-63)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @process_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_geometry(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %1
  store i32 1, i32* @geom_processed, align 4
  %6 = load i64, i64* @part_processed, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* @current_line_number, align 4
  %10 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 0, i32* %3, align 4
  br label %129

11:                                               ; preds = %5
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @current_line_number, align 4
  %18 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 0, i32* %3, align 4
  br label %129

19:                                               ; preds = %11
  store i32 0, i32* @dos_cyls, align 4
  store i32 0, i32* @dos_heads, align 4
  store i32 0, i32* @dos_sectors, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %79, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %82

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %59 [
    i32 99, label %32
    i32 104, label %41
    i32 115, label %50
  ]

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* @dos_cyls, align 4
  br label %78

41:                                               ; preds = %23
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* @dos_heads, align 4
  br label %78

50:                                               ; preds = %23
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* @dos_sectors, align 4
  br label %78

59:                                               ; preds = %23
  %60 = load i32, i32* @current_line_number, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %68, i32 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %59, %50, %41, %32
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %20

82:                                               ; preds = %20
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %129

86:                                               ; preds = %82
  %87 = load i32, i32* @dos_heads, align 4
  %88 = load i32, i32* @dos_sectors, align 4
  %89 = mul nsw i32 %87, %88
  store i32 %89, i32* @dos_cylsecs, align 4
  %90 = load i32, i32* @dos_cyls, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @current_line_number, align 4
  %94 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %92, %86
  %96 = load i32, i32* @dos_cyls, align 4
  %97 = icmp sgt i32 %96, 1024
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @current_line_number, align 4
  %100 = load i32, i32* @dos_cyls, align 4
  %101 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i32, i32* @dos_heads, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @current_line_number, align 4
  %107 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  store i32 0, i32* %3, align 4
  br label %115

108:                                              ; preds = %102
  %109 = load i32, i32* @dos_heads, align 4
  %110 = icmp sgt i32 %109, 256
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @current_line_number, align 4
  %113 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %105
  %116 = load i32, i32* @dos_sectors, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @current_line_number, align 4
  %120 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  store i32 0, i32* %3, align 4
  br label %128

121:                                              ; preds = %115
  %122 = load i32, i32* @dos_sectors, align 4
  %123 = icmp sgt i32 %122, 63
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @current_line_number, align 4
  %126 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %118
  br label %129

129:                                              ; preds = %128, %85, %16, %8
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @warnx(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
