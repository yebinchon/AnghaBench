; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_child_close_fds.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_session.c_child_close_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32 }

@auth_sock = external dso_local global i32, align 4
@STDERR_FILENO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssh*)* @child_close_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child_close_fds(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %3 = load i32, i32* @auth_sock, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* @auth_sock, align 4
  %7 = call i32 @close(i32 %6)
  store i32 -1, i32* @auth_sock, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = call i32 (...) @packet_get_connection_in()
  %10 = call i32 (...) @packet_get_connection_out()
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i32 (...) @packet_get_connection_in()
  %14 = call i32 @close(i32 %13)
  br label %20

15:                                               ; preds = %8
  %16 = call i32 (...) @packet_get_connection_in()
  %17 = call i32 @close(i32 %16)
  %18 = call i32 (...) @packet_get_connection_out()
  %19 = call i32 @close(i32 %18)
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.ssh*, %struct.ssh** %2, align 8
  %22 = call i32 @channel_close_all(%struct.ssh* %21)
  %23 = call i32 (...) @endpwent()
  %24 = load i64, i64* @STDERR_FILENO, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @closefrom(i64 %25)
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @packet_get_connection_in(...) #1

declare dso_local i32 @packet_get_connection_out(...) #1

declare dso_local i32 @channel_close_all(%struct.ssh*) #1

declare dso_local i32 @endpwent(...) #1

declare dso_local i32 @closefrom(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
