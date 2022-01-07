; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_view_and_respipchecks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_view_and_respipchecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32 }
%struct.views = type { i32 }
%struct.respip_set = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Could not create views: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not create respip set: out of memory\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Could not set up views\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not setup respip set\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Could not setup per-view respip sets\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*)* @view_and_respipchecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @view_and_respipchecks(%struct.config_file* %0) #0 {
  %2 = alloca %struct.config_file*, align 8
  %3 = alloca %struct.views*, align 8
  %4 = alloca %struct.respip_set*, align 8
  %5 = alloca i32, align 4
  store %struct.config_file* %0, %struct.config_file** %2, align 8
  store %struct.views* null, %struct.views** %3, align 8
  store %struct.respip_set* null, %struct.respip_set** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call %struct.views* (...) @views_create()
  store %struct.views* %6, %struct.views** %3, align 8
  %7 = icmp ne %struct.views* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @fatal_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = call %struct.respip_set* (...) @respip_set_create()
  store %struct.respip_set* %11, %struct.respip_set** %4, align 8
  %12 = icmp ne %struct.respip_set* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 @fatal_exit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load %struct.views*, %struct.views** %3, align 8
  %17 = load %struct.config_file*, %struct.config_file** %2, align 8
  %18 = call i32 @views_apply_cfg(%struct.views* %16, %struct.config_file* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @fatal_exit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load %struct.respip_set*, %struct.respip_set** %4, align 8
  %24 = load %struct.config_file*, %struct.config_file** %2, align 8
  %25 = call i32 @respip_global_apply_cfg(%struct.respip_set* %23, %struct.config_file* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @fatal_exit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.views*, %struct.views** %3, align 8
  %31 = load %struct.config_file*, %struct.config_file** %2, align 8
  %32 = call i32 @respip_views_apply_cfg(%struct.views* %30, %struct.config_file* %31, i32* %5)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = call i32 @fatal_exit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.views*, %struct.views** %3, align 8
  %38 = call i32 @views_delete(%struct.views* %37)
  %39 = load %struct.respip_set*, %struct.respip_set** %4, align 8
  %40 = call i32 @respip_set_delete(%struct.respip_set* %39)
  ret void
}

declare dso_local %struct.views* @views_create(...) #1

declare dso_local i32 @fatal_exit(i8*) #1

declare dso_local %struct.respip_set* @respip_set_create(...) #1

declare dso_local i32 @views_apply_cfg(%struct.views*, %struct.config_file*) #1

declare dso_local i32 @respip_global_apply_cfg(%struct.respip_set*, %struct.config_file*) #1

declare dso_local i32 @respip_views_apply_cfg(%struct.views*, %struct.config_file*, i32*) #1

declare dso_local i32 @views_delete(%struct.views*) #1

declare dso_local i32 @respip_set_delete(%struct.respip_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
