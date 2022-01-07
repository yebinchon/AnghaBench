; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_receive_doorbell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_receive_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@CVMX_SRIO_DOORBELL_NONE = common dso_local global i32 0, align 4
@__cvmx_srio_state = common dso_local global %struct.TYPE_10__* null, align 8
@CVMX_SRIO_INITIALIZE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"SRIO%d: Receive doorbell sequence=0x%x, srcid=0x%x, priority=%d, data=0x%x\0A\00", align 1
@CVMX_SRIO_DOORBELL_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_srio_receive_doorbell(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @CVMX_SRIOX_RX_BELL_SEQ(i32 %18)
  %20 = call i8* @cvmx_read_csr(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* @CVMX_SRIO_DOORBELL_NONE, align 4
  store i32 %27, i32* %8, align 4
  br label %83

28:                                               ; preds = %7
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @CVMX_SRIOX_RX_BELL(i32 %29)
  %31 = call i8* @cvmx_read_csr(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %14, align 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %15, align 8
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @__cvmx_srio_state, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %28
  %67 = load i32, i32* %9, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %66, %28
  %82 = load i32, i32* @CVMX_SRIO_DOORBELL_DONE, align 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %26
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SRIOX_RX_BELL_SEQ(i32) #1

declare dso_local i32 @CVMX_SRIOX_RX_BELL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
