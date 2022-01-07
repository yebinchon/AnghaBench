; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_read_acl_tag_datas.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_read_acl_tag_datas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32 }
%struct.config_file = type { %struct.config_str3list* }
%struct.config_str3list = type { %struct.config_str3list*, %struct.config_str3list*, %struct.config_str3list*, %struct.config_str3list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acl_list*, %struct.config_file*)* @read_acl_tag_datas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_acl_tag_datas(%struct.acl_list* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acl_list*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_str3list*, align 8
  %7 = alloca %struct.config_str3list*, align 8
  store %struct.acl_list* %0, %struct.acl_list** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %8 = load %struct.config_file*, %struct.config_file** %5, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 0
  %10 = load %struct.config_str3list*, %struct.config_str3list** %9, align 8
  store %struct.config_str3list* %10, %struct.config_str3list** %6, align 8
  %11 = load %struct.config_file*, %struct.config_file** %5, align 8
  %12 = getelementptr inbounds %struct.config_file, %struct.config_file* %11, i32 0, i32 0
  store %struct.config_str3list* null, %struct.config_str3list** %12, align 8
  br label %13

13:                                               ; preds = %51, %2
  %14 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %15 = icmp ne %struct.config_str3list* %14, null
  br i1 %15, label %16, label %70

16:                                               ; preds = %13
  %17 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %18 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %17, i32 0, i32 2
  %19 = load %struct.config_str3list*, %struct.config_str3list** %18, align 8
  %20 = icmp ne %struct.config_str3list* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %23 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %22, i32 0, i32 1
  %24 = load %struct.config_str3list*, %struct.config_str3list** %23, align 8
  %25 = icmp ne %struct.config_str3list* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %28 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %27, i32 0, i32 0
  %29 = load %struct.config_str3list*, %struct.config_str3list** %28, align 8
  %30 = icmp ne %struct.config_str3list* %29, null
  br label %31

31:                                               ; preds = %26, %21, %16
  %32 = phi i1 [ false, %21 ], [ false, %16 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @log_assert(i32 %33)
  %35 = load %struct.acl_list*, %struct.acl_list** %4, align 8
  %36 = load %struct.config_file*, %struct.config_file** %5, align 8
  %37 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %38 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %37, i32 0, i32 2
  %39 = load %struct.config_str3list*, %struct.config_str3list** %38, align 8
  %40 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %41 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %40, i32 0, i32 1
  %42 = load %struct.config_str3list*, %struct.config_str3list** %41, align 8
  %43 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %44 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %43, i32 0, i32 0
  %45 = load %struct.config_str3list*, %struct.config_str3list** %44, align 8
  %46 = call i32 @acl_list_tag_data_cfg(%struct.acl_list* %35, %struct.config_file* %36, %struct.config_str3list* %39, %struct.config_str3list* %42, %struct.config_str3list* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %31
  %49 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %50 = call i32 @config_deltrplstrlist(%struct.config_str3list* %49)
  store i32 0, i32* %3, align 4
  br label %71

51:                                               ; preds = %31
  %52 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %53 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %52, i32 0, i32 3
  %54 = load %struct.config_str3list*, %struct.config_str3list** %53, align 8
  store %struct.config_str3list* %54, %struct.config_str3list** %7, align 8
  %55 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %56 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %55, i32 0, i32 2
  %57 = load %struct.config_str3list*, %struct.config_str3list** %56, align 8
  %58 = call i32 @free(%struct.config_str3list* %57)
  %59 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %60 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %59, i32 0, i32 1
  %61 = load %struct.config_str3list*, %struct.config_str3list** %60, align 8
  %62 = call i32 @free(%struct.config_str3list* %61)
  %63 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %64 = getelementptr inbounds %struct.config_str3list, %struct.config_str3list* %63, i32 0, i32 0
  %65 = load %struct.config_str3list*, %struct.config_str3list** %64, align 8
  %66 = call i32 @free(%struct.config_str3list* %65)
  %67 = load %struct.config_str3list*, %struct.config_str3list** %6, align 8
  %68 = call i32 @free(%struct.config_str3list* %67)
  %69 = load %struct.config_str3list*, %struct.config_str3list** %7, align 8
  store %struct.config_str3list* %69, %struct.config_str3list** %6, align 8
  br label %13

70:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @acl_list_tag_data_cfg(%struct.acl_list*, %struct.config_file*, %struct.config_str3list*, %struct.config_str3list*, %struct.config_str3list*) #1

declare dso_local i32 @config_deltrplstrlist(%struct.config_str3list*) #1

declare dso_local i32 @free(%struct.config_str3list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
