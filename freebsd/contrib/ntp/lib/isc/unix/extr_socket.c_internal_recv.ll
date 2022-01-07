; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_internal_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_internal_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@ISC_SOCKEVENT_INTR = common dso_local global i64 0, align 8
@IOEVENT = common dso_local global i32 0, align 4
@isc_msgcat = common dso_local global i32 0, align 4
@ISC_MSGSET_SOCKET = common dso_local global i32 0, align 4
@ISC_MSG_INTERNALRECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"internal_recv: task %p got event %p\00", align 1
@ISC_R_EOF = common dso_local global i32 0, align 4
@SELECT_POKE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*)* @internal_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_recv(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ISC_SOCKEVENT_INTR, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @INSIST(i32 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = call i32 @VALID_SOCKET(%struct.TYPE_16__* %17)
  %19 = call i32 @INSIST(i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = call i32 @LOCK(i32* %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = load i32, i32* @IOEVENT, align 4
  %25 = load i32, i32* @isc_msgcat, align 4
  %26 = load i32, i32* @ISC_MSGSET_SOCKET, align 4
  %27 = load i32, i32* @ISC_MSG_INTERNALRECV, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = call i32 @socket_log(%struct.TYPE_16__* %23, i32* null, i32 %24, i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %28, %struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @INSIST(i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @INSIST(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %2
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = call i32 @UNLOCK(i32* %55)
  %57 = call i32 @destroy(%struct.TYPE_16__** %6)
  br label %114

58:                                               ; preds = %2
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_14__* @ISC_LIST_HEAD(i32 %61)
  store %struct.TYPE_14__* %62, %struct.TYPE_14__** %5, align 8
  br label %63

63:                                               ; preds = %89, %58
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = icmp ne %struct.TYPE_14__* %64, null
  br i1 %65, label %66, label %94

66:                                               ; preds = %63
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %69 = call i32 @doio_recv(%struct.TYPE_16__* %67, %struct.TYPE_14__* %68)
  switch i32 %69, label %89 [
    i32 129, label %70
    i32 131, label %71
    i32 128, label %86
    i32 130, label %86
  ]

70:                                               ; preds = %66
  br label %95

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %82, %71
  %73 = load i32, i32* @ISC_R_EOF, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = call i32 @send_recvdone_event(%struct.TYPE_16__* %76, %struct.TYPE_14__** %5)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_14__* @ISC_LIST_HEAD(i32 %80)
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %5, align 8
  br label %82

82:                                               ; preds = %72
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %72, label %85

85:                                               ; preds = %82
  br label %95

86:                                               ; preds = %66, %66
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = call i32 @send_recvdone_event(%struct.TYPE_16__* %87, %struct.TYPE_14__** %5)
  br label %89

89:                                               ; preds = %66, %86
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_14__* @ISC_LIST_HEAD(i32 %92)
  store %struct.TYPE_14__* %93, %struct.TYPE_14__** %5, align 8
  br label %63

94:                                               ; preds = %63
  br label %95

95:                                               ; preds = %94, %85, %70
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ISC_LIST_EMPTY(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SELECT_POKE_READ, align 4
  %109 = call i32 @select_poke(i32 %104, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %101, %95
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = call i32 @UNLOCK(i32* %112)
  br label %114

114:                                              ; preds = %110, %53
  ret void
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @VALID_SOCKET(%struct.TYPE_16__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @socket_log(%struct.TYPE_16__*, i32*, i32, i32, i32, i32, i8*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @destroy(%struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_14__* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @doio_recv(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @send_recvdone_event(%struct.TYPE_16__*, %struct.TYPE_14__**) #1

declare dso_local i32 @ISC_LIST_EMPTY(i32) #1

declare dso_local i32 @select_poke(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
