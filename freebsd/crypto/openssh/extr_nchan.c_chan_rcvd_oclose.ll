; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_nchan.c_chan_rcvd_oclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_nchan.c_chan_rcvd_oclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"channel %d: rcvd close\00", align 1
@CHAN_LOCAL = common dso_local global i32 0, align 4
@CHAN_CLOSE_RCVD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"channel %d: protocol error: close rcvd twice\00", align 1
@SSH_CHANNEL_LARVAL = common dso_local global i64 0, align 8
@CHAN_OUTPUT_CLOSED = common dso_local global i32 0, align 4
@CHAN_INPUT_CLOSED = common dso_local global i32 0, align 4
@CHAN_OUTPUT_WAIT_DRAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chan_rcvd_oclose(%struct.ssh* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @debug2(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CHAN_LOCAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CHAN_CLOSE_RCVD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* @CHAN_CLOSE_RCVD, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SSH_CHANNEL_LARVAL, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = load i32, i32* @CHAN_OUTPUT_CLOSED, align 4
  %42 = call i32 @chan_set_ostate(%struct.TYPE_7__* %40, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = load i32, i32* @CHAN_INPUT_CLOSED, align 4
  %45 = call i32 @chan_set_istate(%struct.TYPE_7__* %43, i32 %44)
  br label %80

46:                                               ; preds = %33
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %54 [
    i32 128, label %50
  ]

50:                                               ; preds = %46
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = load i32, i32* @CHAN_OUTPUT_WAIT_DRAIN, align 4
  %53 = call i32 @chan_set_ostate(%struct.TYPE_7__* %51, i32 %52)
  br label %54

54:                                               ; preds = %46, %50
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %80 [
    i32 130, label %58
    i32 129, label %65
  ]

58:                                               ; preds = %54
  %59 = load %struct.ssh*, %struct.ssh** %3, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32 @chan_shutdown_read(%struct.ssh* %59, %struct.TYPE_7__* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = load i32, i32* @CHAN_INPUT_CLOSED, align 4
  %64 = call i32 @chan_set_istate(%struct.TYPE_7__* %62, i32 %63)
  br label %80

65:                                               ; preds = %54
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CHAN_LOCAL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %65
  %73 = load %struct.ssh*, %struct.ssh** %3, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = call i32 @chan_send_eof2(%struct.ssh* %73, %struct.TYPE_7__* %74)
  br label %76

76:                                               ; preds = %72, %65
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = load i32, i32* @CHAN_INPUT_CLOSED, align 4
  %79 = call i32 @chan_set_istate(%struct.TYPE_7__* %77, i32 %78)
  br label %80

80:                                               ; preds = %39, %54, %76, %58
  ret void
}

declare dso_local i32 @debug2(i8*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @chan_set_ostate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @chan_set_istate(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @chan_shutdown_read(%struct.ssh*, %struct.TYPE_7__*) #1

declare dso_local i32 @chan_send_eof2(%struct.ssh*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
