; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_raw.c_svc_raw_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_svc_raw.c_svc_raw_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xp_ops = type { i32, i32, i32, i32, i32, i32* }
%struct.xp_ops2 = type { i32 }
%struct.TYPE_3__ = type { %struct.xp_ops2*, %struct.xp_ops* }

@svc_raw_ops.ops = internal global %struct.xp_ops zeroinitializer, align 8
@svc_raw_ops.ops2 = internal global %struct.xp_ops2 zeroinitializer, align 4
@ops_lock = common dso_local global i32 0, align 4
@svc_raw_recv = common dso_local global i32* null, align 8
@svc_raw_stat = common dso_local global i32 0, align 4
@svc_raw_getargs = common dso_local global i32 0, align 4
@svc_raw_reply = common dso_local global i32 0, align 4
@svc_raw_freeargs = common dso_local global i32 0, align 4
@svc_raw_destroy = common dso_local global i32 0, align 4
@svc_raw_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @svc_raw_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_raw_ops(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 @mutex_lock(i32* @ops_lock)
  %4 = load i32*, i32** getelementptr inbounds (%struct.xp_ops, %struct.xp_ops* @svc_raw_ops.ops, i32 0, i32 5), align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32*, i32** @svc_raw_recv, align 8
  store i32* %7, i32** getelementptr inbounds (%struct.xp_ops, %struct.xp_ops* @svc_raw_ops.ops, i32 0, i32 5), align 8
  %8 = load i32, i32* @svc_raw_stat, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.xp_ops, %struct.xp_ops* @svc_raw_ops.ops, i32 0, i32 4), align 8
  %9 = load i32, i32* @svc_raw_getargs, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.xp_ops, %struct.xp_ops* @svc_raw_ops.ops, i32 0, i32 3), align 4
  %10 = load i32, i32* @svc_raw_reply, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.xp_ops, %struct.xp_ops* @svc_raw_ops.ops, i32 0, i32 2), align 8
  %11 = load i32, i32* @svc_raw_freeargs, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.xp_ops, %struct.xp_ops* @svc_raw_ops.ops, i32 0, i32 1), align 4
  %12 = load i32, i32* @svc_raw_destroy, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.xp_ops, %struct.xp_ops* @svc_raw_ops.ops, i32 0, i32 0), align 8
  %13 = load i32, i32* @svc_raw_control, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.xp_ops2, %struct.xp_ops2* @svc_raw_ops.ops2, i32 0, i32 0), align 4
  br label %14

14:                                               ; preds = %6, %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store %struct.xp_ops* @svc_raw_ops.ops, %struct.xp_ops** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.xp_ops2* @svc_raw_ops.ops2, %struct.xp_ops2** %18, align 8
  %19 = call i32 @mutex_unlock(i32* @ops_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
