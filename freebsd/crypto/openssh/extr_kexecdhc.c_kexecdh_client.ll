; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdhc.c_kexecdh_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexecdhc.c_kexecdh_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i32*, i32*, i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH2_MSG_KEX_ECDH_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"sending SSH2_MSG_KEX_ECDH_INIT\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"expecting SSH2_MSG_KEX_ECDH_REPLY\00", align 1
@SSH2_MSG_KEX_ECDH_REPLY = common dso_local global i32 0, align 4
@input_kex_ecdh_reply = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexecdh_client(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca %struct.kex*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %8 = load %struct.ssh*, %struct.ssh** %2, align 8
  %9 = getelementptr inbounds %struct.ssh, %struct.ssh* %8, i32 0, i32 0
  %10 = load %struct.kex*, %struct.kex** %9, align 8
  store %struct.kex* %10, %struct.kex** %3, align 8
  store i32* null, i32** %4, align 8
  %11 = load %struct.kex*, %struct.kex** %3, align 8
  %12 = getelementptr inbounds %struct.kex, %struct.kex* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @EC_KEY_new_by_curve_name(i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %17, i32* %7, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @EC_KEY_generate_key(i32* %19)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %23, i32* %7, align 4
  br label %56

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @EC_KEY_get0_group(i32* %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32* @EC_KEY_get0_public_key(i32* %27)
  store i32* %28, i32** %6, align 8
  %29 = load %struct.ssh*, %struct.ssh** %2, align 8
  %30 = load i32, i32* @SSH2_MSG_KEX_ECDH_INIT, align 4
  %31 = call i32 @sshpkt_start(%struct.ssh* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %24
  %34 = load %struct.ssh*, %struct.ssh** %2, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @sshpkt_put_ec(%struct.ssh* %34, i32* %35, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.ssh*, %struct.ssh** %2, align 8
  %41 = call i32 @sshpkt_send(%struct.ssh* %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %33, %24
  br label %56

44:                                               ; preds = %39
  %45 = call i32 @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.kex*, %struct.kex** %3, align 8
  %48 = getelementptr inbounds %struct.kex, %struct.kex* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.kex*, %struct.kex** %3, align 8
  %51 = getelementptr inbounds %struct.kex, %struct.kex* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  store i32* null, i32** %4, align 8
  %52 = call i32 @debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.ssh*, %struct.ssh** %2, align 8
  %54 = load i32, i32* @SSH2_MSG_KEX_ECDH_REPLY, align 4
  %55 = call i32 @ssh_dispatch_set(%struct.ssh* %53, i32 %54, i32* @input_kex_ecdh_reply)
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %44, %43, %22, %16
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @EC_KEY_free(i32* %57)
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i32 @EC_KEY_generate_key(i32*) #1

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_ec(%struct.ssh*, i32*, i32*) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
