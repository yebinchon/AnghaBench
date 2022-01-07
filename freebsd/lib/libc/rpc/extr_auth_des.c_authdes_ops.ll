; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_auth_des.c_authdes_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_ops = type { i32, i32, i32, i32, i32* }

@authdes_ops.ops = internal global %struct.auth_ops zeroinitializer, align 8
@authdes_ops_lock = common dso_local global i32 0, align 4
@authdes_nextverf = common dso_local global i32* null, align 8
@authdes_marshal = common dso_local global i32 0, align 4
@authdes_validate = common dso_local global i32 0, align 4
@authdes_refresh = common dso_local global i32 0, align 4
@authdes_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_ops* ()* @authdes_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_ops* @authdes_ops() #0 {
  %1 = call i32 @mutex_lock(i32* @authdes_ops_lock)
  %2 = load i32*, i32** getelementptr inbounds (%struct.auth_ops, %struct.auth_ops* @authdes_ops.ops, i32 0, i32 4), align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32*, i32** @authdes_nextverf, align 8
  store i32* %5, i32** getelementptr inbounds (%struct.auth_ops, %struct.auth_ops* @authdes_ops.ops, i32 0, i32 4), align 8
  %6 = load i32, i32* @authdes_marshal, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.auth_ops, %struct.auth_ops* @authdes_ops.ops, i32 0, i32 3), align 4
  %7 = load i32, i32* @authdes_validate, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.auth_ops, %struct.auth_ops* @authdes_ops.ops, i32 0, i32 2), align 8
  %8 = load i32, i32* @authdes_refresh, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.auth_ops, %struct.auth_ops* @authdes_ops.ops, i32 0, i32 1), align 4
  %9 = load i32, i32* @authdes_destroy, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.auth_ops, %struct.auth_ops* @authdes_ops.ops, i32 0, i32 0), align 8
  br label %10

10:                                               ; preds = %4, %0
  %11 = call i32 @mutex_unlock(i32* @authdes_ops_lock)
  ret %struct.auth_ops* @authdes_ops.ops
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
