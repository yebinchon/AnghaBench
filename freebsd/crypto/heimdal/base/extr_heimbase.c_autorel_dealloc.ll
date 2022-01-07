; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_autorel_dealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_autorel_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.ar_tls = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [59 x i8] c"autorelease pool released on thread w/o autorelease inited\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pool not empty after draining\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"autorelease not releaseing top pool\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @autorel_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autorel_dealloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.ar_tls*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = call %struct.ar_tls* (...) @autorel_tls()
  store %struct.ar_tls* %7, %struct.ar_tls** %4, align 8
  %8 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %9 = icmp eq %struct.ar_tls* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @heim_abort(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = call i32 @heim_auto_release_drain(%struct.TYPE_3__* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @HEIM_TAILQ_EMPTY(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = call i32 @heim_abort(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12
  %22 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %23 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %22, i32 0, i32 2
  %24 = call i32 @HEIMDAL_MUTEX_lock(i32* %23)
  %25 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %26 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @heim_abort(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %21
  %33 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %34 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %37 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %45 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %40, %32
  %47 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %48 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %47, i32 0, i32 2
  %49 = call i32 @HEIMDAL_MUTEX_unlock(i32* %48)
  ret void
}

declare dso_local %struct.ar_tls* @autorel_tls(...) #1

declare dso_local i32 @heim_abort(i8*) #1

declare dso_local i32 @heim_auto_release_drain(%struct.TYPE_3__*) #1

declare dso_local i32 @HEIM_TAILQ_EMPTY(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
