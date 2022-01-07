; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c_ssh_set_verify_host_key_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh_api.c_ssh_set_verify_host_key_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sshkey*, %struct.ssh*)* }
%struct.sshkey = type opaque
%struct.sshkey.0 = type opaque

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_set_verify_host_key_callback(%struct.ssh* %0, i32 (%struct.sshkey.0*, %struct.ssh*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i32 (%struct.sshkey.0*, %struct.ssh*)*, align 8
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i32 (%struct.sshkey.0*, %struct.ssh*)* %1, i32 (%struct.sshkey.0*, %struct.ssh*)** %5, align 8
  %6 = load i32 (%struct.sshkey.0*, %struct.ssh*)*, i32 (%struct.sshkey.0*, %struct.ssh*)** %5, align 8
  %7 = icmp eq i32 (%struct.sshkey.0*, %struct.ssh*)* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.ssh*, %struct.ssh** %4, align 8
  %10 = getelementptr inbounds %struct.ssh, %struct.ssh* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %2
  %14 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %14, i32* %3, align 4
  br label %22

15:                                               ; preds = %8
  %16 = load i32 (%struct.sshkey.0*, %struct.ssh*)*, i32 (%struct.sshkey.0*, %struct.ssh*)** %5, align 8
  %17 = bitcast i32 (%struct.sshkey.0*, %struct.ssh*)* %16 to i32 (%struct.sshkey*, %struct.ssh*)*
  %18 = load %struct.ssh*, %struct.ssh** %4, align 8
  %19 = getelementptr inbounds %struct.ssh, %struct.ssh* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 (%struct.sshkey*, %struct.ssh*)* %17, i32 (%struct.sshkey*, %struct.ssh*)** %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
