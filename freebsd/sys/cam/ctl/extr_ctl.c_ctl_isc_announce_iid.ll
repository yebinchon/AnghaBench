; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_announce_iid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_isc_announce_iid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_port = type { i64, %struct.TYPE_8__*, %struct.ctl_softc* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ctl_softc = type { i64, i64, i64, i32 }
%union.ctl_ha_msg = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@CTL_HA_LINK_ONLINE = common dso_local global i64 0, align 8
@M_CTL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@CTL_MSG_IID_SYNC = common dso_local global i32 0, align 4
@CTL_HA_CHAN_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_isc_announce_iid(%struct.ctl_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_softc*, align 8
  %6 = alloca %union.ctl_ha_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ctl_port* %0, %struct.ctl_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %10 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %9, i32 0, i32 2
  %11 = load %struct.ctl_softc*, %struct.ctl_softc** %10, align 8
  store %struct.ctl_softc* %11, %struct.ctl_softc** %5, align 8
  %12 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ctl_softc*, %struct.ctl_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %2
  %20 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ctl_softc*, %struct.ctl_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.ctl_softc*, %struct.ctl_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CTL_HA_LINK_ONLINE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %19, %2
  br label %155

34:                                               ; preds = %27
  %35 = load %struct.ctl_softc*, %struct.ctl_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %35, i32 0, i32 3
  %37 = call i32 @mtx_lock(i32* %36)
  store i32 16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %38 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %39 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %34
  %48 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %49 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strlen(i32 %55)
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %47, %34
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @M_CTL, align 4
  %64 = load i32, i32* @M_NOWAIT, align 4
  %65 = call %union.ctl_ha_msg* @malloc(i32 %62, i32 %63, i32 %64)
  store %union.ctl_ha_msg* %65, %union.ctl_ha_msg** %6, align 8
  %66 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %67 = icmp eq %union.ctl_ha_msg* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.ctl_softc*, %struct.ctl_softc** %5, align 8
  %70 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %69, i32 0, i32 3
  %71 = call i32 @mtx_unlock(i32* %70)
  br label %155

72:                                               ; preds = %58
  %73 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %74 = bitcast %union.ctl_ha_msg* %73 to %struct.TYPE_9__*
  %75 = call i32 @bzero(%struct.TYPE_9__* %74, i32 16)
  %76 = load i32, i32* @CTL_MSG_IID_SYNC, align 4
  %77 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %78 = bitcast %union.ctl_ha_msg* %77 to %struct.TYPE_7__*
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 8
  %80 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %81 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %84 = bitcast %union.ctl_ha_msg* %83 to %struct.TYPE_7__*
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  %87 = load i32, i32* %4, align 4
  %88 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %89 = bitcast %union.ctl_ha_msg* %88 to %struct.TYPE_7__*
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 8
  %92 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %93 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %92, i32 0, i32 1
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %101 = bitcast %union.ctl_ha_msg* %100 to %struct.TYPE_9__*
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %105 = bitcast %union.ctl_ha_msg* %104 to %struct.TYPE_9__*
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %108 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %116 = bitcast %union.ctl_ha_msg* %115 to %struct.TYPE_9__*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 8
  %118 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %119 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %72
  %128 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %129 = bitcast %union.ctl_ha_msg* %128 to %struct.TYPE_9__*
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %133 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @strlcpy(i32 %131, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %127, %72
  %143 = load %struct.ctl_softc*, %struct.ctl_softc** %5, align 8
  %144 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %143, i32 0, i32 3
  %145 = call i32 @mtx_unlock(i32* %144)
  %146 = load i32, i32* @CTL_HA_CHAN_CTL, align 4
  %147 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %148 = bitcast %union.ctl_ha_msg* %147 to %struct.TYPE_9__*
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @M_NOWAIT, align 4
  %151 = call i32 @ctl_ha_msg_send(i32 %146, %struct.TYPE_9__* %148, i32 %149, i32 %150)
  %152 = load %union.ctl_ha_msg*, %union.ctl_ha_msg** %6, align 8
  %153 = load i32, i32* @M_CTL, align 4
  %154 = call i32 @free(%union.ctl_ha_msg* %152, i32 %153)
  br label %155

155:                                              ; preds = %142, %68, %33
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %union.ctl_ha_msg* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ctl_ha_msg_send(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @free(%union.ctl_ha_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
