; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_send_doorbell_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-srio.c_cvmx_srio_send_doorbell_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i8* }
%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i64, i64 }

@CVMX_SRIO_DOORBELL_BUSY = common dso_local global i32 0, align 4
@__cvmx_srio_state = common dso_local global %struct.TYPE_14__* null, align 8
@CVMX_SRIO_INITIALIZE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SRIO%d: Send doorbell failed\0A\00", align 1
@CVMX_SRIO_DOORBELL_TMOUT = common dso_local global i32 0, align 4
@CVMX_SRIO_DOORBELL_ERROR = common dso_local global i32 0, align 4
@CVMX_SRIO_DOORBELL_RETRY = common dso_local global i32 0, align 4
@CVMX_SRIO_DOORBELL_DONE = common dso_local global i32 0, align 4
@CVMX_SRIO_DOORBELL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_srio_send_doorbell_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @CVMX_SRIOX_TX_BELL(i32 %8)
  %10 = call i8* @cvmx_read_csr(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @CVMX_SRIO_DOORBELL_BUSY, align 4
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @CVMX_SRIOX_INT_REG(i32 %19)
  %21 = call i8* @cvmx_read_csr(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @CVMX_SRIOX_INT_REG(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @cvmx_write_csr(i32 %35, i8* %37)
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %18
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @__cvmx_srio_state, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CVMX_SRIO_INITIALIZE_DEBUG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %43
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @CVMX_SRIOX_TX_BELL_INFO(i32 %57)
  %59 = call i8* @cvmx_read_csr(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @CVMX_SRIO_DOORBELL_TMOUT, align 4
  store i32 %66, i32* %2, align 4
  br label %91

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @CVMX_SRIO_DOORBELL_ERROR, align 4
  store i32 %73, i32* %2, align 4
  br label %91

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @CVMX_SRIO_DOORBELL_RETRY, align 4
  store i32 %80, i32* %2, align 4
  br label %91

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %18
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @CVMX_SRIO_DOORBELL_DONE, align 4
  store i32 %88, i32* %2, align 4
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @CVMX_SRIO_DOORBELL_NONE, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %87, %79, %72, %65, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SRIOX_TX_BELL(i32) #1

declare dso_local i32 @CVMX_SRIOX_INT_REG(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @CVMX_SRIOX_TX_BELL_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
