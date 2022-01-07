; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_cw_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_block_lun = type { %struct.ctl_be_block_softc* }
%struct.ctl_be_block_softc = type { i32 }
%union.ctl_io = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.ctl_be_block_io = type { i32, i32, %struct.ctl_be_block_lun*, %union.ctl_io* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"entered\0A\00", align 1
@ctl_be_block_cw_done = common dso_local global i32 0, align 4
@DEVSTAT_TAG_ORDERED = common dso_local global i32 0, align 4
@DEVSTAT_TAG_HEAD = common dso_local global i32 0, align 4
@DEVSTAT_TAG_SIMPLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unhandled CDB type %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_block_lun*, %union.ctl_io*)* @ctl_be_block_cw_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_cw_dispatch(%struct.ctl_be_block_lun* %0, %union.ctl_io* %1) #0 {
  %3 = alloca %struct.ctl_be_block_lun*, align 8
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca %struct.ctl_be_block_io*, align 8
  %6 = alloca %struct.ctl_be_block_softc*, align 8
  store %struct.ctl_be_block_lun* %0, %struct.ctl_be_block_lun** %3, align 8
  store %union.ctl_io* %1, %union.ctl_io** %4, align 8
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_be_block_lun, %struct.ctl_be_block_lun* %8, i32 0, i32 0
  %10 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %9, align 8
  store %struct.ctl_be_block_softc* %10, %struct.ctl_be_block_softc** %6, align 8
  %11 = load %struct.ctl_be_block_softc*, %struct.ctl_be_block_softc** %6, align 8
  %12 = call %struct.ctl_be_block_io* @ctl_alloc_beio(%struct.ctl_be_block_softc* %11)
  store %struct.ctl_be_block_io* %12, %struct.ctl_be_block_io** %5, align 8
  %13 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %14 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %5, align 8
  %15 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %14, i32 0, i32 3
  store %union.ctl_io* %13, %union.ctl_io** %15, align 8
  %16 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %17 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %5, align 8
  %18 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %17, i32 0, i32 2
  store %struct.ctl_be_block_lun* %16, %struct.ctl_be_block_lun** %18, align 8
  %19 = load i32, i32* @ctl_be_block_cw_done, align 4
  %20 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %5, align 8
  %21 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %23 = bitcast %union.ctl_io* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %35 [
    i32 135, label %26
    i32 136, label %30
    i32 133, label %34
    i32 134, label %34
    i32 137, label %34
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @DEVSTAT_TAG_ORDERED, align 4
  %28 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %5, align 8
  %29 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @DEVSTAT_TAG_HEAD, align 4
  %32 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %5, align 8
  %33 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %39

34:                                               ; preds = %2, %2, %2
  br label %35

35:                                               ; preds = %2, %34
  %36 = load i32, i32* @DEVSTAT_TAG_SIMPLE, align 4
  %37 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %5, align 8
  %38 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %30, %26
  %40 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %5, align 8
  %41 = bitcast %struct.ctl_be_block_io* %40 to i8*
  %42 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %43 = call %struct.TYPE_4__* @PRIV(%union.ctl_io* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %46 = bitcast %union.ctl_io* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %63 [
    i32 132, label %51
    i32 131, label %51
    i32 129, label %55
    i32 128, label %55
    i32 130, label %59
  ]

51:                                               ; preds = %39, %39
  %52 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %53 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %54 = call i32 @ctl_be_block_cw_dispatch_sync(%struct.ctl_be_block_lun* %52, %union.ctl_io* %53)
  br label %71

55:                                               ; preds = %39, %39
  %56 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %57 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %58 = call i32 @ctl_be_block_cw_dispatch_ws(%struct.ctl_be_block_lun* %56, %union.ctl_io* %57)
  br label %71

59:                                               ; preds = %39
  %60 = load %struct.ctl_be_block_lun*, %struct.ctl_be_block_lun** %3, align 8
  %61 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %62 = call i32 @ctl_be_block_cw_dispatch_unmap(%struct.ctl_be_block_lun* %60, %union.ctl_io* %61)
  br label %71

63:                                               ; preds = %39
  %64 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %65 = bitcast %union.ctl_io* %64 to %struct.TYPE_3__*
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %63, %59, %55, %51
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local %struct.ctl_be_block_io* @ctl_alloc_beio(%struct.ctl_be_block_softc*) #1

declare dso_local %struct.TYPE_4__* @PRIV(%union.ctl_io*) #1

declare dso_local i32 @ctl_be_block_cw_dispatch_sync(%struct.ctl_be_block_lun*, %union.ctl_io*) #1

declare dso_local i32 @ctl_be_block_cw_dispatch_ws(%struct.ctl_be_block_lun*, %union.ctl_io*) #1

declare dso_local i32 @ctl_be_block_cw_dispatch_unmap(%struct.ctl_be_block_lun*, %union.ctl_io*) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
