; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_process_queued_listen_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_process_queued_listen_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, %struct.queued_listenaddr*, i32* }
%struct.queued_listenaddr = type { %struct.queued_listenaddr*, %struct.queued_listenaddr*, i32 }

@SSH_DEFAULT_PORT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @process_queued_listen_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_queued_listen_addrs(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.queued_listenaddr*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @SSH_DEFAULT_PORT, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds i32, i32* %13, i64 %16
  store i32 %10, i32* %18, align 4
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @AF_UNSPEC, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %19
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %38, i64 %39
  store %struct.queued_listenaddr* %40, %struct.queued_listenaddr** %4, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %4, align 8
  %43 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %42, i32 0, i32 1
  %44 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %43, align 8
  %45 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %4, align 8
  %46 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %45, i32 0, i32 0
  %47 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %46, align 8
  %48 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %4, align 8
  %49 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @add_listen_addr(%struct.TYPE_4__* %41, %struct.queued_listenaddr* %44, %struct.queued_listenaddr* %47, i32 %50)
  %52 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %4, align 8
  %53 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %52, i32 0, i32 1
  %54 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %53, align 8
  %55 = call i32 @free(%struct.queued_listenaddr* %54)
  %56 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %4, align 8
  %57 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %56, i32 0, i32 0
  %58 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %57, align 8
  %59 = call i32 @free(%struct.queued_listenaddr* %58)
  br label %60

60:                                               ; preds = %35
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %29

63:                                               ; preds = %29
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %65, align 8
  %67 = call i32 @free(%struct.queued_listenaddr* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  store %struct.queued_listenaddr* null, %struct.queued_listenaddr** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  ret void
}

declare dso_local i32 @add_listen_addr(%struct.TYPE_4__*, %struct.queued_listenaddr*, %struct.queued_listenaddr*, i32) #1

declare dso_local i32 @free(%struct.queued_listenaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
