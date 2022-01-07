; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c__initialize_vx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-vx.c__initialize_vx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@vx_ops = common dso_local global i32 0, align 4
@vx_run_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vxworks-timeout\00", align 1
@class_support = common dso_local global i32 0, align 4
@var_uinteger = common dso_local global i32 0, align 4
@rpcTimeout = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"Set seconds to wait for rpc calls to return.\0ASet the number of seconds to wait for rpc calls to return.\00", align 1
@setlist = common dso_local global i32 0, align 4
@showlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_vx() #0 {
  %1 = call i32 (...) @init_vx_ops()
  %2 = call i32 @add_target(i32* @vx_ops)
  %3 = call i32 (...) @init_vx_run_ops()
  %4 = call i32 @add_target(i32* @vx_run_ops)
  %5 = load i32, i32* @class_support, align 4
  %6 = load i32, i32* @var_uinteger, align 4
  %7 = call i32 @add_set_cmd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i8* bitcast (%struct.TYPE_2__* @rpcTimeout to i8*), i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32* @setlist)
  %8 = call i32 @add_show_from_set(i32 %7, i32* @showlist)
  ret void
}

declare dso_local i32 @init_vx_ops(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @init_vx_run_ops(...) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
