; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cr_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cr_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, %struct.ctl_be_block_softc* }
%struct.ctl_be_block_io = type opaque
%struct.ctl_be_block_softc = type { i32 }
%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_be_block_io.0 = type { i32, i32, i32, i32, i32 (%struct.ctl_be_block_io.0*)*, %struct.ctl_be_block_lun*, %union.ctl_io* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@DEVSTAT_NO_DATA = common dso_local global i32 0, align 4
@DEVSTAT_TAG_ORDERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unhandled CDB type %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %union.ctl_io*)* @ctl_be_block_cr_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_cr_dispatch(%struct.ctl_be_block_lun* %0, %union.ctl_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca %struct.ctl_be_block_io.0*, align 8
  %6 = alloca %struct.ctl_be_block_softc*, align 8
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %union.ctl_io* %1, %union.ctl_io** %4, align 8
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %8, i32 0, i32 1
  %10 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %9, align 8
  store %struct.ctl_be_block_softc* %10, %struct.ctl_be_block_softc** %6, align 8
  %11 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %6, align 8
  %12 = call %struct.ctl_be_block_io.0* @ctl_alloc_beio(%struct.ctl_be_block_softc* %11)
  store %struct.ctl_be_block_io.0* %12, %struct.ctl_be_block_io.0** %5, align 8
  %13 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %14 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %15 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %14, i32 0, i32 6
  store %union.ctl_io* %13, %union.ctl_io** %15, align 8
  %16 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %17 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %18 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %17, i32 0, i32 5
  store %struct.ctl_be_block_lun* %16, %struct.ctl_be_block_lun** %18, align 8
  %19 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %20 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %19, i32 0, i32 4
  store i32 (%struct.ctl_be_block_io.0*)* @ctl_be_block_cr_done, i32 (%struct.ctl_be_block_io.0*)** %20, align 8
  %21 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %22 = bitcast %struct.ctl_be_block_io.0* %21 to i8*
  %23 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %24 = call %struct.TYPE_4__* @PRIV(%union.ctl_io* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %27 = bitcast %union.ctl_io* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %59 [
    i32 128, label %32
  ]

32:                                               ; preds = %2
  %33 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %34 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 8
  %35 = load i32, i32* @DEVSTAT_NO_DATA, align 4
  %36 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %37 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @DEVSTAT_TAG_ORDERED, align 4
  %39 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %40 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %42 = getelementptr inbounds %struct.ctl_be_block_io.0, %struct.ctl_be_block_io.0* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %44 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %43, i32 0, i32 0
  %45 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)** %44, align 8
  %46 = icmp ne i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %49 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %48, i32 0, i32 0
  %50 = load i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)*, i32 (%struct.ctl_be_block_lun*, %struct.ctl_be_block_io*)** %49, align 8
  %51 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %52 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %53 = bitcast %struct.ctl_be_block_io.0* %52 to %struct.ctl_be_block_io*
  %54 = call i32 %50(%struct.ctl_be_block_lun* %51, %struct.ctl_be_block_io* %53)
  br label %58

55:                                               ; preds = %32
  %56 = load %struct.ctl_be_block_io.0*, %struct.ctl_be_block_io.0** %5, align 8
  %57 = call i32 @ctl_be_block_cr_done(%struct.ctl_be_block_io.0* %56)
  br label %58

58:                                               ; preds = %55, %47
  br label %67

59:                                               ; preds = %2
  %60 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %61 = bitcast %union.ctl_io* %60 to %struct.TYPE_3__*
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %59, %58
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.ctl_be_block_io.0* @ctl_alloc_beio(%struct.ctl_be_block_softc*) #1

declare dso_local i32 @ctl_be_block_cr_done(%struct.ctl_be_block_io.0*) #1

declare dso_local %struct.TYPE_4__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
