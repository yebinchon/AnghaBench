; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_send_newkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_send_newkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SSH2_MSG_NEWKEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SSH2_MSG_NEWKEYS sent\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"expecting SSH2_MSG_NEWKEYS\00", align 1
@kex_input_newkeys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_send_newkeys(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %5 = load %struct.ssh*, %struct.ssh** %3, align 8
  %6 = call i32 @kex_reset_dispatch(%struct.ssh* %5)
  %7 = load %struct.ssh*, %struct.ssh** %3, align 8
  %8 = load i32, i32* @SSH2_MSG_NEWKEYS, align 4
  %9 = call i32 @sshpkt_start(%struct.ssh* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.ssh*, %struct.ssh** %3, align 8
  %13 = call i32 @sshpkt_send(%struct.ssh* %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %11
  %18 = call i32 @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.ssh*, %struct.ssh** %3, align 8
  %21 = load i32, i32* @SSH2_MSG_NEWKEYS, align 4
  %22 = call i32 @ssh_dispatch_set(%struct.ssh* %20, i32 %21, i32* @kex_input_newkeys)
  %23 = load %struct.ssh*, %struct.ssh** %3, align 8
  %24 = getelementptr inbounds %struct.ssh, %struct.ssh* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %17
  %30 = load %struct.ssh*, %struct.ssh** %3, align 8
  %31 = call i32 @kex_send_ext_info(%struct.ssh* %30)
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %17
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @kex_reset_dispatch(%struct.ssh*) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

declare dso_local i32 @kex_send_ext_info(%struct.ssh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
