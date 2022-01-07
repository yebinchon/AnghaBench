; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_group.c_fst_group_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_group.c_fst_group_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_group = type { i32, i32 }
%struct.fst_session = type { i32 }

@on_group_deleted = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"instance deleted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fst_group_delete(%struct.fst_group* %0) #0 {
  %2 = alloca %struct.fst_group*, align 8
  %3 = alloca %struct.fst_session*, align 8
  store %struct.fst_group* %0, %struct.fst_group** %2, align 8
  %4 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %5 = getelementptr inbounds %struct.fst_group, %struct.fst_group* %4, i32 0, i32 1
  %6 = call i32 @dl_list_del(i32* %5)
  %7 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %8 = getelementptr inbounds %struct.fst_group, %struct.fst_group* %7, i32 0, i32 0
  %9 = call i32 @dl_list_empty(i32* %8)
  %10 = call i32 @WPA_ASSERT(i32 %9)
  %11 = load i32, i32* @on_group_deleted, align 4
  %12 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %13 = call i32 @foreach_fst_ctrl_call(i32 %11, %struct.fst_group* %12)
  %14 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @fst_printf_group(%struct.fst_group* %14, i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %21, %1
  %18 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %19 = call %struct.fst_session* @fst_session_global_get_first_by_group(%struct.fst_group* %18)
  store %struct.fst_session* %19, %struct.fst_session** %3, align 8
  %20 = icmp ne %struct.fst_session* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.fst_session*, %struct.fst_session** %3, align 8
  %23 = call i32 @fst_session_delete(%struct.fst_session* %22)
  br label %17

24:                                               ; preds = %17
  %25 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %26 = call i32 @os_free(%struct.fst_group* %25)
  ret void
}

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @WPA_ASSERT(i32) #1

declare dso_local i32 @dl_list_empty(i32*) #1

declare dso_local i32 @foreach_fst_ctrl_call(i32, %struct.fst_group*) #1

declare dso_local i32 @fst_printf_group(%struct.fst_group*, i32, i8*) #1

declare dso_local %struct.fst_session* @fst_session_global_get_first_by_group(%struct.fst_group*) #1

declare dso_local i32 @fst_session_delete(%struct.fst_session*) #1

declare dso_local i32 @os_free(%struct.fst_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
