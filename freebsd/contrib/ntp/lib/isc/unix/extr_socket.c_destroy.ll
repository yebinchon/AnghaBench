; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }

@CREATION = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_SOCKET = common dso_local global i32 0, align 4
@ISC_MSG_DESTROYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"destroying\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__**)* @destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy(%struct.TYPE_10__** %0) #0 {
  %2 = alloca %struct.TYPE_10__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %2, align 8
  %6 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = load i32, i32* @CREATION, align 4
  %13 = load i32, i32* @isc_msgcat, align 4
  %14 = load i32, i32* @ISC_MSGSET_SOCKET, align 4
  %15 = load i32, i32* @ISC_MSG_DESTROYING, align 4
  %16 = call i32 @socket_log(%struct.TYPE_10__* %11, i32* null, i32 %12, i32 %13, i32 %14, i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @ISC_LIST_EMPTY(i32 %19)
  %21 = call i32 @INSIST(i64 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ISC_LIST_EMPTY(i32 %24)
  %26 = call i32 @INSIST(i64 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ISC_LIST_EMPTY(i32 %29)
  %31 = call i32 @INSIST(i64 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = call i32 @INSIST(i64 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %52, label %43

43:                                               ; preds = %1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = icmp slt i32 %46, %50
  br label %52

52:                                               ; preds = %43, %1
  %53 = phi i1 [ true, %1 ], [ %51, %43 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @REQUIRE(i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %3, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @closesocket(%struct.TYPE_9__* %66, %struct.TYPE_10__* %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %52
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = call i32 @LOCK(i32* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = load i32, i32* @link, align 4
  %79 = call i32 @ISC_LIST_UNLINK(i32 %76, %struct.TYPE_10__* %77, i32 %78)
  %80 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %2, align 8
  %81 = call i32 @free_socket(%struct.TYPE_10__** %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = call i32 @UNLOCK(i32* %83)
  ret void
}

declare dso_local i32 @socket_log(%struct.TYPE_10__*, i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @INSIST(i64) #1

declare dso_local i64 @ISC_LIST_EMPTY(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @closesocket(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @ISC_LIST_UNLINK(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @free_socket(%struct.TYPE_10__**) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
