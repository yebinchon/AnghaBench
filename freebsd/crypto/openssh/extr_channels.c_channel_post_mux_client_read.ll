; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_post_mux_client_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_post_mux_client_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64 (%struct.ssh*, %struct.TYPE_7__*)*, i32, i32, i64 }

@CHAN_INPUT_OPEN = common dso_local global i64 0, align 8
@CHAN_INPUT_WAIT_DRAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"channel %d: packet too big %u > %u\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"channel %d: mux_rcb failed\00", align 1
@CHANNEL_MUX_MAX_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.TYPE_7__*, i32*, i32*)* @channel_post_mux_client_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @channel_post_mux_client_read(%struct.ssh* %0, %struct.TYPE_7__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ssh*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @FD_ISSET(i32 %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %4
  br label %90

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHAN_INPUT_OPEN, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CHAN_INPUT_WAIT_DRAIN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %90

35:                                               ; preds = %28, %22
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %90

41:                                               ; preds = %35
  %42 = load %struct.ssh*, %struct.ssh** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = call i32 @read_mux(%struct.ssh* %42, %struct.TYPE_7__* %43, i32 4)
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %90

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sshbuf_ptr(i32 %50)
  %52 = call i32 @PEEK_U32(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 262144
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @debug2(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %58, i32 262144, i32 %59)
  %61 = load %struct.ssh*, %struct.ssh** %5, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = call i32 @chan_rcvd_oclose(%struct.ssh* %61, %struct.TYPE_7__* %62)
  br label %90

64:                                               ; preds = %47
  %65 = load %struct.ssh*, %struct.ssh** %5, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 4
  %69 = call i32 @read_mux(%struct.ssh* %65, %struct.TYPE_7__* %66, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 4
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %90

74:                                               ; preds = %64
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i64 (%struct.ssh*, %struct.TYPE_7__*)*, i64 (%struct.ssh*, %struct.TYPE_7__*)** %76, align 8
  %78 = load %struct.ssh*, %struct.ssh** %5, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = call i64 %77(%struct.ssh* %78, %struct.TYPE_7__* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.ssh*, %struct.ssh** %5, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = call i32 @chan_mark_dead(%struct.ssh* %87, %struct.TYPE_7__* %88)
  br label %90

90:                                               ; preds = %21, %34, %40, %46, %55, %73, %82, %74
  ret void
}

declare dso_local i32 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read_mux(%struct.ssh*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @PEEK_U32(i32) #1

declare dso_local i32 @sshbuf_ptr(i32) #1

declare dso_local i32 @debug2(i8*, i32, i32, i32) #1

declare dso_local i32 @chan_rcvd_oclose(%struct.ssh*, %struct.TYPE_7__*) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @chan_mark_dead(%struct.ssh*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
