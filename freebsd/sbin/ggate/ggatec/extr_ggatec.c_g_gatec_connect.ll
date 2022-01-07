; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@token = common dso_local global i32 0, align 4
@GGATE_FLAG_SEND = common dso_local global i32 0, align 4
@recvfd = common dso_local global i32 0, align 4
@GGATE_FLAG_RECV = common dso_local global i32 0, align 4
@sendfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @g_gatec_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_gatec_connect() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @arc4random()
  store i32 %2, i32* @token, align 4
  %3 = load i32, i32* @GGATE_FLAG_SEND, align 4
  %4 = call i32 @handshake(i32 %3)
  store i32 %4, i32* @recvfd, align 4
  %5 = load i32, i32* @recvfd, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @GGATE_FLAG_RECV, align 4
  %10 = call i32 @handshake(i32 %9)
  store i32 %10, i32* @sendfd, align 4
  %11 = load i32, i32* @sendfd, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %15

14:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %13, %7
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @handshake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
