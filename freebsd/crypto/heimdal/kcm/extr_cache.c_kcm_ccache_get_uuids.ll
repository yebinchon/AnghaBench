; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_get_uuids.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_get_uuids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__* }

@KRB5_FCC_NOFILE = common dso_local global i64 0, align 8
@ccache_mutex = common dso_local global i32 0, align 4
@ccache_head = common dso_local global %struct.TYPE_4__* null, align 8
@KCM_FLAGS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcm_ccache_get_uuids(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i64, i64* @KRB5_FCC_NOFILE, align 8
  store i64 %11, i64* %9, align 8
  %12 = call i32 @HEIMDAL_MUTEX_lock(i32* @ccache_mutex)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ccache_head, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  br label %14

14:                                               ; preds = %40, %4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @KCM_FLAGS_VALID, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %40

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = call i64 @kcm_access(i32 %26, i32* %27, i32 %28, %struct.TYPE_4__* %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i64 0, i64* %9, align 8
  br label %40

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @krb5_storage_write(i32* %35, i32 %38, i32 4)
  br label %40

40:                                               ; preds = %34, %33, %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %10, align 8
  br label %14

44:                                               ; preds = %14
  %45 = call i32 @HEIMDAL_MUTEX_unlock(i32* @ccache_mutex)
  %46 = load i64, i64* %9, align 8
  ret i64 %46
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @kcm_access(i32, i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @krb5_storage_write(i32*, i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
