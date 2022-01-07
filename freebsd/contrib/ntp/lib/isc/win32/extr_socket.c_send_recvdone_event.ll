; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_send_recvdone_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_send_recvdone_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }

@ev_link = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__**)* @send_recvdone_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_recvdone_event(%struct.TYPE_11__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %4, align 8
  %6 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %13, align 8
  %14 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = load i32, i32* @ev_link, align 4
  %17 = call i64 @ISC_LINK_LINKED(%struct.TYPE_12__* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load i32, i32* @ev_link, align 4
  %26 = call i32 @ISC_LIST_DEQUEUE(i32 %22, %struct.TYPE_12__* %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ISC_SOCKEVENTATTR_ATTACHED, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @ISC_SOCKEVENTATTR_ATTACHED, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %38 = bitcast %struct.TYPE_12__** %37 to i32**
  %39 = call i32 @isc_task_sendanddetach(%struct.TYPE_11__** %5, i32** %38)
  br label %45

40:                                               ; preds = %27
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %43 = bitcast %struct.TYPE_12__** %42 to i32**
  %44 = call i32 @isc_task_send(%struct.TYPE_11__* %41, i32** %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = call i32 @CONSISTENT(%struct.TYPE_11__* %46)
  ret void
}

declare dso_local i64 @ISC_LINK_LINKED(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ISC_LIST_DEQUEUE(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @isc_task_sendanddetach(%struct.TYPE_11__**, i32**) #1

declare dso_local i32 @isc_task_send(%struct.TYPE_11__*, i32**) #1

declare dso_local i32 @CONSISTENT(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
