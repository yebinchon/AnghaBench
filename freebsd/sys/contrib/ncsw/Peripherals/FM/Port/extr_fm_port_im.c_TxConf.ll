; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port_im.c_TxConf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port_im.c_TxConf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32*, i32 (i32, i32, i32, i32)* }

@E_BUSY = common dso_local global i64 0, align 8
@BD_R_E = common dso_local global i32 0, align 4
@e_TX_CONF_TYPE_FLUSH = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@e_TX_CONF_TYPE_CALLBACK = common dso_local global i32 0, align 4
@BD_LENGTH_MASK = common dso_local global i32 0, align 4
@XX_PhysToVirt = common dso_local global i32 0, align 4
@TX_CONF_STATUS_UNSENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32)* @TxConf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TxConf(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @E_BUSY, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @ASSERT_COND(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @BD_GET(i64 %16)
  %18 = call i32 @BD_STATUS_AND_LENGTH(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %120, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BD_R_E, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @e_TX_CONF_TYPE_FLUSH, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %19
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @E_OK, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %124

34:                                               ; preds = %32
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @e_TX_CONF_TYPE_CALLBACK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @BD_GET(i64 %40)
  %42 = call i32 @BD_STATUS_AND_LENGTH_SET(i32 %41, i32 0)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @e_TX_CONF_TYPE_CALLBACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %111

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @BD_LENGTH_MASK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %111

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %56, align 8
  %58 = icmp ne i32 (i32, i32, i32, i32)* %57, null
  br i1 %58, label %59, label %110

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @e_TX_CONF_TYPE_FLUSH, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @BD_R_E, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @XX_PhysToVirt, align 4
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @BD_GET(i64 %77)
  %79 = call i32 @BdBufferGet(i32 %76, i32 %78)
  %80 = load i32, i32* @TX_CONF_STATUS_UNSENT, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %72(i32 %75, i32 %79, i32 %80, i32 %87)
  br label %109

89:                                               ; preds = %63, %59
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @XX_PhysToVirt, align 4
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @BD_GET(i64 %98)
  %100 = call i32 @BdBufferGet(i32 %97, i32 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 %93(i32 %96, i32 %100, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %89, %68
  br label %110

110:                                              ; preds = %109, %53
  br label %111

111:                                              ; preds = %110, %48, %43
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @GetNextBdId(%struct.TYPE_7__* %112, i64 %113)
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* %7, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i64, i64* @E_OK, align 8
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %118, %111
  %121 = load i64, i64* %8, align 8
  %122 = call i32 @BD_GET(i64 %121)
  %123 = call i32 @BD_STATUS_AND_LENGTH(i32 %122)
  store i32 %123, i32* %6, align 4
  br label %19

124:                                              ; preds = %32
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_7__*) #1

declare dso_local i32 @BD_STATUS_AND_LENGTH(i32) #1

declare dso_local i32 @BD_GET(i64) #1

declare dso_local i32 @BD_STATUS_AND_LENGTH_SET(i32, i32) #1

declare dso_local i32 @BdBufferGet(i32, i32) #1

declare dso_local i64 @GetNextBdId(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
