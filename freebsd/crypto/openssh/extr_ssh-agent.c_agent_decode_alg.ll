; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-agent.c_agent_decode_alg.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-agent.c_agent_decode_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i64 }

@KEY_RSA = common dso_local global i64 0, align 8
@SSH_AGENT_RSA_SHA2_256 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rsa-sha2-256\00", align 1
@SSH_AGENT_RSA_SHA2_512 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rsa-sha2-512\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sshkey*, i32)* @agent_decode_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @agent_decode_alg(%struct.sshkey* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sshkey*, align 8
  %5 = alloca i32, align 4
  store %struct.sshkey* %0, %struct.sshkey** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sshkey*, %struct.sshkey** %4, align 8
  %7 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @KEY_RSA, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SSH_AGENT_RSA_SHA2_256, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %26

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SSH_AGENT_RSA_SHA2_512, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %26

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  br label %25

25:                                               ; preds = %24, %2
  store i8* null, i8** %3, align 8
  br label %26

26:                                               ; preds = %25, %22, %16
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
