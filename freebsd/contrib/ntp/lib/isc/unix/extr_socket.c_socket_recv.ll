; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_socket_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_socket_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32* }

@ISC_FALSE = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@isc_sockettype_udp = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i64 0, align 8
@ISC_SOCKEVENTATTR_ATTACHED = common dso_local global i32 0, align 4
@SELECT_POKE_READ = common dso_local global i32 0, align 4
@ev_link = common dso_local global i32 0, align 4
@EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"socket_recv: event %p -> task %p\00", align 1
@ISC_SOCKFLAG_IMMEDIATE = common dso_local global i32 0, align 4
@ISC_R_INPROGRESS = common dso_local global i32 0, align 4
@ISC_R_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32*, i32)* @socket_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_recv(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* @ISC_FALSE, align 8
  store i64 %13, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %14 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @isc_sockettype_udp, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = call i32 @doio_recv(%struct.TYPE_13__* %24, %struct.TYPE_12__* %25)
  store i32 %26, i32* %9, align 4
  br label %43

27:                                               ; preds = %4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = call i32 @LOCK(i32* %29)
  %31 = load i64, i64* @ISC_TRUE, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ISC_LIST_EMPTY(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = call i32 @doio_recv(%struct.TYPE_13__* %38, %struct.TYPE_12__* %39)
  store i32 %40, i32* %9, align 4
  br label %42

41:                                               ; preds = %27
  store i32 129, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %112 [
    i32 129, label %45
    i32 131, label %99
    i32 130, label %103
    i32 128, label %103
  ]

45:                                               ; preds = %43
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @isc_task_attach(i32* %46, i32** %11)
  %48 = load i32, i32* @ISC_SOCKEVENTATTR_ATTACHED, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i64, i64* %10, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %45
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = call i32 @LOCK(i32* %57)
  %59 = load i64, i64* @ISC_TRUE, align 8
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %55, %45
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ISC_LIST_EMPTY(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @SELECT_POKE_READ, align 4
  %79 = call i32 @select_poke(i32 %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %66, %60
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = load i32, i32* @ev_link, align 4
  %86 = call i32 @ISC_LIST_ENQUEUE(i32 %83, %struct.TYPE_12__* %84, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = load i32, i32* @EVENT, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @socket_log(%struct.TYPE_13__* %87, i32* null, i32 %88, i32* null, i32 0, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %89, i32* %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @ISC_SOCKFLAG_IMMEDIATE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %80
  %97 = load i32, i32* @ISC_R_INPROGRESS, align 4
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %80
  br label %112

99:                                               ; preds = %43
  %100 = load i32, i32* @ISC_R_EOF, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %43, %43, %99
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ISC_SOCKFLAG_IMMEDIATE, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = call i32 @send_recvdone_event(%struct.TYPE_13__* %109, %struct.TYPE_12__** %6)
  br label %111

111:                                              ; preds = %108, %103
  br label %112

112:                                              ; preds = %43, %111, %98
  %113 = load i64, i64* %10, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = call i32 @UNLOCK(i32* %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %12, align 4
  ret i32 %120
}

declare dso_local i32 @doio_recv(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i64 @ISC_LIST_EMPTY(i32) #1

declare dso_local i32 @isc_task_attach(i32*, i32**) #1

declare dso_local i32 @select_poke(i32, i32, i32) #1

declare dso_local i32 @ISC_LIST_ENQUEUE(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @socket_log(%struct.TYPE_13__*, i32*, i32, i32*, i32, i32, i8*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @send_recvdone_event(%struct.TYPE_13__*, %struct.TYPE_12__**) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
