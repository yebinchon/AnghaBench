; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexc.c_kexgex_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kexgexc.c_kexgex_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i32, i32, i32, i32 }

@DH_GRP_MIN = common dso_local global i32 0, align 4
@DH_GRP_MAX = common dso_local global i32 0, align 4
@datafellows = common dso_local global i32 0, align 4
@SSH_BUG_DHGEX_LARGE = common dso_local global i32 0, align 4
@SSH2_MSG_KEX_DH_GEX_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"SSH2_MSG_KEX_DH_GEX_REQUEST(%u<%u<%u) sent\00", align 1
@SSH2_MSG_KEX_DH_GEX_GROUP = common dso_local global i32 0, align 4
@input_kex_dh_gex_group = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kexgex_client(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca %struct.kex*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %6 = load %struct.ssh*, %struct.ssh** %2, align 8
  %7 = getelementptr inbounds %struct.ssh, %struct.ssh* %6, i32 0, i32 0
  %8 = load %struct.kex*, %struct.kex** %7, align 8
  store %struct.kex* %8, %struct.kex** %3, align 8
  %9 = load %struct.kex*, %struct.kex** %3, align 8
  %10 = getelementptr inbounds %struct.kex, %struct.kex* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 8
  %13 = call i32 @dh_estimate(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @DH_GRP_MIN, align 4
  %15 = load %struct.kex*, %struct.kex** %3, align 8
  %16 = getelementptr inbounds %struct.kex, %struct.kex* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @DH_GRP_MAX, align 4
  %18 = load %struct.kex*, %struct.kex** %3, align 8
  %19 = getelementptr inbounds %struct.kex, %struct.kex* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.kex*, %struct.kex** %3, align 8
  %22 = getelementptr inbounds %struct.kex, %struct.kex* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @datafellows, align 4
  %24 = load i32, i32* @SSH_BUG_DHGEX_LARGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.kex*, %struct.kex** %3, align 8
  %29 = getelementptr inbounds %struct.kex, %struct.kex* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MINIMUM(i32 %30, i32 4096)
  %32 = load %struct.kex*, %struct.kex** %3, align 8
  %33 = getelementptr inbounds %struct.kex, %struct.kex* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %1
  %35 = load %struct.ssh*, %struct.ssh** %2, align 8
  %36 = load i32, i32* @SSH2_MSG_KEX_DH_GEX_REQUEST, align 4
  %37 = call i32 @sshpkt_start(%struct.ssh* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %34
  %40 = load %struct.ssh*, %struct.ssh** %2, align 8
  %41 = load %struct.kex*, %struct.kex** %3, align 8
  %42 = getelementptr inbounds %struct.kex, %struct.kex* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sshpkt_put_u32(%struct.ssh* %40, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %39
  %47 = load %struct.ssh*, %struct.ssh** %2, align 8
  %48 = load %struct.kex*, %struct.kex** %3, align 8
  %49 = getelementptr inbounds %struct.kex, %struct.kex* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sshpkt_put_u32(%struct.ssh* %47, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %46
  %54 = load %struct.ssh*, %struct.ssh** %2, align 8
  %55 = load %struct.kex*, %struct.kex** %3, align 8
  %56 = getelementptr inbounds %struct.kex, %struct.kex* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sshpkt_put_u32(%struct.ssh* %54, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load %struct.ssh*, %struct.ssh** %2, align 8
  %62 = call i32 @sshpkt_send(%struct.ssh* %61)
  store i32 %62, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %53, %46, %39, %34
  br label %79

65:                                               ; preds = %60
  %66 = load %struct.kex*, %struct.kex** %3, align 8
  %67 = getelementptr inbounds %struct.kex, %struct.kex* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.kex*, %struct.kex** %3, align 8
  %70 = getelementptr inbounds %struct.kex, %struct.kex* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.kex*, %struct.kex** %3, align 8
  %73 = getelementptr inbounds %struct.kex, %struct.kex* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %71, i32 %74)
  %76 = load %struct.ssh*, %struct.ssh** %2, align 8
  %77 = load i32, i32* @SSH2_MSG_KEX_DH_GEX_GROUP, align 4
  %78 = call i32 @ssh_dispatch_set(%struct.ssh* %76, i32 %77, i32* @input_kex_dh_gex_group)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %65, %64
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @dh_estimate(i32) #1

declare dso_local i32 @MINIMUM(i32, i32) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_u32(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @debug(i8*, i32, i32, i32) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
