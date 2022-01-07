; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_ops_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/hyperv/tools/extr_hv_kvp_daemon.c_kvp_ops_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@HV_KVP_OP_COUNT = common dso_local global i32 0, align 4
@kvp_op_hdlrs = common dso_local global %struct.TYPE_2__* null, align 8
@HV_KVP_OP_GET = common dso_local global i32 0, align 4
@kvp_op_setgetdel = common dso_local global i32 0, align 4
@HV_KVP_OP_SET = common dso_local global i32 0, align 4
@HV_KVP_OP_DELETE = common dso_local global i32 0, align 4
@HV_KVP_OP_ENUMERATE = common dso_local global i32 0, align 4
@kvp_get_os_info = common dso_local global i32* null, align 8
@kvp_op_enumerate = common dso_local global i32 0, align 4
@HV_KVP_OP_GET_IP_INFO = common dso_local global i32 0, align 4
@kvp_op_getipinfo = common dso_local global i32 0, align 4
@HV_KVP_OP_SET_IP_INFO = common dso_local global i32 0, align 4
@kvp_op_setipinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvp_ops_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_ops_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %22, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @HV_KVP_OP_COUNT, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_op_hdlrs, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_op_hdlrs, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_op_hdlrs, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %6
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %2

25:                                               ; preds = %2
  %26 = load i32, i32* @HV_KVP_OP_GET, align 4
  %27 = load i32, i32* @kvp_op_setgetdel, align 4
  %28 = call i32 @kvp_op_load(i32 %26, i32* null, i32 %27)
  %29 = load i32, i32* @HV_KVP_OP_SET, align 4
  %30 = load i32, i32* @kvp_op_setgetdel, align 4
  %31 = call i32 @kvp_op_load(i32 %29, i32* null, i32 %30)
  %32 = or i32 %28, %31
  %33 = load i32, i32* @HV_KVP_OP_DELETE, align 4
  %34 = load i32, i32* @kvp_op_setgetdel, align 4
  %35 = call i32 @kvp_op_load(i32 %33, i32* null, i32 %34)
  %36 = or i32 %32, %35
  %37 = load i32, i32* @HV_KVP_OP_ENUMERATE, align 4
  %38 = load i32*, i32** @kvp_get_os_info, align 8
  %39 = load i32, i32* @kvp_op_enumerate, align 4
  %40 = call i32 @kvp_op_load(i32 %37, i32* %38, i32 %39)
  %41 = or i32 %36, %40
  %42 = load i32, i32* @HV_KVP_OP_GET_IP_INFO, align 4
  %43 = load i32, i32* @kvp_op_getipinfo, align 4
  %44 = call i32 @kvp_op_load(i32 %42, i32* null, i32 %43)
  %45 = or i32 %41, %44
  %46 = load i32, i32* @HV_KVP_OP_SET_IP_INFO, align 4
  %47 = load i32, i32* @kvp_op_setipinfo, align 4
  %48 = call i32 @kvp_op_load(i32 %46, i32* null, i32 %47)
  %49 = or i32 %45, %48
  ret i32 %49
}

declare dso_local i32 @kvp_op_load(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
