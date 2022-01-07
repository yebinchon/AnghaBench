; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_sshpkt_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_sshpkt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"packet_start[%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshpkt_start(%struct.ssh* %0, i32 %1) #0 {
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 16
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @DBG(i32 %7)
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 24)
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 23
  store i32 %11, i32* %12, align 4
  %13 = load %struct.ssh*, %struct.ssh** %3, align 8
  %14 = getelementptr inbounds %struct.ssh, %struct.ssh* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sshbuf_reset(i32 %17)
  %19 = load %struct.ssh*, %struct.ssh** %3, align 8
  %20 = getelementptr inbounds %struct.ssh, %struct.ssh* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %25 = call i32 @sshbuf_put(i32 %23, i32* %24, i32 24)
  ret i32 %25
}

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @debug(i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sshbuf_reset(i32) #1

declare dso_local i32 @sshbuf_put(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
