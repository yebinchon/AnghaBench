; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_rdynamic_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_channels.c_rdynamic_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SSH_CHANNEL_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*, %struct.TYPE_6__*)* @rdynamic_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdynamic_close(%struct.ssh* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %5 = load i32, i32* @SSH_CHANNEL_OPEN, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load %struct.ssh*, %struct.ssh** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = call i32 @chan_read_failed(%struct.ssh* %8, %struct.TYPE_6__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sshbuf_reset(i32 %13)
  %15 = load %struct.ssh*, %struct.ssh** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call i32 @chan_ibuf_empty(%struct.ssh* %15, %struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sshbuf_reset(i32 %20)
  %22 = load %struct.ssh*, %struct.ssh** %3, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = call i32 @chan_write_failed(%struct.ssh* %22, %struct.TYPE_6__* %23)
  ret void
}

declare dso_local i32 @chan_read_failed(%struct.ssh*, %struct.TYPE_6__*) #1

declare dso_local i32 @sshbuf_reset(i32) #1

declare dso_local i32 @chan_ibuf_empty(%struct.ssh*, %struct.TYPE_6__*) #1

declare dso_local i32 @chan_write_failed(%struct.ssh*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
