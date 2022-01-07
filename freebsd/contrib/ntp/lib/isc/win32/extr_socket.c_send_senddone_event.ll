; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_send_senddone_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_send_senddone_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }

@ev_link = common dso_local global i32 0, align 4
@ISC_SOCKEVENTATTR_ATTACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_12__**)* @send_senddone_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_senddone_event(%struct.TYPE_11__* %0, %struct.TYPE_12__** %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %4, align 8
  %6 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %7 = icmp ne %struct.TYPE_12__** %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ false, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @INSIST(i32 %14)
  %16 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %5, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %23, align 8
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = load i32, i32* @ev_link, align 4
  %27 = call i64 @ISC_LINK_LINKED(%struct.TYPE_12__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %12
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32, i32* @ev_link, align 4
  %36 = call i32 @ISC_LIST_DEQUEUE(i32 %32, %struct.TYPE_12__* %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %12
  %38 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ISC_SOCKEVENTATTR_ATTACHED, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @ISC_SOCKEVENTATTR_ATTACHED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %48 = bitcast %struct.TYPE_12__** %47 to i32**
  %49 = call i32 @isc_task_sendanddetach(%struct.TYPE_11__** %5, i32** %48)
  br label %55

50:                                               ; preds = %37
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %53 = bitcast %struct.TYPE_12__** %52 to i32**
  %54 = call i32 @isc_task_send(%struct.TYPE_11__* %51, i32** %53)
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = call i32 @CONSISTENT(%struct.TYPE_11__* %56)
  ret void
}

declare dso_local i32 @INSIST(i32) #1

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
