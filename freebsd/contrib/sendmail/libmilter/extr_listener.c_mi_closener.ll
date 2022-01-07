; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/libmilter/extr_listener.c_mi_closener.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/libmilter/extr_listener.c_mi_closener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L_Mutex = common dso_local global i32 0, align 4
@listenfd = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@sockpath = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mi_closener() #0 {
  %1 = call i32 @smutex_lock(i32* @L_Mutex)
  %2 = load i32, i32* @listenfd, align 4
  %3 = call i64 @ValidSocket(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @listenfd, align 4
  %7 = call i32 @closesocket(i32 %6)
  %8 = load i32, i32* @INVALID_SOCKET, align 4
  store i32 %8, i32* @listenfd, align 4
  br label %9

9:                                                ; preds = %5, %0
  %10 = call i32 @smutex_unlock(i32* @L_Mutex)
  ret void
}

declare dso_local i32 @smutex_lock(i32*) #1

declare dso_local i64 @ValidSocket(i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @smutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
