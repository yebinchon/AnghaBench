; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_pre_mux_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_pre_mux_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32 }

@CHAN_INPUT_OPEN = common dso_local global i64 0, align 8
@CHAN_RBUF = common dso_local global i32 0, align 4
@CHAN_INPUT_WAIT_DRAIN = common dso_local global i64 0, align 8
@CHAN_OUTPUT_OPEN = common dso_local global i64 0, align 8
@CHAN_OUTPUT_WAIT_DRAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.TYPE_6__*, i32*, i32*)* @channel_pre_mux_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_pre_mux_client(%struct.ssh* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHAN_INPUT_OPEN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CHAN_RBUF, align 4
  %24 = call i64 @sshbuf_check_reserve(i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @FD_SET(i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %26, %19, %14, %4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CHAN_INPUT_WAIT_DRAIN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sshbuf_reset(i32 %41)
  %43 = load %struct.ssh*, %struct.ssh** %5, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = call i32 @chan_ibuf_empty(%struct.ssh* %43, %struct.TYPE_6__* %44)
  %46 = load %struct.ssh*, %struct.ssh** %5, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = call i32 @chan_rcvd_oclose(%struct.ssh* %46, %struct.TYPE_6__* %47)
  br label %49

49:                                               ; preds = %38, %32
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CHAN_OUTPUT_OPEN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CHAN_OUTPUT_WAIT_DRAIN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %55, %49
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @sshbuf_len(i32 %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @FD_SET(i32 %70, i32* %71)
  br label %84

73:                                               ; preds = %61
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CHAN_OUTPUT_WAIT_DRAIN, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.ssh*, %struct.ssh** %5, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = call i32 @chan_obuf_empty(%struct.ssh* %80, %struct.TYPE_6__* %81)
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %55
  ret void
}

declare dso_local i64 @sshbuf_check_reserve(i32, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @sshbuf_reset(i32) #1

declare dso_local i32 @chan_ibuf_empty(%struct.ssh*, %struct.TYPE_6__*) #1

declare dso_local i32 @chan_rcvd_oclose(%struct.ssh*, %struct.TYPE_6__*) #1

declare dso_local i64 @sshbuf_len(i32) #1

declare dso_local i32 @chan_obuf_empty(%struct.ssh*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
