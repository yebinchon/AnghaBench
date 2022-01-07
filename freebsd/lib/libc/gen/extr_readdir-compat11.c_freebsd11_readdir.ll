; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_readdir-compat11.c_freebsd11_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_readdir-compat11.c_freebsd11_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freebsd11_dirent = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.freebsd11_dirent* }
%struct.dirent = type { i32 }

@__isthreaded = common dso_local global i64 0, align 8
@RDU_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.freebsd11_dirent* @freebsd11_readdir(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.freebsd11_dirent*, align 8
  %4 = alloca %struct.dirent*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i64, i64* @__isthreaded, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @_pthread_mutex_lock(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = load i32, i32* @RDU_SKIP, align 4
  %14 = call %struct.dirent* @_readdir_unlocked(%struct.TYPE_4__* %12, i32 %13)
  store %struct.dirent* %14, %struct.dirent** %4, align 8
  %15 = load %struct.dirent*, %struct.dirent** %4, align 8
  %16 = icmp ne %struct.dirent* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.freebsd11_dirent*, %struct.freebsd11_dirent** %19, align 8
  %21 = icmp eq %struct.freebsd11_dirent* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = call %struct.freebsd11_dirent* @malloc(i32 4)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.freebsd11_dirent* %23, %struct.freebsd11_dirent** %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.freebsd11_dirent*, %struct.freebsd11_dirent** %28, align 8
  %30 = load %struct.dirent*, %struct.dirent** %4, align 8
  %31 = call i64 @freebsd11_cvtdirent(%struct.freebsd11_dirent* %29, %struct.dirent* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.freebsd11_dirent*, %struct.freebsd11_dirent** %35, align 8
  store %struct.freebsd11_dirent* %36, %struct.freebsd11_dirent** %3, align 8
  br label %38

37:                                               ; preds = %26
  store %struct.freebsd11_dirent* null, %struct.freebsd11_dirent** %3, align 8
  br label %38

38:                                               ; preds = %37, %33
  br label %40

39:                                               ; preds = %11
  store %struct.freebsd11_dirent* null, %struct.freebsd11_dirent** %3, align 8
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i64, i64* @__isthreaded, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @_pthread_mutex_unlock(i32* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.freebsd11_dirent*, %struct.freebsd11_dirent** %3, align 8
  ret %struct.freebsd11_dirent* %48
}

declare dso_local i32 @_pthread_mutex_lock(i32*) #1

declare dso_local %struct.dirent* @_readdir_unlocked(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.freebsd11_dirent* @malloc(i32) #1

declare dso_local i64 @freebsd11_cvtdirent(%struct.freebsd11_dirent*, %struct.dirent*) #1

declare dso_local i32 @_pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
