; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_output_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_channel_output_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.ssh_channels* }
%struct.ssh_channels = type { i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, i32, i64, i64, i32 }

@SSH_CHANNEL_OPEN = common dso_local global i64 0, align 8
@CHAN_CLOSE_SENT = common dso_local global i32 0, align 4
@CHAN_CLOSE_RCVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"channel %d: will not send data after close\00", align 1
@CHAN_INPUT_OPEN = common dso_local global i64 0, align 8
@CHAN_INPUT_WAIT_DRAIN = common dso_local global i64 0, align 8
@CHAN_EOF_SENT = common dso_local global i32 0, align 4
@CHAN_EXTENDED_READ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @channel_output_poll(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca %struct.ssh_channels*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %6 = load %struct.ssh*, %struct.ssh** %2, align 8
  %7 = getelementptr inbounds %struct.ssh, %struct.ssh* %6, i32 0, i32 0
  %8 = load %struct.ssh_channels*, %struct.ssh_channels** %7, align 8
  store %struct.ssh_channels* %8, %struct.ssh_channels** %3, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %80, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.ssh_channels*, %struct.ssh_channels** %3, align 8
  %12 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %9
  %16 = load %struct.ssh_channels*, %struct.ssh_channels** %3, align 8
  %17 = getelementptr inbounds %struct.ssh_channels, %struct.ssh_channels* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %80

25:                                               ; preds = %15
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SSH_CHANNEL_OPEN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %80

32:                                               ; preds = %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CHAN_CLOSE_SENT, align 4
  %37 = load i32, i32* @CHAN_CLOSE_RCVD, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @debug3(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %80

46:                                               ; preds = %32
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CHAN_INPUT_OPEN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CHAN_INPUT_WAIT_DRAIN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %46
  %59 = load %struct.ssh*, %struct.ssh** %2, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = call i32 @channel_output_poll_input_open(%struct.ssh* %59, %struct.TYPE_4__* %60)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CHAN_EOF_SENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CHAN_EXTENDED_READ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.ssh*, %struct.ssh** %2, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = call i32 @channel_output_poll_extended_read(%struct.ssh* %76, %struct.TYPE_4__* %77)
  br label %79

79:                                               ; preds = %75, %69, %62
  br label %80

80:                                               ; preds = %79, %41, %31, %24
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %9

83:                                               ; preds = %9
  ret void
}

declare dso_local i32 @debug3(i8*, i32) #1

declare dso_local i32 @channel_output_poll_input_open(%struct.ssh*, %struct.TYPE_4__*) #1

declare dso_local i32 @channel_output_poll_extended_read(%struct.ssh*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
