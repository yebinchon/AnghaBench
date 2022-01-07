; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst.c_fst_global_add_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst.c_fst_global_add_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_ctrl_handle = type { i32, %struct.fst_ctrl }
%struct.fst_ctrl = type { i64 (...)* }

@fst_global_ctrls_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fst_ctrl_handle* @fst_global_add_ctrl(%struct.fst_ctrl* %0) #0 {
  %2 = alloca %struct.fst_ctrl_handle*, align 8
  %3 = alloca %struct.fst_ctrl*, align 8
  %4 = alloca %struct.fst_ctrl_handle*, align 8
  store %struct.fst_ctrl* %0, %struct.fst_ctrl** %3, align 8
  %5 = load %struct.fst_ctrl*, %struct.fst_ctrl** %3, align 8
  %6 = icmp ne %struct.fst_ctrl* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.fst_ctrl_handle* null, %struct.fst_ctrl_handle** %2, align 8
  br label %37

8:                                                ; preds = %1
  %9 = call %struct.fst_ctrl_handle* @os_zalloc(i32 16)
  store %struct.fst_ctrl_handle* %9, %struct.fst_ctrl_handle** %4, align 8
  %10 = load %struct.fst_ctrl_handle*, %struct.fst_ctrl_handle** %4, align 8
  %11 = icmp ne %struct.fst_ctrl_handle* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store %struct.fst_ctrl_handle* null, %struct.fst_ctrl_handle** %2, align 8
  br label %37

13:                                               ; preds = %8
  %14 = load %struct.fst_ctrl*, %struct.fst_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.fst_ctrl, %struct.fst_ctrl* %14, i32 0, i32 0
  %16 = load i64 (...)*, i64 (...)** %15, align 8
  %17 = icmp ne i64 (...)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.fst_ctrl*, %struct.fst_ctrl** %3, align 8
  %20 = getelementptr inbounds %struct.fst_ctrl, %struct.fst_ctrl* %19, i32 0, i32 0
  %21 = load i64 (...)*, i64 (...)** %20, align 8
  %22 = call i64 (...) %21()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.fst_ctrl_handle*, %struct.fst_ctrl_handle** %4, align 8
  %26 = call i32 @os_free(%struct.fst_ctrl_handle* %25)
  store %struct.fst_ctrl_handle* null, %struct.fst_ctrl_handle** %2, align 8
  br label %37

27:                                               ; preds = %18, %13
  %28 = load %struct.fst_ctrl_handle*, %struct.fst_ctrl_handle** %4, align 8
  %29 = getelementptr inbounds %struct.fst_ctrl_handle, %struct.fst_ctrl_handle* %28, i32 0, i32 1
  %30 = load %struct.fst_ctrl*, %struct.fst_ctrl** %3, align 8
  %31 = bitcast %struct.fst_ctrl* %29 to i8*
  %32 = bitcast %struct.fst_ctrl* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = load %struct.fst_ctrl_handle*, %struct.fst_ctrl_handle** %4, align 8
  %34 = getelementptr inbounds %struct.fst_ctrl_handle, %struct.fst_ctrl_handle* %33, i32 0, i32 0
  %35 = call i32 @dl_list_add_tail(i32* @fst_global_ctrls_list, i32* %34)
  %36 = load %struct.fst_ctrl_handle*, %struct.fst_ctrl_handle** %4, align 8
  store %struct.fst_ctrl_handle* %36, %struct.fst_ctrl_handle** %2, align 8
  br label %37

37:                                               ; preds = %27, %24, %12, %7
  %38 = load %struct.fst_ctrl_handle*, %struct.fst_ctrl_handle** %2, align 8
  ret %struct.fst_ctrl_handle* %38
}

declare dso_local %struct.fst_ctrl_handle* @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.fst_ctrl_handle*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dl_list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
