; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdhc.c_kexdh_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexdhc.c_kexdh_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i32, i32, i32* }

@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"sending SSH2_MSG_KEXDH_INIT\00", align 1
@SSH2_MSG_KEXDH_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"expecting SSH2_MSG_KEXDH_REPLY\00", align 1
@SSH2_MSG_KEXDH_REPLY = common dso_local global i32 0, align 4
@input_kex_dh = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexdh_client(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca %struct.kex*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %6 = load %struct.ssh*, %struct.ssh** %2, align 8
  %7 = getelementptr inbounds %struct.ssh, %struct.ssh* %6, i32 0, i32 0
  %8 = load %struct.kex*, %struct.kex** %7, align 8
  store %struct.kex* %8, %struct.kex** %3, align 8
  %9 = load %struct.kex*, %struct.kex** %3, align 8
  %10 = getelementptr inbounds %struct.kex, %struct.kex* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %28 [
    i32 128, label %12
    i32 132, label %16
    i32 131, label %16
    i32 130, label %20
    i32 129, label %24
  ]

12:                                               ; preds = %1
  %13 = call i32* (...) @dh_new_group1()
  %14 = load %struct.kex*, %struct.kex** %3, align 8
  %15 = getelementptr inbounds %struct.kex, %struct.kex* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  br label %30

16:                                               ; preds = %1, %1
  %17 = call i32* (...) @dh_new_group14()
  %18 = load %struct.kex*, %struct.kex** %3, align 8
  %19 = getelementptr inbounds %struct.kex, %struct.kex* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  br label %30

20:                                               ; preds = %1
  %21 = call i32* (...) @dh_new_group16()
  %22 = load %struct.kex*, %struct.kex** %3, align 8
  %23 = getelementptr inbounds %struct.kex, %struct.kex* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  br label %30

24:                                               ; preds = %1
  %25 = call i32* (...) @dh_new_group18()
  %26 = load %struct.kex*, %struct.kex** %3, align 8
  %27 = getelementptr inbounds %struct.kex, %struct.kex* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  br label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %29, i32* %4, align 4
  br label %73

30:                                               ; preds = %24, %20, %16, %12
  %31 = load %struct.kex*, %struct.kex** %3, align 8
  %32 = getelementptr inbounds %struct.kex, %struct.kex* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %36, i32* %4, align 4
  br label %73

37:                                               ; preds = %30
  %38 = call i32 @debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.kex*, %struct.kex** %3, align 8
  %40 = getelementptr inbounds %struct.kex, %struct.kex* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.kex*, %struct.kex** %3, align 8
  %43 = getelementptr inbounds %struct.kex, %struct.kex* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 8
  %46 = call i32 @dh_gen_key(i32* %41, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %73

49:                                               ; preds = %37
  %50 = load %struct.kex*, %struct.kex** %3, align 8
  %51 = getelementptr inbounds %struct.kex, %struct.kex* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @DH_get0_key(i32* %52, i32** %5, i32* null)
  %54 = load %struct.ssh*, %struct.ssh** %2, align 8
  %55 = load i32, i32* @SSH2_MSG_KEXDH_INIT, align 4
  %56 = call i32 @sshpkt_start(%struct.ssh* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load %struct.ssh*, %struct.ssh** %2, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @sshpkt_put_bignum2(%struct.ssh* %59, i32* %60)
  store i32 %61, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load %struct.ssh*, %struct.ssh** %2, align 8
  %65 = call i32 @sshpkt_send(%struct.ssh* %64)
  store i32 %65, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %58, %49
  br label %73

68:                                               ; preds = %63
  %69 = call i32 @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.ssh*, %struct.ssh** %2, align 8
  %71 = load i32, i32* @SSH2_MSG_KEXDH_REPLY, align 4
  %72 = call i32 @ssh_dispatch_set(%struct.ssh* %70, i32 %71, i32* @input_kex_dh)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %67, %48, %35, %28
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32* @dh_new_group1(...) #1

declare dso_local i32* @dh_new_group14(...) #1

declare dso_local i32* @dh_new_group16(...) #1

declare dso_local i32* @dh_new_group18(...) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @dh_gen_key(i32*, i32) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_bignum2(%struct.ssh*, i32*) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
