; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_raw.c_clnt_raw_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_raw.c_clnt_raw_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clnt_ops = type { i32, i32, i32, i32, i32, i32* }

@clnt_raw_ops.ops = internal global %struct.clnt_ops zeroinitializer, align 8
@ops_lock = common dso_local global i32 0, align 4
@clnt_raw_call = common dso_local global i32* null, align 8
@clnt_raw_abort = common dso_local global i32 0, align 4
@clnt_raw_geterr = common dso_local global i32 0, align 4
@clnt_raw_freeres = common dso_local global i32 0, align 4
@clnt_raw_destroy = common dso_local global i32 0, align 4
@clnt_raw_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clnt_ops* ()* @clnt_raw_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clnt_ops* @clnt_raw_ops() #0 {
  %1 = call i32 @mutex_lock(i32* @ops_lock)
  %2 = load i32*, i32** getelementptr inbounds (%struct.clnt_ops, %struct.clnt_ops* @clnt_raw_ops.ops, i32 0, i32 5), align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32*, i32** @clnt_raw_call, align 8
  store i32* %5, i32** getelementptr inbounds (%struct.clnt_ops, %struct.clnt_ops* @clnt_raw_ops.ops, i32 0, i32 5), align 8
  %6 = load i32, i32* @clnt_raw_abort, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.clnt_ops, %struct.clnt_ops* @clnt_raw_ops.ops, i32 0, i32 4), align 8
  %7 = load i32, i32* @clnt_raw_geterr, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.clnt_ops, %struct.clnt_ops* @clnt_raw_ops.ops, i32 0, i32 3), align 4
  %8 = load i32, i32* @clnt_raw_freeres, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.clnt_ops, %struct.clnt_ops* @clnt_raw_ops.ops, i32 0, i32 2), align 8
  %9 = load i32, i32* @clnt_raw_destroy, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.clnt_ops, %struct.clnt_ops* @clnt_raw_ops.ops, i32 0, i32 1), align 4
  %10 = load i32, i32* @clnt_raw_control, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.clnt_ops, %struct.clnt_ops* @clnt_raw_ops.ops, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %4, %0
  %12 = call i32 @mutex_unlock(i32* @ops_lock)
  ret %struct.clnt_ops* @clnt_raw_ops.ops
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
