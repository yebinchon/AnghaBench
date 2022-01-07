; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_read_acl_tags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_read_acl_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32 }
%struct.config_file = type { %struct.config_strbytelist* }
%struct.config_strbytelist = type { %struct.config_strbytelist*, %struct.config_strbytelist*, %struct.config_strbytelist*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acl_list*, %struct.config_file*)* @read_acl_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_acl_tags(%struct.acl_list* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acl_list*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strbytelist*, align 8
  %7 = alloca %struct.config_strbytelist*, align 8
  store %struct.acl_list* %0, %struct.acl_list** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %8 = load %struct.config_file*, %struct.config_file** %5, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 0
  %10 = load %struct.config_strbytelist*, %struct.config_strbytelist** %9, align 8
  store %struct.config_strbytelist* %10, %struct.config_strbytelist** %7, align 8
  %11 = load %struct.config_file*, %struct.config_file** %5, align 8
  %12 = getelementptr inbounds %struct.config_file, %struct.config_file* %11, i32 0, i32 0
  store %struct.config_strbytelist* null, %struct.config_strbytelist** %12, align 8
  br label %13

13:                                               ; preds = %45, %2
  %14 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %15 = icmp ne %struct.config_strbytelist* %14, null
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %18 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %17, i32 0, i32 1
  %19 = load %struct.config_strbytelist*, %struct.config_strbytelist** %18, align 8
  %20 = icmp ne %struct.config_strbytelist* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %23 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %22, i32 0, i32 0
  %24 = load %struct.config_strbytelist*, %struct.config_strbytelist** %23, align 8
  %25 = icmp ne %struct.config_strbytelist* %24, null
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load %struct.acl_list*, %struct.acl_list** %4, align 8
  %31 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %32 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %31, i32 0, i32 1
  %33 = load %struct.config_strbytelist*, %struct.config_strbytelist** %32, align 8
  %34 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %35 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %34, i32 0, i32 0
  %36 = load %struct.config_strbytelist*, %struct.config_strbytelist** %35, align 8
  %37 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %38 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @acl_list_tags_cfg(%struct.acl_list* %30, %struct.config_strbytelist* %33, %struct.config_strbytelist* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %26
  %43 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %44 = call i32 @config_del_strbytelist(%struct.config_strbytelist* %43)
  store i32 0, i32* %3, align 4
  br label %61

45:                                               ; preds = %26
  %46 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %47 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %46, i32 0, i32 2
  %48 = load %struct.config_strbytelist*, %struct.config_strbytelist** %47, align 8
  store %struct.config_strbytelist* %48, %struct.config_strbytelist** %6, align 8
  %49 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %50 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %49, i32 0, i32 1
  %51 = load %struct.config_strbytelist*, %struct.config_strbytelist** %50, align 8
  %52 = call i32 @free(%struct.config_strbytelist* %51)
  %53 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %54 = getelementptr inbounds %struct.config_strbytelist, %struct.config_strbytelist* %53, i32 0, i32 0
  %55 = load %struct.config_strbytelist*, %struct.config_strbytelist** %54, align 8
  %56 = call i32 @free(%struct.config_strbytelist* %55)
  %57 = load %struct.config_strbytelist*, %struct.config_strbytelist** %7, align 8
  %58 = call i32 @free(%struct.config_strbytelist* %57)
  %59 = load %struct.config_strbytelist*, %struct.config_strbytelist** %6, align 8
  store %struct.config_strbytelist* %59, %struct.config_strbytelist** %7, align 8
  br label %13

60:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @acl_list_tags_cfg(%struct.acl_list*, %struct.config_strbytelist*, %struct.config_strbytelist*, i32) #1

declare dso_local i32 @config_del_strbytelist(%struct.config_strbytelist*) #1

declare dso_local i32 @free(%struct.config_strbytelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
