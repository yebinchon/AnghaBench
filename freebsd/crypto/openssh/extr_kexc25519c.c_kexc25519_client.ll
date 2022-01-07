; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519c.c_kexc25519_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexc25519c.c_kexc25519_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i32, i32 }

@SSH2_MSG_KEX_ECDH_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"expecting SSH2_MSG_KEX_ECDH_REPLY\00", align 1
@SSH2_MSG_KEX_ECDH_REPLY = common dso_local global i32 0, align 4
@input_kex_c25519_reply = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexc25519_client(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca %struct.kex*, align 8
  %5 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %6 = load %struct.ssh*, %struct.ssh** %3, align 8
  %7 = getelementptr inbounds %struct.ssh, %struct.ssh* %6, i32 0, i32 0
  %8 = load %struct.kex*, %struct.kex** %7, align 8
  store %struct.kex* %8, %struct.kex** %4, align 8
  %9 = load %struct.kex*, %struct.kex** %4, align 8
  %10 = getelementptr inbounds %struct.kex, %struct.kex* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kex*, %struct.kex** %4, align 8
  %13 = getelementptr inbounds %struct.kex, %struct.kex* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kexc25519_keygen(i32 %11, i32 %14)
  %16 = load %struct.ssh*, %struct.ssh** %3, align 8
  %17 = load i32, i32* @SSH2_MSG_KEX_ECDH_INIT, align 4
  %18 = call i32 @sshpkt_start(%struct.ssh* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load %struct.ssh*, %struct.ssh** %3, align 8
  %22 = load %struct.kex*, %struct.kex** %4, align 8
  %23 = getelementptr inbounds %struct.kex, %struct.kex* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sshpkt_put_string(%struct.ssh* %21, i32 %24, i32 4)
  store i32 %25, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load %struct.ssh*, %struct.ssh** %3, align 8
  %29 = call i32 @sshpkt_send(%struct.ssh* %28)
  store i32 %29, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %20, %1
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %27
  %34 = call i32 @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ssh*, %struct.ssh** %3, align 8
  %36 = load i32, i32* @SSH2_MSG_KEX_ECDH_REPLY, align 4
  %37 = call i32 @ssh_dispatch_set(%struct.ssh* %35, i32 %36, i32* @input_kex_c25519_reply)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @kexc25519_keygen(i32, i32) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_string(%struct.ssh*, i32, i32) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
