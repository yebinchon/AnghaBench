; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_parse_dir_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_parse_dir_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.link, %struct.link, %struct.link, %struct.link, %struct.link, %struct.link }
%struct.link = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i8*, i8* }

@OSM_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ERR 4E0E: unknown link direction %d\0A\00", align 1
@PASSTHRU = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.torus*, i8*)* @parse_dir_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dir_link(i32 %0, %struct.torus* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.torus*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.link*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.torus* %1, %struct.torus** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.torus*, %struct.torus** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @parse_guid(%struct.torus* %11, i8** %7, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %157

16:                                               ; preds = %3
  %17 = load %struct.torus*, %struct.torus** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @parse_guid(%struct.torus* %17, i8** %8, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %157

22:                                               ; preds = %16
  %23 = load %struct.torus*, %struct.torus** %5, align 8
  %24 = icmp ne %struct.torus* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  br label %157

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %94 [
    i32 -1, label %28
    i32 1, label %39
    i32 -2, label %50
    i32 2, label %61
    i32 -3, label %72
    i32 3, label %83
  ]

28:                                               ; preds = %26
  %29 = load %struct.torus*, %struct.torus** %5, align 8
  %30 = getelementptr inbounds %struct.torus, %struct.torus* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.torus*, %struct.torus** %5, align 8
  %33 = getelementptr inbounds %struct.torus, %struct.torus* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 5
  store %struct.link* %38, %struct.link** %9, align 8
  br label %102

39:                                               ; preds = %26
  %40 = load %struct.torus*, %struct.torus** %5, align 8
  %41 = getelementptr inbounds %struct.torus, %struct.torus* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.torus*, %struct.torus** %5, align 8
  %44 = getelementptr inbounds %struct.torus, %struct.torus* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  store %struct.link* %49, %struct.link** %9, align 8
  br label %102

50:                                               ; preds = %26
  %51 = load %struct.torus*, %struct.torus** %5, align 8
  %52 = getelementptr inbounds %struct.torus, %struct.torus* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.torus*, %struct.torus** %5, align 8
  %55 = getelementptr inbounds %struct.torus, %struct.torus* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store %struct.link* %60, %struct.link** %9, align 8
  br label %102

61:                                               ; preds = %26
  %62 = load %struct.torus*, %struct.torus** %5, align 8
  %63 = getelementptr inbounds %struct.torus, %struct.torus* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load %struct.torus*, %struct.torus** %5, align 8
  %66 = getelementptr inbounds %struct.torus, %struct.torus* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store %struct.link* %71, %struct.link** %9, align 8
  br label %102

72:                                               ; preds = %26
  %73 = load %struct.torus*, %struct.torus** %5, align 8
  %74 = getelementptr inbounds %struct.torus, %struct.torus* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load %struct.torus*, %struct.torus** %5, align 8
  %77 = getelementptr inbounds %struct.torus, %struct.torus* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store %struct.link* %82, %struct.link** %9, align 8
  br label %102

83:                                               ; preds = %26
  %84 = load %struct.torus*, %struct.torus** %5, align 8
  %85 = getelementptr inbounds %struct.torus, %struct.torus* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load %struct.torus*, %struct.torus** %5, align 8
  %88 = getelementptr inbounds %struct.torus, %struct.torus* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store %struct.link* %93, %struct.link** %9, align 8
  br label %102

94:                                               ; preds = %26
  %95 = load %struct.torus*, %struct.torus** %5, align 8
  %96 = getelementptr inbounds %struct.torus, %struct.torus* %95, i32 0, i32 0
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* @OSM_LOG_ERROR, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @OSM_LOG(i32* %98, i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %157

102:                                              ; preds = %83, %72, %61, %50, %39, %28
  %103 = load i8*, i8** @PASSTHRU, align 8
  %104 = load %struct.link*, %struct.link** %9, align 8
  %105 = getelementptr inbounds %struct.link, %struct.link* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  store i8* %103, i8** %108, align 8
  %109 = load %struct.link*, %struct.link** %9, align 8
  %110 = getelementptr inbounds %struct.link, %struct.link* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 -1, i32* %113, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.link*, %struct.link** %9, align 8
  %116 = getelementptr inbounds %struct.link, %struct.link* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  store i8* %114, i8** %119, align 8
  %120 = load %struct.link*, %struct.link** %9, align 8
  %121 = getelementptr inbounds %struct.link, %struct.link* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  store i32* null, i32** %124, align 8
  %125 = load %struct.link*, %struct.link** %9, align 8
  %126 = getelementptr inbounds %struct.link, %struct.link* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i32* null, i32** %129, align 8
  %130 = load i8*, i8** @PASSTHRU, align 8
  %131 = load %struct.link*, %struct.link** %9, align 8
  %132 = getelementptr inbounds %struct.link, %struct.link* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  store i8* %130, i8** %135, align 8
  %136 = load %struct.link*, %struct.link** %9, align 8
  %137 = getelementptr inbounds %struct.link, %struct.link* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 -1, i32* %140, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.link*, %struct.link** %9, align 8
  %143 = getelementptr inbounds %struct.link, %struct.link* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  store i8* %141, i8** %146, align 8
  %147 = load %struct.link*, %struct.link** %9, align 8
  %148 = getelementptr inbounds %struct.link, %struct.link* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  store i32* null, i32** %151, align 8
  %152 = load %struct.link*, %struct.link** %9, align 8
  %153 = getelementptr inbounds %struct.link, %struct.link* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  store i32* null, i32** %156, align 8
  store i32 1, i32* %10, align 4
  br label %157

157:                                              ; preds = %102, %94, %25, %21, %15
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local i32 @parse_guid(%struct.torus*, i8**, i8*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
