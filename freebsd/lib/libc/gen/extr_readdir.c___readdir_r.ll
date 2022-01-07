; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_readdir.c___readdir_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_readdir.c___readdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dirent = type { i32 }

@errno = common dso_local global i32 0, align 4
@__isthreaded = common dso_local global i64 0, align 8
@RDU_SKIP = common dso_local global i32 0, align 4
@RDU_SHORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__readdir_r(%struct.TYPE_4__* %0, %struct.dirent* %1, %struct.dirent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.dirent**, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.dirent* %1, %struct.dirent** %6, align 8
  store %struct.dirent** %2, %struct.dirent*** %7, align 8
  %10 = load i32, i32* @errno, align 4
  store i32 %10, i32* %9, align 4
  store i32 0, i32* @errno, align 4
  %11 = load i64, i64* @__isthreaded, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @_pthread_mutex_lock(i32* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = load i32, i32* @RDU_SKIP, align 4
  %20 = load i32, i32* @RDU_SHORT, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.dirent* @_readdir_unlocked(%struct.TYPE_4__* %18, i32 %21)
  store %struct.dirent* %22, %struct.dirent** %8, align 8
  %23 = load %struct.dirent*, %struct.dirent** %8, align 8
  %24 = icmp ne %struct.dirent* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.dirent*, %struct.dirent** %6, align 8
  %27 = load %struct.dirent*, %struct.dirent** %8, align 8
  %28 = load %struct.dirent*, %struct.dirent** %8, align 8
  %29 = call i32 @_GENERIC_DIRSIZ(%struct.dirent* %28)
  %30 = call i32 @memcpy(%struct.dirent* %26, %struct.dirent* %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %17
  %32 = load i64, i64* @__isthreaded, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @_pthread_mutex_unlock(i32* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @errno, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.dirent*, %struct.dirent** %8, align 8
  %43 = icmp eq %struct.dirent* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %4, align 4
  br label %58

46:                                               ; preds = %41
  br label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* @errno, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = load %struct.dirent*, %struct.dirent** %8, align 8
  %51 = icmp ne %struct.dirent* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.dirent*, %struct.dirent** %6, align 8
  %54 = load %struct.dirent**, %struct.dirent*** %7, align 8
  store %struct.dirent* %53, %struct.dirent** %54, align 8
  br label %57

55:                                               ; preds = %49
  %56 = load %struct.dirent**, %struct.dirent*** %7, align 8
  store %struct.dirent* null, %struct.dirent** %56, align 8
  br label %57

57:                                               ; preds = %55, %52
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %44
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @_pthread_mutex_lock(i32*) #1

declare dso_local %struct.dirent* @_readdir_unlocked(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memcpy(%struct.dirent*, %struct.dirent*, i32) #1

declare dso_local i32 @_GENERIC_DIRSIZ(%struct.dirent*) #1

declare dso_local i32 @_pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
