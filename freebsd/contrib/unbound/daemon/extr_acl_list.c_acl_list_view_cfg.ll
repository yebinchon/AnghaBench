; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_view_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_view_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32 }
%struct.views = type { i32 }
%struct.acl_addr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"no view with name: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acl_list*, i8*, i8*, %struct.views*)* @acl_list_view_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_list_view_cfg(%struct.acl_list* %0, i8* %1, i8* %2, %struct.views* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acl_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.views*, align 8
  %10 = alloca %struct.acl_addr*, align 8
  store %struct.acl_list* %0, %struct.acl_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.views* %3, %struct.views** %9, align 8
  %11 = load %struct.acl_list*, %struct.acl_list** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.acl_addr* @acl_find_or_create(%struct.acl_list* %11, i8* %12)
  store %struct.acl_addr* %13, %struct.acl_addr** %10, align 8
  %14 = icmp ne %struct.acl_addr* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

16:                                               ; preds = %4
  %17 = load %struct.views*, %struct.views** %9, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call %struct.TYPE_2__* @views_find_view(%struct.views* %17, i8* %18, i32 0)
  %20 = load %struct.acl_addr*, %struct.acl_addr** %10, align 8
  %21 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %20, i32 0, i32 0
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %21, align 8
  %22 = load %struct.acl_addr*, %struct.acl_addr** %10, align 8
  %23 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32 0, i32* %5, align 4
  br label %35

29:                                               ; preds = %16
  %30 = load %struct.acl_addr*, %struct.acl_addr** %10, align 8
  %31 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @lock_rw_unlock(i32* %33)
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %26, %15
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.acl_addr* @acl_find_or_create(%struct.acl_list*, i8*) #1

declare dso_local %struct.TYPE_2__* @views_find_view(%struct.views*, i8*, i32) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
