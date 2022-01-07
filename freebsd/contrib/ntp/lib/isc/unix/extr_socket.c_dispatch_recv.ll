; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_dispatch_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_dispatch_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_10__, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32* }

@isc_sockettype_fdwatch = common dso_local global i64 0, align 8
@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"dispatch_recv:  event %p -> task %p\00", align 1
@internal_fdwatch_read = common dso_local global i32 0, align 4
@internal_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @dispatch_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_recv(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @INSIST(i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @isc_sockettype_fdwatch, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_8__* @ISC_LIST_HEAD(i32 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %4, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %73

26:                                               ; preds = %18
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = load i32, i32* @EVENT, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @socket_log(%struct.TYPE_9__* %27, i32* null, i32 %28, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %29, i32* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %5, align 8
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %5, align 8
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %3, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @isc_sockettype_fdwatch, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %41
  %59 = load i32, i32* @internal_fdwatch_read, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %66

62:                                               ; preds = %41
  %63 = load i32, i32* @internal_recv, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %69, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = bitcast %struct.TYPE_10__** %3 to i32**
  %72 = call i32 @isc_task_send(i32* %70, i32** %71)
  br label %73

73:                                               ; preds = %66, %25
  ret void
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local %struct.TYPE_8__* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @socket_log(%struct.TYPE_9__*, i32*, i32, i32*, i32, i32, i8*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @isc_task_send(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
