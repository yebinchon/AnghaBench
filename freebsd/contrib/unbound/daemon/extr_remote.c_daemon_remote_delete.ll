; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_daemon_remote_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_daemon_remote_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @daemon_remote_delete(%struct.daemon_remote* %0) #0 {
  %2 = alloca %struct.daemon_remote*, align 8
  store %struct.daemon_remote* %0, %struct.daemon_remote** %2, align 8
  %3 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %4 = icmp ne %struct.daemon_remote* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %8 = call i32 @daemon_remote_clear(%struct.daemon_remote* %7)
  %9 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %10 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %15 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @SSL_CTX_free(i64 %16)
  br label %18

18:                                               ; preds = %13, %6
  %19 = load %struct.daemon_remote*, %struct.daemon_remote** %2, align 8
  %20 = call i32 @free(%struct.daemon_remote* %19)
  br label %21

21:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @daemon_remote_clear(%struct.daemon_remote*) #1

declare dso_local i32 @SSL_CTX_free(i64) #1

declare dso_local i32 @free(%struct.daemon_remote*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
