; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_send_ext_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_send_ext_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH2_MSG_EXT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"server-sig-algs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*)* @kex_send_ext_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kex_send_ext_info(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %6 = call i8* @sshkey_alg_list(i32 0, i32 1, i32 1, i8 signext 44)
  store i8* %6, i8** %5, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %9, i32* %2, align 4
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.ssh*, %struct.ssh** %3, align 8
  %12 = load i32, i32* @SSH2_MSG_EXT_INFO, align 4
  %13 = call i32 @sshpkt_start(%struct.ssh* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = load %struct.ssh*, %struct.ssh** %3, align 8
  %17 = call i32 @sshpkt_put_u32(%struct.ssh* %16, i32 1)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = load %struct.ssh*, %struct.ssh** %3, align 8
  %21 = call i32 @sshpkt_put_cstring(%struct.ssh* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = load %struct.ssh*, %struct.ssh** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @sshpkt_put_cstring(%struct.ssh* %24, i8* %25)
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.ssh*, %struct.ssh** %3, align 8
  %30 = call i32 @sshpkt_send(%struct.ssh* %29)
  store i32 %30, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %23, %19, %15, %10
  br label %34

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i8* @sshkey_alg_list(i32, i32, i32, i8 signext) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_u32(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_put_cstring(%struct.ssh*, i8*) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
