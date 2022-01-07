; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_xprt_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc.c_xprt_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@svc_fd_lock = common dso_local global i32 0, align 4
@__svc_xports = common dso_local global %struct.TYPE_5__** null, align 8
@FD_SETSIZE = common dso_local global i32 0, align 4
@svc_fdset = common dso_local global i32 0, align 4
@svc_maxfd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xprt_register(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = icmp ne %struct.TYPE_5__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = call i32 @rwlock_wrlock(i32* @svc_fd_lock)
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @__svc_xports, align 8
  %13 = icmp eq %struct.TYPE_5__** %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @FD_SETSIZE, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @mem_alloc(i32 %19)
  %21 = inttoptr i64 %20 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %21, %struct.TYPE_5__*** @__svc_xports, align 8
  %22 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @__svc_xports, align 8
  %23 = icmp eq %struct.TYPE_5__** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  br label %62

26:                                               ; preds = %14
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @__svc_xports, align 8
  %28 = load i32, i32* @FD_SETSIZE, align 4
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(%struct.TYPE_5__** %27, i8 signext 0, i32 %32)
  br label %34

34:                                               ; preds = %26, %1
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @FD_SETSIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @__svc_xports, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %40, i64 %42
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @FD_SET(i32 %44, i32* @svc_fdset)
  %46 = load i32, i32* @svc_maxfd, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @max(i32 %46, i32 %47)
  store i32 %48, i32* @svc_maxfd, align 4
  br label %60

49:                                               ; preds = %34
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @FD_SETSIZE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @__svc_xports, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %57
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %58, align 8
  br label %59

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59, %38
  %61 = call i32 @rwlock_unlock(i32* @svc_fd_lock)
  br label %62

62:                                               ; preds = %60, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwlock_wrlock(i32*) #1

declare dso_local i64 @mem_alloc(i32) #1

declare dso_local i32 @rwlock_unlock(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_5__**, i8 signext, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
