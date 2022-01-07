; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_heim_auto_release_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_heim_auto_release_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.ar_tls = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [38 x i8] c"Failed to create/get autorelease head\00", align 1
@_heim_autorel_object = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @heim_auto_release_create() #0 {
  %1 = alloca %struct.ar_tls*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call %struct.ar_tls* (...) @autorel_tls()
  store %struct.ar_tls* %3, %struct.ar_tls** %1, align 8
  %4 = load %struct.ar_tls*, %struct.ar_tls** %1, align 8
  %5 = icmp eq %struct.ar_tls* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @heim_abort(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = call %struct.TYPE_4__* @_heim_alloc_object(i32* @_heim_autorel_object, i32 4)
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = load %struct.ar_tls*, %struct.ar_tls** %1, align 8
  %14 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %13, i32 0, i32 0
  %15 = call i32 @HEIMDAL_MUTEX_lock(i32* %14)
  %16 = load %struct.ar_tls*, %struct.ar_tls** %1, align 8
  %17 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = load %struct.ar_tls*, %struct.ar_tls** %1, align 8
  %23 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %22, i32 0, i32 2
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  br label %24

24:                                               ; preds = %20, %12
  %25 = load %struct.ar_tls*, %struct.ar_tls** %1, align 8
  %26 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = load %struct.ar_tls*, %struct.ar_tls** %1, align 8
  %32 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %31, i32 0, i32 1
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.ar_tls*, %struct.ar_tls** %1, align 8
  %34 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %33, i32 0, i32 0
  %35 = call i32 @HEIMDAL_MUTEX_unlock(i32* %34)
  br label %36

36:                                               ; preds = %24, %8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %37
}

declare dso_local %struct.ar_tls* @autorel_tls(...) #1

declare dso_local i32 @heim_abort(i8*) #1

declare dso_local %struct.TYPE_4__* @_heim_alloc_object(i32*, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
