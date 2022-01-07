; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_session_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_session_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_group = type { i32 }
%struct.fst_session = type { i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CTRL: Cannot find group '%s'\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"CTRL: Cannot create session for group '%s'\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @session_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_add(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fst_group*, align 8
  %9 = alloca %struct.fst_session*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.fst_group* @get_fst_group_by_id(i8* %10)
  store %struct.fst_group* %11, %struct.fst_group** %8, align 8
  %12 = load %struct.fst_group*, %struct.fst_group** %8, align 8
  %13 = icmp ne %struct.fst_group* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_WARNING, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @fst_printf(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %18, i64 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.fst_group*, %struct.fst_group** %8, align 8
  %23 = call %struct.fst_session* @fst_session_create(%struct.fst_group* %22)
  store %struct.fst_session* %23, %struct.fst_session** %9, align 8
  %24 = load %struct.fst_session*, %struct.fst_session** %9, align 8
  %25 = icmp ne %struct.fst_session* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @MSG_ERROR, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @fst_printf(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %21
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.fst_session*, %struct.fst_session** %9, align 8
  %37 = call i32 @fst_session_get_id(%struct.fst_session* %36)
  %38 = call i32 (i8*, i64, i8*, ...) @os_snprintf(i8* %34, i64 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %26, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.fst_group* @get_fst_group_by_id(i8*) #1

declare dso_local i32 @fst_printf(i32, i8*, i8*) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*, ...) #1

declare dso_local %struct.fst_session* @fst_session_create(%struct.fst_group*) #1

declare dso_local i32 @fst_session_get_id(%struct.fst_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
