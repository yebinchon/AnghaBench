; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_read_acl_view.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_read_acl_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32 }
%struct.config_file = type { %struct.config_str2list* }
%struct.config_str2list = type { %struct.config_str2list*, %struct.config_str2list*, %struct.config_str2list* }
%struct.views = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acl_list*, %struct.config_file*, %struct.views*)* @read_acl_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_acl_view(%struct.acl_list* %0, %struct.config_file* %1, %struct.views* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acl_list*, align 8
  %6 = alloca %struct.config_file*, align 8
  %7 = alloca %struct.views*, align 8
  %8 = alloca %struct.config_str2list*, align 8
  %9 = alloca %struct.config_str2list*, align 8
  store %struct.acl_list* %0, %struct.acl_list** %5, align 8
  store %struct.config_file* %1, %struct.config_file** %6, align 8
  store %struct.views* %2, %struct.views** %7, align 8
  %10 = load %struct.config_file*, %struct.config_file** %6, align 8
  %11 = getelementptr inbounds %struct.config_file, %struct.config_file* %10, i32 0, i32 0
  %12 = load %struct.config_str2list*, %struct.config_str2list** %11, align 8
  store %struct.config_str2list* %12, %struct.config_str2list** %9, align 8
  %13 = load %struct.config_file*, %struct.config_file** %6, align 8
  %14 = getelementptr inbounds %struct.config_file, %struct.config_file* %13, i32 0, i32 0
  store %struct.config_str2list* null, %struct.config_str2list** %14, align 8
  br label %15

15:                                               ; preds = %43, %3
  %16 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %17 = icmp ne %struct.config_str2list* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %20 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %19, i32 0, i32 1
  %21 = load %struct.config_str2list*, %struct.config_str2list** %20, align 8
  %22 = icmp ne %struct.config_str2list* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %25 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %24, i32 0, i32 0
  %26 = load %struct.config_str2list*, %struct.config_str2list** %25, align 8
  %27 = icmp ne %struct.config_str2list* %26, null
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @log_assert(i32 %30)
  %32 = load %struct.acl_list*, %struct.acl_list** %5, align 8
  %33 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %34 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %33, i32 0, i32 1
  %35 = load %struct.config_str2list*, %struct.config_str2list** %34, align 8
  %36 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %37 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %36, i32 0, i32 0
  %38 = load %struct.config_str2list*, %struct.config_str2list** %37, align 8
  %39 = load %struct.views*, %struct.views** %7, align 8
  %40 = call i32 @acl_list_view_cfg(%struct.acl_list* %32, %struct.config_str2list* %35, %struct.config_str2list* %38, %struct.views* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %59

43:                                               ; preds = %28
  %44 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %45 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %44, i32 0, i32 2
  %46 = load %struct.config_str2list*, %struct.config_str2list** %45, align 8
  store %struct.config_str2list* %46, %struct.config_str2list** %8, align 8
  %47 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %48 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %47, i32 0, i32 1
  %49 = load %struct.config_str2list*, %struct.config_str2list** %48, align 8
  %50 = call i32 @free(%struct.config_str2list* %49)
  %51 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %52 = getelementptr inbounds %struct.config_str2list, %struct.config_str2list* %51, i32 0, i32 0
  %53 = load %struct.config_str2list*, %struct.config_str2list** %52, align 8
  %54 = call i32 @free(%struct.config_str2list* %53)
  %55 = load %struct.config_str2list*, %struct.config_str2list** %9, align 8
  %56 = call i32 @free(%struct.config_str2list* %55)
  %57 = load %struct.config_str2list*, %struct.config_str2list** %8, align 8
  store %struct.config_str2list* %57, %struct.config_str2list** %9, align 8
  br label %15

58:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @acl_list_view_cfg(%struct.acl_list*, %struct.config_str2list*, %struct.config_str2list*, %struct.views*) #1

declare dso_local i32 @free(%struct.config_str2list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
