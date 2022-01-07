; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_httpdmgr_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_httpdmgr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32 (i32)*, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"httpdmgr_destroy\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"httpdmgr_destroy not shutting down yet\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"httpdmgr_destroy clients still active\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"httpdmgr_destroy detaching socket, task, and timermgr\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @httpdmgr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @httpdmgr_destroy(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = call i32 @ENTER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %8 = call i32 @LOCK(i32* %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = call i32 @MSHUTTINGDOWN(%struct.TYPE_10__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = call i32 @NOTICE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = call i32 @UNLOCK(i32* %15)
  br label %94

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ISC_LIST_EMPTY(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = call i32 @NOTICE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = call i32 @UNLOCK(i32* %26)
  br label %94

28:                                               ; preds = %17
  %29 = call i32 @NOTICE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 7
  %32 = call i32 @isc_socket_detach(i32* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 6
  %35 = call i32 @isc_task_detach(i32* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 5
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_9__* @ISC_LIST_HEAD(i32 %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %4, align 8
  br label %42

42:                                               ; preds = %45, %28
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @isc_mem_free(i32* %48, i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = load i32, i32* @link, align 4
  %58 = call i32 @ISC_LIST_UNLINK(i32 %55, %struct.TYPE_9__* %56, i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = call i32 @isc_mem_put(i32* %61, %struct.TYPE_9__* %62, i32 4)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_9__* @ISC_LIST_HEAD(i32 %66)
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %4, align 8
  br label %42

68:                                               ; preds = %42
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = call i32 @UNLOCK(i32* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = call i32 @isc_mutex_destroy(i32* %73)
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = icmp ne i32 (i32)* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32 (i32)*, i32 (i32)** %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %82(i32 %85)
  br label %87

87:                                               ; preds = %79, %68
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %3, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = call i32 @isc_mem_putanddetach(i32** %3, %struct.TYPE_10__* %91, i32 56)
  %93 = call i32 @EXIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %87, %23, %12
  ret void
}

declare dso_local i32 @ENTER(i8*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @MSHUTTINGDOWN(%struct.TYPE_10__*) #1

declare dso_local i32 @NOTICE(i8*) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @ISC_LIST_EMPTY(i32) #1

declare dso_local i32 @isc_socket_detach(i32*) #1

declare dso_local i32 @isc_task_detach(i32*) #1

declare dso_local %struct.TYPE_9__* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @isc_mem_free(i32*, i32) #1

declare dso_local i32 @ISC_LIST_UNLINK(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @isc_mutex_destroy(i32*) #1

declare dso_local i32 @isc_mem_putanddetach(i32**, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @EXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
