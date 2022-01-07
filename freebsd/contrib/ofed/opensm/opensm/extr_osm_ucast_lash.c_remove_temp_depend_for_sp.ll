; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_remove_temp_depend_for_sp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_ucast_lash.c_remove_temp_depend_for_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__****, %struct.TYPE_11__** }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32, i32)* @remove_temp_depend_for_sp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_temp_depend_for_sp(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_13__****, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %16, align 8
  store %struct.TYPE_11__** %17, %struct.TYPE_11__*** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %19, align 8
  store %struct.TYPE_13__**** %20, %struct.TYPE_13__***** %10, align 8
  %21 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %21, i64 %23
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @get_next_switch(%struct.TYPE_12__* %33, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %147, %4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %148

41:                                               ; preds = %37
  %42 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_13__***, %struct.TYPE_13__**** %42, i64 %44
  %46 = load %struct.TYPE_13__***, %struct.TYPE_13__**** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_13__**, %struct.TYPE_13__*** %46, i64 %48
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %50, i64 %52
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %14, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @CL_ASSERT(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %78

63:                                               ; preds = %41
  %64 = load %struct.TYPE_13__****, %struct.TYPE_13__***** %10, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_13__***, %struct.TYPE_13__**** %64, i64 %66
  %68 = load %struct.TYPE_13__***, %struct.TYPE_13__**** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__**, %struct.TYPE_13__*** %68, i64 %70
  %72 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %72, i64 %74
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %77 = call i32 @free(%struct.TYPE_13__* %76)
  br label %125

78:                                               ; preds = %41
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp sle i32 %81, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @CL_ASSERT(i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %90, %93
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %121, %78
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %106
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %106

124:                                              ; preds = %106
  br label %125

125:                                              ; preds = %124, %63
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %6, align 4
  %127 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %127, i64 %129
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %125
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @get_next_switch(%struct.TYPE_12__* %143, i32 %144, i32 %145)
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %142, %125
  br label %37

148:                                              ; preds = %37
  ret void
}

declare dso_local i32 @get_next_switch(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @CL_ASSERT(i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
