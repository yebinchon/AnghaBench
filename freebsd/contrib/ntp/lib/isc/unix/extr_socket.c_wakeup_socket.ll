; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_wakeup_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_socket.c_wakeup_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32*, i64 }

@SELECT_POKE_CLOSE = common dso_local global i32 0, align 4
@CLOSE_PENDING = common dso_local global i64 0, align 8
@CLOSED = common dso_local global i64 0, align 8
@SELECT_POKE_READ = common dso_local global i32 0, align 4
@SELECT_POKE_WRITE = common dso_local global i32 0, align 4
@MANAGED = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@isc_lctx = common dso_local global i32 0, align 4
@ISC_LOGCATEGORY_GENERAL = common dso_local global i32 0, align 4
@ISC_LOGMODULE_SOCKET = common dso_local global i32 0, align 4
@ISC_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to start watching FD (%d): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @wakeup_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_socket(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @FDLOCK_ID(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %14, %18
  br label %20

20:                                               ; preds = %13, %3
  %21 = phi i1 [ false, %3 ], [ %19, %13 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @INSIST(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SELECT_POKE_CLOSE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CLOSE_PENDING, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @INSIST(i32 %37)
  %39 = load i64, i64* @CLOSED, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %39, i64* %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SELECT_POKE_READ, align 4
  %49 = call i32 @unwatch_fd(%struct.TYPE_5__* %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SELECT_POKE_WRITE, align 4
  %53 = call i32 @unwatch_fd(%struct.TYPE_5__* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @close(i32 %54)
  br label %131

56:                                               ; preds = %20
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @LOCK(i32* %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CLOSE_PENDING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %56
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i32 @UNLOCK(i32* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @SELECT_POKE_READ, align 4
  %84 = call i32 @unwatch_fd(%struct.TYPE_5__* %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @SELECT_POKE_WRITE, align 4
  %88 = call i32 @unwatch_fd(%struct.TYPE_5__* %85, i32 %86, i32 %87)
  br label %131

89:                                               ; preds = %56
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MANAGED, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %89
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i32 @UNLOCK(i32* %105)
  br label %131

107:                                              ; preds = %89
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @UNLOCK(i32* %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @watch_fd(%struct.TYPE_5__* %115, i32 %116, i32 %117)
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @ISC_R_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %107
  %123 = load i32, i32* @isc_lctx, align 4
  %124 = load i32, i32* @ISC_LOGCATEGORY_GENERAL, align 4
  %125 = load i32, i32* @ISC_LOGMODULE_SOCKET, align 4
  %126 = load i32, i32* @ISC_LOG_ERROR, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @isc_result_totext(i64 %128)
  %130 = call i32 @isc_log_write(i32 %123, i32 %124, i32 %125, i32 %126, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %127, i32 %129)
  br label %131

131:                                              ; preds = %27, %73, %99, %122, %107
  ret void
}

declare dso_local i32 @FDLOCK_ID(i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @unwatch_fd(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i64 @watch_fd(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @isc_log_write(i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @isc_result_totext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
