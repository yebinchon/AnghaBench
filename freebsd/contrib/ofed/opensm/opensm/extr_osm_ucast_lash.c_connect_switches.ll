; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_connect_switches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_connect_switches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__**, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32, i32*, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"LASH connect: %d, %d, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, i32, i32)* @connect_switches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_switches(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32* %19, i32** %9, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %22, i64 %24
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %33, i64 %35
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %11, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %12, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %94

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %176

54:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %90, %54
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %55
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %62, i64 %64
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %14, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %69, i64 %71
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %59
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  store i32 %79, i32* %88, align 4
  br label %176

89:                                               ; preds = %59
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %15, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %55

93:                                               ; preds = %55
  br label %94

94:                                               ; preds = %93, %4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %97, i64 %99
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %14, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i32 -1, i32* %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %110, i64 %115
  store i32 %107, i32* %116, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %119, i64 %121
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %13, align 8
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %162, %94
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ult i32 %125, %130
  br i1 %131, label %132, label %165

132:                                              ; preds = %124
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %137, i64 %139
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %132
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %152, i64 %154
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 2
  store i32 %147, i32* %157, align 8
  %158 = load i32, i32* %15, align 4
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  br label %165

161:                                              ; preds = %132
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %15, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %15, align 4
  br label %124

165:                                              ; preds = %146, %124
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add i32 %168, 1
  store i32 %169, i32* %167, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @OSM_LOG(i32* %170, i32 %171, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %165, %78, %53
  ret void
}

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
