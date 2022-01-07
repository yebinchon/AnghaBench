; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_send_kexinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_send_kexinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.kex* }
%struct.kex = type { i32, i32, i64 }

@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@KEX_INIT_SENT = common dso_local global i32 0, align 4
@KEX_COOKIE_LEN = common dso_local global i64 0, align 8
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH2_MSG_KEXINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SSH2_MSG_KEXINIT sent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kex_send_kexinit(%struct.ssh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ssh*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kex*, align 8
  %6 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %3, align 8
  %7 = load %struct.ssh*, %struct.ssh** %3, align 8
  %8 = getelementptr inbounds %struct.ssh, %struct.ssh* %7, i32 0, i32 0
  %9 = load %struct.kex*, %struct.kex** %8, align 8
  store %struct.kex* %9, %struct.kex** %5, align 8
  %10 = load %struct.kex*, %struct.kex** %5, align 8
  %11 = icmp eq %struct.kex* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %13, i32* %2, align 4
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.kex*, %struct.kex** %5, align 8
  %16 = getelementptr inbounds %struct.kex, %struct.kex* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @KEX_INIT_SENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %69

22:                                               ; preds = %14
  %23 = load %struct.kex*, %struct.kex** %5, align 8
  %24 = getelementptr inbounds %struct.kex, %struct.kex* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.kex*, %struct.kex** %5, align 8
  %26 = getelementptr inbounds %struct.kex, %struct.kex* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @sshbuf_len(i32 %27)
  %29 = load i64, i64* @KEX_COOKIE_LEN, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %32, i32* %2, align 4
  br label %69

33:                                               ; preds = %22
  %34 = load %struct.kex*, %struct.kex** %5, align 8
  %35 = getelementptr inbounds %struct.kex, %struct.kex* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @sshbuf_mutable_ptr(i32 %36)
  store i32* %37, i32** %4, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %40, i32* %2, align 4
  br label %69

41:                                               ; preds = %33
  %42 = load i32*, i32** %4, align 8
  %43 = load i64, i64* @KEX_COOKIE_LEN, align 8
  %44 = call i32 @arc4random_buf(i32* %42, i64 %43)
  %45 = load %struct.ssh*, %struct.ssh** %3, align 8
  %46 = load i32, i32* @SSH2_MSG_KEXINIT, align 4
  %47 = call i32 @sshpkt_start(%struct.ssh* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %41
  %50 = load %struct.ssh*, %struct.ssh** %3, align 8
  %51 = load %struct.kex*, %struct.kex** %5, align 8
  %52 = getelementptr inbounds %struct.kex, %struct.kex* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sshpkt_putb(%struct.ssh* %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load %struct.ssh*, %struct.ssh** %3, align 8
  %58 = call i32 @sshpkt_send(%struct.ssh* %57)
  store i32 %58, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %49, %41
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %56
  %63 = call i32 @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @KEX_INIT_SENT, align 4
  %65 = load %struct.kex*, %struct.kex** %5, align 8
  %66 = getelementptr inbounds %struct.kex, %struct.kex* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %60, %39, %31, %21, %12
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @sshbuf_len(i32) #1

declare dso_local i32* @sshbuf_mutable_ptr(i32) #1

declare dso_local i32 @arc4random_buf(i32*, i64) #1

declare dso_local i32 @sshpkt_start(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_putb(%struct.ssh*, i32) #1

declare dso_local i32 @sshpkt_send(%struct.ssh*) #1

declare dso_local i32 @debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
