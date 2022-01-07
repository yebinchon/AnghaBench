; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_internal_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_internal_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i32 }

@ISC_SOCKEVENT_INTW = common dso_local global i64 0, align 8
@IOEVENT = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_SOCKET = common dso_local global i32 0, align 4
@ISC_MSG_INTERNALSEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"internal_send: task %p got event %p\00", align 1
@SELECT_POKE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_10__*)* @internal_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_send(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ISC_SOCKEVENT_INTW, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @INSIST(i32 %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = call i32 @VALID_SOCKET(%struct.TYPE_11__* %18)
  %20 = call i32 @INSIST(i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = call i32 @LOCK(i32* %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = load i32, i32* @IOEVENT, align 4
  %26 = load i32, i32* @isc_msgcat, align 4
  %27 = load i32, i32* @ISC_MSGSET_SOCKET, align 4
  %28 = load i32, i32* @ISC_MSG_INTERNALSEND, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = call i32 @socket_log(%struct.TYPE_11__* %24, i32* null, i32 %25, i32 %26, i32 %27, i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %29, %struct.TYPE_10__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i32 @INSIST(i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @INSIST(i32 %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = call i32 @UNLOCK(i32* %56)
  %58 = call i32 @destroy(%struct.TYPE_11__** %6)
  br label %100

59:                                               ; preds = %2
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @ISC_LIST_HEAD(i32 %62)
  store i32* %63, i32** %5, align 8
  br label %64

64:                                               ; preds = %75, %59
  %65 = load i32*, i32** %5, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @doio_send(%struct.TYPE_11__* %68, i32* %69)
  switch i32 %70, label %75 [
    i32 129, label %71
    i32 130, label %72
    i32 128, label %72
  ]

71:                                               ; preds = %67
  br label %81

72:                                               ; preds = %67, %67
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = call i32 @send_senddone_event(%struct.TYPE_11__* %73, i32** %5)
  br label %75

75:                                               ; preds = %67, %72
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @ISC_LIST_HEAD(i32 %78)
  store i32* %79, i32** %5, align 8
  br label %64

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ISC_LIST_EMPTY(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SELECT_POKE_WRITE, align 4
  %95 = call i32 @select_poke(i32 %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %81
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = call i32 @UNLOCK(i32* %98)
  br label %100

100:                                              ; preds = %96, %54
  ret void
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @VALID_SOCKET(%struct.TYPE_11__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @socket_log(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i8*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @destroy(%struct.TYPE_11__**) #1

declare dso_local i32* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @doio_send(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @send_senddone_event(%struct.TYPE_11__*, i32**) #1

declare dso_local i32 @ISC_LIST_EMPTY(i32) #1

declare dso_local i32 @select_poke(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
