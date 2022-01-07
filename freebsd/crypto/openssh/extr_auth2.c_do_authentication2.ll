; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_do_authentication2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_do_authentication2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@active_state = common dso_local global %struct.ssh* null, align 8
@dispatch_protocol_error = common dso_local global i32 0, align 4
@SSH2_MSG_SERVICE_REQUEST = common dso_local global i32 0, align 4
@input_service_request = common dso_local global i32 0, align 4
@DISPATCH_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_authentication2(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ssh*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.ssh*, %struct.ssh** @active_state, align 8
  store %struct.ssh* %4, %struct.ssh** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.ssh*, %struct.ssh** %3, align 8
  %7 = getelementptr inbounds %struct.ssh, %struct.ssh* %6, i32 0, i32 0
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %7, align 8
  %8 = load %struct.ssh*, %struct.ssh** %3, align 8
  %9 = call i32 @ssh_dispatch_init(%struct.ssh* %8, i32* @dispatch_protocol_error)
  %10 = load %struct.ssh*, %struct.ssh** %3, align 8
  %11 = load i32, i32* @SSH2_MSG_SERVICE_REQUEST, align 4
  %12 = call i32 @ssh_dispatch_set(%struct.ssh* %10, i32 %11, i32* @input_service_request)
  %13 = load %struct.ssh*, %struct.ssh** %3, align 8
  %14 = load i32, i32* @DISPATCH_BLOCK, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @ssh_dispatch_run_fatal(%struct.ssh* %13, i32 %14, i32* %16)
  %18 = load %struct.ssh*, %struct.ssh** %3, align 8
  %19 = getelementptr inbounds %struct.ssh, %struct.ssh* %18, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %19, align 8
  ret void
}

declare dso_local i32 @ssh_dispatch_init(%struct.ssh*, i32*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

declare dso_local i32 @ssh_dispatch_run_fatal(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
