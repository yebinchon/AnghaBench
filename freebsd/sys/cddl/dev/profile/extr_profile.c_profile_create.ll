; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/profile/extr_profile.c_profile_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/profile/extr_profile.c_profile_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i32 }

@profile_interval_min = common dso_local global i64 0, align 8
@profile_id = common dso_local global i32 0, align 4
@profile_total = common dso_local global i64 0, align 8
@profile_max = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@profile_aframes = common dso_local global i32 0, align 4
@CYCLIC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i32)* @profile_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_create(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @profile_interval_min, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %50

12:                                               ; preds = %3
  %13 = load i32, i32* @profile_id, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @dtrace_probe_lookup(i32 %13, i32* null, i32* null, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %50

18:                                               ; preds = %12
  %19 = call i32 @atomic_add_32(i64* @profile_total, i32 1)
  %20 = load i64, i64* @profile_total, align 8
  %21 = load i64, i64* @profile_max, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @atomic_add_32(i64* @profile_total, i32 -1)
  br label %50

25:                                               ; preds = %18
  %26 = load i32, i32* @KM_SLEEP, align 4
  %27 = call %struct.TYPE_4__* @kmem_zalloc(i32 32, i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %7, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcpy(i32 %30, i8* %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @nsec_to_sbt(i64 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = call i32 @callout_init(i32* %38, i32 1)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @profile_id, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @profile_aframes, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = call i32 @dtrace_probe_create(i32 %43, i32* null, i32* null, i8* %44, i32 %45, %struct.TYPE_4__* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %25, %23, %17, %11
  ret void
}

declare dso_local i64 @dtrace_probe_lookup(i32, i32*, i32*, i8*) #1

declare dso_local i32 @atomic_add_32(i64*, i32) #1

declare dso_local %struct.TYPE_4__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @nsec_to_sbt(i64) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @dtrace_probe_create(i32, i32*, i32*, i8*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
