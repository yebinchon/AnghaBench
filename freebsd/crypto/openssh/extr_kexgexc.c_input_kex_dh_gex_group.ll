; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexc.c_input_kex_dh_gex_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexc.c_input_kex_dh_gex_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i64, i64, i32, i32* }

@.str = private unnamed_addr constant [30 x i8] c"got SSH2_MSG_KEX_DH_GEX_GROUP\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_DH_GEX_OUT_OF_RANGE = common dso_local global i32 0, align 4
@SSH2_MSG_KEX_DH_GEX_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SSH2_MSG_KEX_DH_GEX_INIT sent\00", align 1
@SSH2_MSG_KEX_DH_GEX_GROUP = common dso_local global i32 0, align 4
@SSH2_MSG_KEX_DH_GEX_REPLY = common dso_local global i32 0, align 4
@input_kex_dh_gex_reply = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_dh_gex_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_dh_gex_group(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %13 = load %struct.ssh*, %struct.ssh** %6, align 8
  %14 = getelementptr inbounds %struct.ssh, %struct.ssh* %13, i32 0, i32 0
  %15 = load %struct.kex*, %struct.kex** %14, align 8
  store %struct.kex* %15, %struct.kex** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %16 = call i32 @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = call i32* (...) @BN_new()
  store i32* %17, i32** %8, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = call i32* (...) @BN_new()
  store i32* %20, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %23, i32* %11, align 4
  br label %106

24:                                               ; preds = %19
  %25 = load %struct.ssh*, %struct.ssh** %6, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @sshpkt_get_bignum2(%struct.ssh* %25, i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load %struct.ssh*, %struct.ssh** %6, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @sshpkt_get_bignum2(%struct.ssh* %30, i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.ssh*, %struct.ssh** %6, align 8
  %36 = call i32 @sshpkt_get_end(%struct.ssh* %35)
  store i32 %36, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %29, %24
  br label %106

39:                                               ; preds = %34
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @BN_num_bits(i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.kex*, %struct.kex** %7, align 8
  %47 = getelementptr inbounds %struct.kex, %struct.kex* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.kex*, %struct.kex** %7, align 8
  %54 = getelementptr inbounds %struct.kex, %struct.kex* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50, %43, %39
  %58 = load i32, i32* @SSH_ERR_DH_GEX_OUT_OF_RANGE, align 4
  store i32 %58, i32* %11, align 4
  br label %106

59:                                               ; preds = %50
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = call i32* @dh_new_group(i32* %60, i32* %61)
  %63 = load %struct.kex*, %struct.kex** %7, align 8
  %64 = getelementptr inbounds %struct.kex, %struct.kex* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = icmp eq i32* %62, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %67, i32* %11, align 4
  br label %106

68:                                               ; preds = %59
  store i32* null, i32** %9, align 8
  store i32* null, i32** %8, align 8
  %69 = load %struct.kex*, %struct.kex** %7, align 8
  %70 = getelementptr inbounds %struct.kex, %struct.kex* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.kex*, %struct.kex** %7, align 8
  %73 = getelementptr inbounds %struct.kex, %struct.kex* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 8
  %76 = call i32 @dh_gen_key(i32* %71, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %106

79:                                               ; preds = %68
  %80 = load %struct.kex*, %struct.kex** %7, align 8
  %81 = getelementptr inbounds %struct.kex, %struct.kex* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @DH_get0_key(i32* %82, i32** %10, i32* null)
  %84 = load %struct.ssh*, %struct.ssh** %6, align 8
  %85 = load i32, i32* @SSH2_MSG_KEX_DH_GEX_INIT, align 4
  %86 = call i32 @sshpkt_start(%struct.ssh* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %79
  %89 = load %struct.ssh*, %struct.ssh** %6, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @sshpkt_put_bignum2(%struct.ssh* %89, i32* %90)
  store i32 %91, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load %struct.ssh*, %struct.ssh** %6, align 8
  %95 = call i32 @sshpkt_send(%struct.ssh* %94)
  store i32 %95, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %88, %79
  br label %106

98:                                               ; preds = %93
  %99 = call i32 @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.ssh*, %struct.ssh** %6, align 8
  %101 = load i32, i32* @SSH2_MSG_KEX_DH_GEX_GROUP, align 4
  %102 = call i32 @ssh_dispatch_set(%struct.ssh* %100, i32 %101, i32* null)
  %103 = load %struct.ssh*, %struct.ssh** %6, align 8
  %104 = load i32, i32* @SSH2_MSG_KEX_DH_GEX_REPLY, align 4
  %105 = call i32 @ssh_dispatch_set(%struct.ssh* %103, i32 %104, i32* @input_kex_dh_gex_reply)
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %98, %97, %78, %66, %57, %38, %22
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @BN_clear_free(i32* %107)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @BN_clear_free(i32* %109)
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @sshpkt_get_bignum2(%struct.ssh*, i32*) #1

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32* @dh_new_group(i32*, i32*) #1

declare dso_local i32 @dh_gen_key(i32*, i32) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_bignum2(%struct.ssh*, i32*) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
