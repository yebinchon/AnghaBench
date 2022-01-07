; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reconnect = common dso_local global i64 0, align 8
@recvtd = common dso_local global i32 0, align 4
@recv_thread = common dso_local global i32 0, align 4
@unit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pthread_create(recv_thread): %s.\00", align 1
@sendtd = common dso_local global i32 0, align 4
@sendfd = common dso_local global i32 0, align 4
@recvfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @g_gatec_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gatec_start() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @reconnect, align 8
  %2 = load i32, i32* @recv_thread, align 4
  %3 = call i32 @pthread_create(i32* @recvtd, i32* null, i32 %2, i32* null)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @unit, align 4
  %8 = call i32 @g_gate_destroy(i32 %7, i32 1)
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @strerror(i32 %9)
  %11 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %6, %0
  %13 = call i32 (...) @pthread_self()
  store i32 %13, i32* @sendtd, align 4
  %14 = call i32 @send_thread(i32* null)
  %15 = load i32, i32* @sendfd, align 4
  %16 = call i32 @close(i32 %15)
  %17 = load i32, i32* @recvfd, align 4
  %18 = call i32 @close(i32 %17)
  ret void
}

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @g_gate_destroy(i32, i32) #1

declare dso_local i32 @g_gate_xlog(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @send_thread(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
