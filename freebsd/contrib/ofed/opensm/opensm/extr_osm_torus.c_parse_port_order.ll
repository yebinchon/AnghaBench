; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_parse_port_order.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_torus.c_parse_port_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.torus = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OSM_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Ignored duplicate port %u in port_order parsing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.torus*, i8*)* @parse_port_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_port_order(%struct.torus* %0, i8* %1) #0 {
  %3 = alloca %struct.torus*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.torus* %0, %struct.torus** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %69, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.torus*, %struct.torus** %3, align 8
  %12 = getelementptr inbounds %struct.torus, %struct.torus* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %9
  %17 = load %struct.torus*, %struct.torus** %3, align 8
  %18 = getelementptr inbounds %struct.torus, %struct.torus* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @parse_unsigned(i32* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %72

27:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %65, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load %struct.torus*, %struct.torus** %3, align 8
  %34 = getelementptr inbounds %struct.torus, %struct.torus* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.torus*, %struct.torus** %3, align 8
  %41 = getelementptr inbounds %struct.torus, %struct.torus* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %39, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %32
  %49 = load %struct.torus*, %struct.torus** %3, align 8
  %50 = getelementptr inbounds %struct.torus, %struct.torus* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* @OSM_LOG_INFO, align 4
  %54 = load %struct.torus*, %struct.torus** %3, align 8
  %55 = getelementptr inbounds %struct.torus, %struct.torus* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @OSM_LOG(i32* %52, i32 %53, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %5, align 4
  br label %68

64:                                               ; preds = %32
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %28

68:                                               ; preds = %48, %28
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %9

72:                                               ; preds = %26, %9
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %115, %72
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.torus*, %struct.torus** %3, align 8
  %77 = getelementptr inbounds %struct.torus, %struct.torus* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ARRAY_SIZE(i32* %78)
  %80 = icmp ult i32 %75, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.torus*, %struct.torus** %3, align 8
  %88 = getelementptr inbounds %struct.torus, %struct.torus* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %101

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %82

101:                                              ; preds = %96, %82
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp uge i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.torus*, %struct.torus** %3, align 8
  %108 = getelementptr inbounds %struct.torus, %struct.torus* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %105, %101
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %6, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %74

118:                                              ; preds = %74
  ret i32 1
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @parse_unsigned(i32*, i8*) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
