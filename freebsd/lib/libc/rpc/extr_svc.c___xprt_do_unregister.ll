; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c___xprt_do_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c___xprt_do_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@svc_fd_lock = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@__svc_xports = common dso_local global %struct.TYPE_4__** null, align 8
@svc_fdset = common dso_local global i32 0, align 4
@svc_maxfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64)* @__xprt_do_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xprt_do_unregister(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @rwlock_wrlock(i32* @svc_fd_lock)
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @FD_SETSIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %59

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__svc_xports, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = icmp eq %struct.TYPE_4__* %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__svc_xports, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @FD_CLR(i32 %34, i32* @svc_fdset)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @svc_maxfd, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %29
  %40 = load i32, i32* @svc_maxfd, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @svc_maxfd, align 4
  br label %42

42:                                               ; preds = %54, %39
  %43 = load i32, i32* @svc_maxfd, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__svc_xports, align 8
  %47 = load i32, i32* @svc_maxfd, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* @svc_maxfd, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* @svc_maxfd, align 4
  br label %42

57:                                               ; preds = %52, %42
  br label %58

58:                                               ; preds = %57, %29
  br label %77

59:                                               ; preds = %21, %17
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @FD_SETSIZE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__svc_xports, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = icmp eq %struct.TYPE_4__* %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @__svc_xports, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %75, align 8
  br label %76

76:                                               ; preds = %71, %63, %59
  br label %77

77:                                               ; preds = %76, %58
  %78 = load i64, i64* %4, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  br label %82

82:                                               ; preds = %80, %77
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwlock_wrlock(i32*) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

declare dso_local i32 @rwlock_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
