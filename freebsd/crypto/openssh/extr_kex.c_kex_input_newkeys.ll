; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_input_newkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_input_newkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"SSH2_MSG_NEWKEYS received\00", align 1
@SSH2_MSG_NEWKEYS = common dso_local global i32 0, align 4
@kex_protocol_error = common dso_local global i32 0, align 4
@SSH2_MSG_KEXINIT = common dso_local global i32 0, align 4
@kex_input_kexinit = common dso_local global i32 0, align 4
@MODE_IN = common dso_local global i32 0, align 4
@KEX_INIT_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ssh*)* @kex_input_newkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kex_input_newkeys(i32 %0, i32 %1, %struct.ssh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssh*, align 8
  %8 = alloca %struct.kex*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ssh* %2, %struct.ssh** %7, align 8
  %10 = load %struct.ssh*, %struct.ssh** %7, align 8
  %11 = getelementptr inbounds %struct.ssh, %struct.ssh* %10, i32 0, i32 0
  %12 = load %struct.kex*, %struct.kex** %11, align 8
  store %struct.kex* %12, %struct.kex** %8, align 8
  %13 = call i32 @debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ssh*, %struct.ssh** %7, align 8
  %15 = load i32, i32* @SSH2_MSG_NEWKEYS, align 4
  %16 = call i32 @ssh_dispatch_set(%struct.ssh* %14, i32 %15, i32* @kex_protocol_error)
  %17 = load %struct.ssh*, %struct.ssh** %7, align 8
  %18 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %19 = call i32 @ssh_dispatch_set(%struct.ssh* %17, i32 %18, i32* @kex_input_kexinit)
  %20 = load %struct.ssh*, %struct.ssh** %7, align 8
  %21 = call i32 @sshpkt_get_end(%struct.ssh* %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = load %struct.ssh*, %struct.ssh** %7, align 8
  %27 = load i32, i32* @MODE_IN, align 4
  %28 = call i32 @ssh_set_newkeys(%struct.ssh* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %51

32:                                               ; preds = %25
  %33 = load %struct.kex*, %struct.kex** %8, align 8
  %34 = getelementptr inbounds %struct.kex, %struct.kex* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.kex*, %struct.kex** %8, align 8
  %36 = getelementptr inbounds %struct.kex, %struct.kex* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sshbuf_reset(i32 %37)
  %39 = load i32, i32* @KEX_INIT_SENT, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.kex*, %struct.kex** %8, align 8
  %42 = getelementptr inbounds %struct.kex, %struct.kex* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.kex*, %struct.kex** %8, align 8
  %46 = getelementptr inbounds %struct.kex, %struct.kex* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load %struct.kex*, %struct.kex** %8, align 8
  %50 = getelementptr inbounds %struct.kex, %struct.kex* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %32, %30, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @ssh_dispatch_set(%struct.ssh*, i32, i32*) #1

declare dso_local i32 @sshpkt_get_end(%struct.ssh*) #1

declare dso_local i32 @ssh_set_newkeys(%struct.ssh*, i32) #1

declare dso_local i32 @sshbuf_reset(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
