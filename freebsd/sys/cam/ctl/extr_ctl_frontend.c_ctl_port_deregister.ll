; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend.c_ctl_port_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_frontend.c_ctl_port_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_port = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i64, %struct.ctl_softc* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.ctl_softc = type { i32, i32**, i32, i32, i32 }
%struct.ctl_io_pool = type { i32 }

@ctl_port = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@fe_links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_port_deregister(%struct.ctl_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_port*, align 8
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %struct.ctl_io_pool*, align 8
  %6 = alloca i32, align 4
  store %struct.ctl_port* %0, %struct.ctl_port** %3, align 8
  %7 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %7, i32 0, i32 10
  %9 = load %struct.ctl_softc*, %struct.ctl_softc** %8, align 8
  store %struct.ctl_softc* %9, %struct.ctl_softc** %4, align 8
  %10 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %11 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %10, i32 0, i32 9
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.ctl_io_pool*
  store %struct.ctl_io_pool* %13, %struct.ctl_io_pool** %5, align 8
  %14 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %15 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %117

19:                                               ; preds = %1
  %20 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %23, i32 0, i32 4
  %25 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %26 = load i32, i32* @ctl_port, align 4
  %27 = load i32, i32* @links, align 4
  %28 = call i32 @STAILQ_REMOVE(i32* %24, %struct.ctl_port* %25, i32 %26, i32 %27)
  %29 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %29, i32 0, i32 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %34 = load i32, i32* @ctl_port, align 4
  %35 = load i32, i32* @fe_links, align 4
  %36 = call i32 @STAILQ_REMOVE(i32* %32, %struct.ctl_port* %33, i32 %34, i32 %35)
  %37 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %38 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %45 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ctl_clear_mask(i32 %43, i32 %46)
  %48 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %49 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %50, i64 %54
  store i32* null, i32** %55, align 8
  %56 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %56, i32 0, i32 0
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load %struct.ctl_io_pool*, %struct.ctl_io_pool** %5, align 8
  %60 = call i32 @ctl_pool_free(%struct.ctl_io_pool* %59)
  %61 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %62 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @nvlist_destroy(i32 %63)
  %65 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %66 = call i32 @ctl_lun_map_deinit(%struct.ctl_port* %65)
  %67 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %68 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %67, i32 0, i32 6
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* @M_CTL, align 4
  %71 = call i32 @free(%struct.TYPE_4__* %69, i32 %70)
  %72 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %73 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %72, i32 0, i32 6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %73, align 8
  %74 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %75 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %74, i32 0, i32 5
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* @M_CTL, align 4
  %78 = call i32 @free(%struct.TYPE_4__* %76, i32 %77)
  %79 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %80 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %79, i32 0, i32 5
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %80, align 8
  %81 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %82 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %81, i32 0, i32 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* @M_CTL, align 4
  %85 = call i32 @free(%struct.TYPE_4__* %83, i32 %84)
  %86 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %87 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %86, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %87, align 8
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %105, %19
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %91 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %88
  %95 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %96 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %95, i32 0, i32 3
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* @M_CTL, align 4
  %104 = call i32 @free(%struct.TYPE_4__* %102, i32 %103)
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %88

108:                                              ; preds = %88
  %109 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %110 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %109, i32 0, i32 3
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* @M_CTL, align 4
  %113 = call i32 @free(%struct.TYPE_4__* %111, i32 %112)
  %114 = load %struct.ctl_port*, %struct.ctl_port** %3, align 8
  %115 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %114, i32 0, i32 2
  %116 = call i32 @mtx_destroy(i32* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %108, %18
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.ctl_port*, i32, i32) #1

declare dso_local i32 @ctl_clear_mask(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_pool_free(%struct.ctl_io_pool*) #1

declare dso_local i32 @nvlist_destroy(i32) #1

declare dso_local i32 @ctl_lun_map_deinit(%struct.ctl_port*) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
