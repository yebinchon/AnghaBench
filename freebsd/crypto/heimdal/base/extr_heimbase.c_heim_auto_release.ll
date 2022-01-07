; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_heim_auto_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/base/extr_heimbase.c_heim_auto_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heim_base = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ar_tls = type { %struct.TYPE_2__* }

@autorel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"no auto relase pool in place, would leak\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heim_auto_release(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.heim_base*, align 8
  %4 = alloca %struct.ar_tls*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call %struct.heim_base* @PTR2BASE(i32* %6)
  store %struct.heim_base* %7, %struct.heim_base** %3, align 8
  %8 = call %struct.ar_tls* (...) @autorel_tls()
  store %struct.ar_tls* %8, %struct.ar_tls** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @heim_base_is_tagged(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %1
  br label %60

16:                                               ; preds = %11
  %17 = load %struct.heim_base*, %struct.heim_base** %3, align 8
  %18 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %5, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @HEIMDAL_MUTEX_lock(i32* %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.heim_base*, %struct.heim_base** %3, align 8
  %28 = load i32, i32* @autorel, align 4
  %29 = call i32 @HEIM_TAILQ_REMOVE(i32* %26, %struct.heim_base* %27, i32 %28)
  %30 = load %struct.heim_base*, %struct.heim_base** %3, align 8
  %31 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %30, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @HEIMDAL_MUTEX_unlock(i32* %33)
  br label %35

35:                                               ; preds = %21, %16
  %36 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %37 = icmp eq %struct.ar_tls* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.ar_tls*, %struct.ar_tls** %4, align 8
  %40 = getelementptr inbounds %struct.ar_tls, %struct.ar_tls* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  store %struct.TYPE_2__* %41, %struct.TYPE_2__** %5, align 8
  %42 = icmp eq %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %35
  %44 = call i32 @heim_abort(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @HEIMDAL_MUTEX_lock(i32* %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.heim_base*, %struct.heim_base** %3, align 8
  %52 = load i32, i32* @autorel, align 4
  %53 = call i32 @HEIM_TAILQ_INSERT_HEAD(i32* %50, %struct.heim_base* %51, i32 %52)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %55 = load %struct.heim_base*, %struct.heim_base** %3, align 8
  %56 = getelementptr inbounds %struct.heim_base, %struct.heim_base* %55, i32 0, i32 0
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %56, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @HEIMDAL_MUTEX_unlock(i32* %58)
  br label %60

60:                                               ; preds = %45, %15
  ret void
}

declare dso_local %struct.heim_base* @PTR2BASE(i32*) #1

declare dso_local %struct.ar_tls* @autorel_tls(...) #1

declare dso_local i64 @heim_base_is_tagged(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIM_TAILQ_REMOVE(i32*, %struct.heim_base*, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @heim_abort(i8*) #1

declare dso_local i32 @HEIM_TAILQ_INSERT_HEAD(i32*, %struct.heim_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
