; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_first_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kcm/extr_cache.c_kcm_ccache_first_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__* }

@ccache_mutex = common dso_local global i32 0, align 4
@ccache_head = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kcm_ccache_first_name(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %4, align 8
  %5 = call i32 @HEIMDAL_MUTEX_lock(i32* @ccache_mutex)
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ccache_head, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @kcm_is_same_session(i32* %11, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %26

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %3, align 8
  br label %7

26:                                               ; preds = %20, %7
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @strdup(i32 %32)
  store i8* %33, i8** %4, align 8
  br label %34

34:                                               ; preds = %29, %26
  %35 = call i32 @HEIMDAL_MUTEX_unlock(i32* @ccache_mutex)
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @kcm_is_same_session(i32*, i32, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
