; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_capture_v2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_capture_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__**, %struct.TYPE_12__**, %struct.TYPE_10__** }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"cvmx_pow_capture: Buffer too small\0A\00", align 1
@CVMX_IO_SEG = common dso_local global i8* null, align 8
@CVMX_OCT_DID_TAG_TAG5 = common dso_local global i32 0, align 4
@CVMX_OCT_DID_TAG_TAG2 = common dso_local global i32 0, align 4
@CVMX_OCT_DID_TAG_TAG3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @__cvmx_pow_capture_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_pow_capture_v2(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = call i32 (...) @cvmx_pow_get_num_entries()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 24
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %161

22:                                               ; preds = %2
  %23 = call i32 (...) @cvmx_octeon_num_cores()
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %66, %22
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i8*, i8** @CVMX_IO_SEG, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* @CVMX_OCT_DID_TAG_TAG5, align 4
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 1, i32* %11, align 4
  br label %41

41:                                               ; preds = %62, %28
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 6
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @cvmx_read_csr(i64 %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 %55
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i8* %50, i8** %61, align 8
  br label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %41

65:                                               ; preds = %41
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %24

69:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %112, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %115

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load i8*, i8** @CVMX_IO_SEG, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @CVMX_OCT_DID_TAG_TAG2, align 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %108, %74
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 5
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @cvmx_read_csr(i64 %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %99, i64 %101
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i8* %96, i8** %107, align 8
  br label %108

108:                                              ; preds = %90
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %87

111:                                              ; preds = %87
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %70

115:                                              ; preds = %70
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %157, %115
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 64
  br i1 %118, label %119, label %160

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load i8*, i8** @CVMX_IO_SEG, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load i32, i32* @CVMX_OCT_DID_TAG_TAG3, align 4
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  store i32 1, i32* %11, align 4
  br label %132

132:                                              ; preds = %153, %119
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 7
  br i1 %134, label %135, label %156

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i8* @cvmx_read_csr(i64 %140)
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %144, i64 %146
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  store i8* %141, i8** %152, align 8
  br label %153

153:                                              ; preds = %135
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %132

156:                                              ; preds = %132
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %116

160:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %20
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @cvmx_pow_get_num_entries(...) #1

declare dso_local i32 @cvmx_dprintf(i8*) #1

declare dso_local i32 @cvmx_octeon_num_cores(...) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
