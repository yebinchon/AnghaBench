; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_debug_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_ibnetdisc.c_debug_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@IB_PORT_LINK_WIDTH_ACTIVE_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_ACTIVE_F = common dso_local global i32 0, align 4
@IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F = common dso_local global i32 0, align 4
@IB_NODE_SWITCH = common dso_local global i64 0, align 8
@IB_PORT_CAPMASK_F = common dso_local global i32 0, align 4
@IB_PORT_CAP_HAS_EXT_SPEEDS = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_EXT_ACTIVE_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"portid %s portnum %d: base lid %d state %d physstate %d %s %s %s %s\0A\00", align 1
@IB_PORT_STATE_F = common dso_local global i32 0, align 4
@IB_PORT_PHYS_STATE_F = common dso_local global i32 0, align 4
@FDR10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"FDR10\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*)* @debug_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_port(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @IB_PORT_LINK_WIDTH_ACTIVE_F, align 4
  %17 = call i32 @mad_get_field(i32* %15, i32 0, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @IB_PORT_LINK_SPEED_ACTIVE_F, align 4
  %22 = call i32 @mad_get_field(i32* %20, i32 0, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @IB_MLNX_EXT_PORT_LINK_SPEED_ACTIVE_F, align 4
  %27 = call i32 @mad_get_field(i32* %25, i32 0, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IB_NODE_SWITCH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %40, i64 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32* %43, i32** %11, align 8
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = bitcast i32** %46 to i32*
  store i32* %47, i32** %11, align 8
  br label %48

48:                                               ; preds = %44, %35
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @IB_PORT_CAPMASK_F, align 4
  %51 = call i32 @mad_get_field(i32* %49, i32 0, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @IB_PORT_CAP_HAS_EXT_SPEEDS, align 4
  %54 = call i32 @CL_NTOH32(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_ACTIVE_F, align 4
  %62 = call i32 @mad_get_field(i32* %60, i32 0, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %64

63:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @portid2str(i32* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @IB_PORT_STATE_F, align 4
  %77 = call i32 @mad_get_field(i32* %75, i32 0, i32 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @IB_PORT_PHYS_STATE_F, align 4
  %82 = call i32 @mad_get_field(i32* %80, i32 0, i32 %81)
  %83 = load i32, i32* @IB_PORT_LINK_WIDTH_ACTIVE_F, align 4
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %85 = call i32 @mad_dump_val(i32 %83, i8* %84, i32 64, i32* %7)
  %86 = load i32, i32* @IB_PORT_LINK_SPEED_ACTIVE_F, align 4
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %88 = call i32 @mad_dump_val(i32 %86, i8* %87, i32 64, i32* %8)
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @FDR10, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %95 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_ACTIVE_F, align 4
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %97 = call i32 @mad_dump_val(i32 %95, i8* %96, i32 64, i32* %10)
  %98 = call i32 @IBND_DEBUG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %77, i32 %82, i32 %85, i32 %88, i8* %94, i32 %97)
  ret void
}

declare dso_local i32 @mad_get_field(i32*, i32, i32) #1

declare dso_local i32 @CL_NTOH32(i32) #1

declare dso_local i32 @IBND_DEBUG(i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @portid2str(i32*) #1

declare dso_local i32 @mad_dump_val(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
