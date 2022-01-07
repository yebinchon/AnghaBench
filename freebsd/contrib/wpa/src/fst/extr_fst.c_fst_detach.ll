; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst.c_fst_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst.c_fst_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_iface = type { i32 }
%struct.fst_group = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"iface detached from group %s\00", align 1
@on_iface_removed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_detach(%struct.fst_iface* %0) #0 {
  %2 = alloca %struct.fst_iface*, align 8
  %3 = alloca %struct.fst_group*, align 8
  store %struct.fst_iface* %0, %struct.fst_iface** %2, align 8
  %4 = load %struct.fst_iface*, %struct.fst_iface** %2, align 8
  %5 = call %struct.fst_group* @fst_iface_get_group(%struct.fst_iface* %4)
  store %struct.fst_group* %5, %struct.fst_group** %3, align 8
  %6 = load %struct.fst_iface*, %struct.fst_iface** %2, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = load %struct.fst_group*, %struct.fst_group** %3, align 8
  %9 = call i32 @fst_group_get_id(%struct.fst_group* %8)
  %10 = call i32 @fst_printf_iface(%struct.fst_iface* %6, i32 %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.fst_iface*, %struct.fst_iface** %2, align 8
  %12 = call i32 @fst_session_global_on_iface_detached(%struct.fst_iface* %11)
  %13 = load i32, i32* @on_iface_removed, align 4
  %14 = load %struct.fst_iface*, %struct.fst_iface** %2, align 8
  %15 = call i32 @foreach_fst_ctrl_call(i32 %13, %struct.fst_iface* %14)
  %16 = load %struct.fst_group*, %struct.fst_group** %3, align 8
  %17 = load %struct.fst_iface*, %struct.fst_iface** %2, align 8
  %18 = call i32 @fst_group_detach_iface(%struct.fst_group* %16, %struct.fst_iface* %17)
  %19 = load %struct.fst_iface*, %struct.fst_iface** %2, align 8
  %20 = call i32 @fst_iface_delete(%struct.fst_iface* %19)
  %21 = load %struct.fst_group*, %struct.fst_group** %3, align 8
  %22 = call i32 @fst_group_update_ie(%struct.fst_group* %21)
  %23 = load %struct.fst_group*, %struct.fst_group** %3, align 8
  %24 = call i32 @fst_group_delete_if_empty(%struct.fst_group* %23)
  ret void
}

declare dso_local %struct.fst_group* @fst_iface_get_group(%struct.fst_iface*) #1

declare dso_local i32 @fst_printf_iface(%struct.fst_iface*, i32, i8*, i32) #1

declare dso_local i32 @fst_group_get_id(%struct.fst_group*) #1

declare dso_local i32 @fst_session_global_on_iface_detached(%struct.fst_iface*) #1

declare dso_local i32 @foreach_fst_ctrl_call(i32, %struct.fst_iface*) #1

declare dso_local i32 @fst_group_detach_iface(%struct.fst_group*, %struct.fst_iface*) #1

declare dso_local i32 @fst_iface_delete(%struct.fst_iface*) #1

declare dso_local i32 @fst_group_update_ie(%struct.fst_group*) #1

declare dso_local i32 @fst_group_delete_if_empty(%struct.fst_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
