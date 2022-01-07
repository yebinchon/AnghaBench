; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_session_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_session_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { i32 }
%struct.fst_group = type { i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CTRL: Cannot find session %u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @session_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_remove(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fst_session*, align 8
  %9 = alloca %struct.fst_group*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strtoul(i8* %11, i32* null, i32 0)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call %struct.fst_session* @fst_session_get_by_id(i32 %13)
  store %struct.fst_session* %14, %struct.fst_session** %8, align 8
  %15 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %16 = icmp ne %struct.fst_session* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_WARNING, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @fst_printf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @os_snprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %3
  %25 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %26 = call %struct.fst_group* @fst_session_get_group(%struct.fst_session* %25)
  store %struct.fst_group* %26, %struct.fst_group** %9, align 8
  %27 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %28 = call i32 @fst_session_reset(%struct.fst_session* %27)
  %29 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %30 = call i32 @fst_session_delete(%struct.fst_session* %29)
  %31 = load %struct.fst_group*, %struct.fst_group** %9, align 8
  %32 = call i32 @fst_group_delete_if_empty(%struct.fst_group* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @os_snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %24, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local %struct.fst_session* @fst_session_get_by_id(i32) #1

declare dso_local i32 @fst_printf(i32, i8*, i32) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*) #1

declare dso_local %struct.fst_group* @fst_session_get_group(%struct.fst_session*) #1

declare dso_local i32 @fst_session_reset(%struct.fst_session*) #1

declare dso_local i32 @fst_session_delete(%struct.fst_session*) #1

declare dso_local i32 @fst_group_delete_if_empty(%struct.fst_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
