; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_allocinotab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_allocinotab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotab = type { i64, i32, %struct.inotab* }
%struct.context = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.modeinfo = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"no memory for directory table\0A\00", align 1
@inotab = common dso_local global %struct.inotab** null, align 8
@mf = common dso_local global i32* null, align 8
@modefile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inotab* (%struct.context*, i64)* @allocinotab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inotab* @allocinotab(%struct.context* %0, i64 %1) #0 {
  %3 = alloca %struct.inotab*, align 8
  %4 = alloca %struct.context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inotab*, align 8
  %7 = alloca %struct.modeinfo, align 8
  store %struct.context* %0, %struct.context** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call %struct.inotab* @calloc(i32 1, i32 24)
  store %struct.inotab* %8, %struct.inotab** %6, align 8
  %9 = load %struct.inotab*, %struct.inotab** %6, align 8
  %10 = icmp eq %struct.inotab* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.inotab**, %struct.inotab*** @inotab, align 8
  %15 = load %struct.context*, %struct.context** %4, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @INOHASH(i32 %17)
  %19 = getelementptr inbounds %struct.inotab*, %struct.inotab** %14, i64 %18
  %20 = load %struct.inotab*, %struct.inotab** %19, align 8
  %21 = load %struct.inotab*, %struct.inotab** %6, align 8
  %22 = getelementptr inbounds %struct.inotab, %struct.inotab* %21, i32 0, i32 2
  store %struct.inotab* %20, %struct.inotab** %22, align 8
  %23 = load %struct.inotab*, %struct.inotab** %6, align 8
  %24 = load %struct.inotab**, %struct.inotab*** @inotab, align 8
  %25 = load %struct.context*, %struct.context** %4, align 8
  %26 = getelementptr inbounds %struct.context, %struct.context* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @INOHASH(i32 %27)
  %29 = getelementptr inbounds %struct.inotab*, %struct.inotab** %24, i64 %28
  store %struct.inotab* %23, %struct.inotab** %29, align 8
  %30 = load %struct.context*, %struct.context** %4, align 8
  %31 = getelementptr inbounds %struct.context, %struct.context* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inotab*, %struct.inotab** %6, align 8
  %34 = getelementptr inbounds %struct.inotab, %struct.inotab* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.inotab*, %struct.inotab** %6, align 8
  %37 = getelementptr inbounds %struct.inotab, %struct.inotab* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32*, i32** @mf, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %13
  %41 = load %struct.inotab*, %struct.inotab** %6, align 8
  store %struct.inotab* %41, %struct.inotab** %3, align 8
  br label %132

42:                                               ; preds = %13
  %43 = load %struct.context*, %struct.context** %4, align 8
  %44 = getelementptr inbounds %struct.context, %struct.context* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 7
  store i32 %45, i32* %46, align 8
  %47 = load %struct.context*, %struct.context** %4, align 8
  %48 = getelementptr inbounds %struct.context, %struct.context* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 6
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.context*, %struct.context** %4, align 8
  %55 = getelementptr inbounds %struct.context, %struct.context* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 6
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.context*, %struct.context** %4, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 6
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.context*, %struct.context** %4, align 8
  %69 = getelementptr inbounds %struct.context, %struct.context* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 6
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  %75 = load %struct.context*, %struct.context** %4, align 8
  %76 = getelementptr inbounds %struct.context, %struct.context* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 5
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.context*, %struct.context** %4, align 8
  %83 = getelementptr inbounds %struct.context, %struct.context* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load %struct.context*, %struct.context** %4, align 8
  %90 = getelementptr inbounds %struct.context, %struct.context* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 5
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load %struct.context*, %struct.context** %4, align 8
  %97 = getelementptr inbounds %struct.context, %struct.context* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 5
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.context*, %struct.context** %4, align 8
  %104 = getelementptr inbounds %struct.context, %struct.context* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 4
  store i32 %105, i32* %106, align 8
  %107 = load %struct.context*, %struct.context** %4, align 8
  %108 = getelementptr inbounds %struct.context, %struct.context* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = load %struct.context*, %struct.context** %4, align 8
  %112 = getelementptr inbounds %struct.context, %struct.context* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 2
  store i32 %113, i32* %114, align 8
  %115 = load %struct.context*, %struct.context** %4, align 8
  %116 = getelementptr inbounds %struct.context, %struct.context* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = load %struct.context*, %struct.context** %4, align 8
  %120 = getelementptr inbounds %struct.context, %struct.context* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.modeinfo, %struct.modeinfo* %7, i32 0, i32 0
  store i32 %121, i32* %122, align 8
  %123 = bitcast %struct.modeinfo* %7 to i8*
  %124 = load i32*, i32** @mf, align 8
  %125 = call i32 @fwrite(i8* %123, i32 48, i32 1, i32* %124)
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %127, label %130

127:                                              ; preds = %42
  %128 = load i32, i32* @modefile, align 4
  %129 = call i32 @fail_dirtmp(i32 %128)
  br label %130

130:                                              ; preds = %127, %42
  %131 = load %struct.inotab*, %struct.inotab** %6, align 8
  store %struct.inotab* %131, %struct.inotab** %3, align 8
  br label %132

132:                                              ; preds = %130, %40
  %133 = load %struct.inotab*, %struct.inotab** %3, align 8
  ret %struct.inotab* %133
}

declare dso_local %struct.inotab* @calloc(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @INOHASH(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fail_dirtmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
