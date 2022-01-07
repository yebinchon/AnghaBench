; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexs.c_input_kex_dh_gex_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexs.c_input_kex_dh_gex_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i64, i64, i64, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"SSH2_MSG_KEX_DH_GEX_REQUEST received\00", align 1
@DH_GRP_MIN = common dso_local global i64 0, align 8
@DH_GRP_MAX = common dso_local global i32 0, align 4
@SSH_ERR_DH_GEX_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no matching DH grp found\00", align 1
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"SSH2_MSG_KEX_DH_GEX_GROUP sent\00", align 1
@SSH2_MSG_KEX_DH_GEX_GROUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"expecting SSH2_MSG_KEX_DH_GEX_INIT\00", align 1
@SSH2_MSG_KEX_DH_GEX_INIT = common dso_local global i32 0, align 4
@input_kex_dh_gex_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @input_kex_dh_gex_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_kex_dh_gex_request(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssh*, align 8
  %7 = alloca %struct.kex*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ssh* %2, %struct.ssh** %6, align 8
  %14 = load %struct.ssh*, %struct.ssh** %6, align 8
  %15 = getelementptr inbounds %struct.ssh, %struct.ssh* %14, i32 0, i32 0
  %16 = load %struct.kex*, %struct.kex** %15, align 8
  store %struct.kex* %16, %struct.kex** %7, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %17 = call i32 @debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ssh*, %struct.ssh** %6, align 8
  %19 = call i32 @sshpkt_get_u32(%struct.ssh* %18, i8** %9)
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %3
  %22 = load %struct.ssh*, %struct.ssh** %6, align 8
  %23 = call i32 @sshpkt_get_u32(%struct.ssh* %22, i8** %11)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load %struct.ssh*, %struct.ssh** %6, align 8
  %27 = call i32 @sshpkt_get_u32(%struct.ssh* %26, i8** %10)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.ssh*, %struct.ssh** %6, align 8
  %31 = call i32 @sshpkt_get_end(%struct.ssh* %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25, %21, %3
  br label %147

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.kex*, %struct.kex** %7, align 8
  %38 = getelementptr inbounds %struct.kex, %struct.kex* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.kex*, %struct.kex** %7, align 8
  %42 = getelementptr inbounds %struct.kex, %struct.kex* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.kex*, %struct.kex** %7, align 8
  %46 = getelementptr inbounds %struct.kex, %struct.kex* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* @DH_GRP_MIN, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i8* @MAXIMUM(i64 %47, i8* %48)
  store i8* %49, i8** %9, align 8
  %50 = load i32, i32* @DH_GRP_MAX, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = call i8* @MINIMUM(i32 %50, i8* %51)
  store i8* %52, i8** %10, align 8
  %53 = load i64, i64* @DH_GRP_MIN, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i8* @MAXIMUM(i64 %53, i8* %54)
  store i8* %55, i8** %11, align 8
  %56 = load i32, i32* @DH_GRP_MAX, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = call i8* @MINIMUM(i32 %56, i8* %57)
  store i8* %58, i8** %11, align 8
  %59 = load %struct.kex*, %struct.kex** %7, align 8
  %60 = getelementptr inbounds %struct.kex, %struct.kex* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.kex*, %struct.kex** %7, align 8
  %63 = getelementptr inbounds %struct.kex, %struct.kex* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %88, label %66

66:                                               ; preds = %34
  %67 = load %struct.kex*, %struct.kex** %7, align 8
  %68 = getelementptr inbounds %struct.kex, %struct.kex* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.kex*, %struct.kex** %7, align 8
  %71 = getelementptr inbounds %struct.kex, %struct.kex* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %88, label %74

74:                                               ; preds = %66
  %75 = load %struct.kex*, %struct.kex** %7, align 8
  %76 = getelementptr inbounds %struct.kex, %struct.kex* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.kex*, %struct.kex** %7, align 8
  %79 = getelementptr inbounds %struct.kex, %struct.kex* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = load %struct.kex*, %struct.kex** %7, align 8
  %84 = getelementptr inbounds %struct.kex, %struct.kex* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DH_GRP_MIN, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82, %74, %66, %34
  %89 = load i32, i32* @SSH_ERR_DH_GEX_OUT_OF_RANGE, align 4
  store i32 %89, i32* %8, align 4
  br label %147

90:                                               ; preds = %82
  %91 = load i8*, i8** %9, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @choose_dh(i8* %91, i8* %92, i8* %93)
  %95 = call i32* @PRIVSEP(i32 %94)
  %96 = load %struct.kex*, %struct.kex** %7, align 8
  %97 = getelementptr inbounds %struct.kex, %struct.kex* %96, i32 0, i32 4
  store i32* %95, i32** %97, align 8
  %98 = load %struct.kex*, %struct.kex** %7, align 8
  %99 = getelementptr inbounds %struct.kex, %struct.kex* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %90
  %103 = load %struct.ssh*, %struct.ssh** %6, align 8
  %104 = call i32 @sshpkt_disconnect(%struct.ssh* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %105, i32* %8, align 4
  br label %147

106:                                              ; preds = %90
  %107 = call i32 @debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.kex*, %struct.kex** %7, align 8
  %109 = getelementptr inbounds %struct.kex, %struct.kex* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @DH_get0_pqg(i32* %110, i32** %12, i32* null, i32** %13)
  %112 = load %struct.ssh*, %struct.ssh** %6, align 8
  %113 = load i32, i32* @SSH2_MSG_KEX_DH_GEX_GROUP, align 4
  %114 = call i32 @sshpkt_start(%struct.ssh* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %130, label %116

116:                                              ; preds = %106
  %117 = load %struct.ssh*, %struct.ssh** %6, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @sshpkt_put_bignum2(%struct.ssh* %117, i32* %118)
  store i32 %119, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %116
  %122 = load %struct.ssh*, %struct.ssh** %6, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = call i32 @sshpkt_put_bignum2(%struct.ssh* %122, i32* %123)
  store i32 %124, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = load %struct.ssh*, %struct.ssh** %6, align 8
  %128 = call i32 @sshpkt_send(%struct.ssh* %127)
  store i32 %128, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %121, %116, %106
  br label %147

131:                                              ; preds = %126
  %132 = load %struct.kex*, %struct.kex** %7, align 8
  %133 = getelementptr inbounds %struct.kex, %struct.kex* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.kex*, %struct.kex** %7, align 8
  %136 = getelementptr inbounds %struct.kex, %struct.kex* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 8
  %139 = call i32 @dh_gen_key(i32* %134, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %147

142:                                              ; preds = %131
  %143 = call i32 @debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %144 = load %struct.ssh*, %struct.ssh** %6, align 8
  %145 = load i32, i32* @SSH2_MSG_KEX_DH_GEX_INIT, align 4
  %146 = call i32 @ssh_dispatch_set(%struct.ssh* %144, i32 %145, i32* @input_kex_dh_gex_init)
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %142, %141, %130, %102, %88, %33
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @sshpkt_get_u32(%struct.ssh*, i8**) #1

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #1

declare dso_local i8* @MAXIMUM(i64, i8*) #1

declare dso_local i8* @MINIMUM(i32, i8*) #1

declare dso_local i32* @PRIVSEP(i32) #1

declare dso_local i32 @choose_dh(i8*, i8*, i8*) #1

declare dso_local i32 @sshpkt_disconnect(%struct.ssh*, i8*) #1

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32*, i32**) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_bignum2(%struct.ssh*, i32*) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @dh_gen_key(i32*, i32) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
