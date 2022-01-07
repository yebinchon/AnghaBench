; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_queue_listen_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_queue_listen_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.queued_listenaddr* }
%struct.queued_listenaddr = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i8*, i32)* @queue_listen_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_listen_addr(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.queued_listenaddr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %11, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call %struct.queued_listenaddr* @xrecallocarray(%struct.queued_listenaddr* %12, i64 %15, i64 %19, i32 24)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store %struct.queued_listenaddr* %20, %struct.queued_listenaddr** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %25, i64 %28
  store %struct.queued_listenaddr* %30, %struct.queued_listenaddr** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32* @xstrdup(i8* %31)
  %33 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %9, align 8
  %34 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %9, align 8
  %37 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %44

41:                                               ; preds = %4
  %42 = load i8*, i8** %7, align 8
  %43 = call i32* @xstrdup(i8* %42)
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32* [ null, %40 ], [ %43, %41 ]
  %46 = load %struct.queued_listenaddr*, %struct.queued_listenaddr** %9, align 8
  %47 = getelementptr inbounds %struct.queued_listenaddr, %struct.queued_listenaddr* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  ret void
}

declare dso_local %struct.queued_listenaddr* @xrecallocarray(%struct.queued_listenaddr*, i64, i64, i32) #1

declare dso_local i32* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
