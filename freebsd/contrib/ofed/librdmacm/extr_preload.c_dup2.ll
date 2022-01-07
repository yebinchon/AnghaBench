; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_dup2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_dup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.fd_info = type { i64, i32, i32, i32, i32 }

@idm = common dso_local global i32 0, align 4
@fd_fork_passive = common dso_local global i64 0, align 8
@fd_fork_active = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@mut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dup2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd_info*, align 8
  %7 = alloca %struct.fd_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @init_preload()
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.fd_info* @idm_lookup(i32* @idm, i32 %10)
  store %struct.fd_info* %11, %struct.fd_info** %6, align 8
  %12 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %13 = icmp ne %struct.fd_info* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %16 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @fd_fork_passive, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @fork_passive(i32 %21)
  br label %33

23:                                               ; preds = %14
  %24 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %25 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @fd_fork_active, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @fork_active(i32 %30)
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.fd_info* @idm_lookup(i32* @idm, i32 %35)
  store %struct.fd_info* %36, %struct.fd_info** %7, align 8
  %37 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %38 = icmp ne %struct.fd_info* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %41 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %40, i32 0, i32 2
  %42 = call i32 @atomic_load(i32* %41)
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = call i32 @ERR(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %114

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @close(i32 %48)
  br label %50

50:                                               ; preds = %47, %34
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 %51(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %56 = icmp ne %struct.fd_info* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %50
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %114

63:                                               ; preds = %57
  %64 = call %struct.fd_info* @calloc(i32 1, i32 24)
  store %struct.fd_info* %64, %struct.fd_info** %7, align 8
  %65 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %66 = icmp ne %struct.fd_info* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @close(i32 %68)
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @ERR(i32 %70)
  store i32 %71, i32* %3, align 4
  br label %114

72:                                               ; preds = %63
  %73 = call i32 @pthread_mutex_lock(i32* @mut)
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %76 = call i32 @idm_set(i32* @idm, i32 %74, %struct.fd_info* %75)
  %77 = call i32 @pthread_mutex_unlock(i32* @mut)
  %78 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %79 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %82 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %84 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %87 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %89 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %102

92:                                               ; preds = %72
  %93 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %94 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %97 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %99 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call %struct.fd_info* @idm_lookup(i32* @idm, i32 %100)
  store %struct.fd_info* %101, %struct.fd_info** %6, align 8
  br label %106

102:                                              ; preds = %72
  %103 = load i32, i32* %4, align 4
  %104 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %105 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %92
  %107 = load %struct.fd_info*, %struct.fd_info** %7, align 8
  %108 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %107, i32 0, i32 2
  %109 = call i32 @atomic_store(i32* %108, i32 1)
  %110 = load %struct.fd_info*, %struct.fd_info** %6, align 8
  %111 = getelementptr inbounds %struct.fd_info, %struct.fd_info* %110, i32 0, i32 2
  %112 = call i32 @atomic_fetch_add(i32* %111, i32 1)
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %106, %67, %61, %44
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @init_preload(...) #1

declare dso_local %struct.fd_info* @idm_lookup(i32*, i32) #1

declare dso_local i32 @fork_passive(i32) #1

declare dso_local i32 @fork_active(i32) #1

declare dso_local i32 @atomic_load(i32*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.fd_info* @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @idm_set(i32*, i32, %struct.fd_info*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @atomic_fetch_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
