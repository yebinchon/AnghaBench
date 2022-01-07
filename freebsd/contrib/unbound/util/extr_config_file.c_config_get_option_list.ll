; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_get_option_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_config_get_option_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i32 }
%struct.config_strlist = type { i32 }
%struct.config_collate_arg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.config_strlist* }

@config_collate_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_get_option_list(%struct.config_file* %0, i8* %1, %struct.config_strlist** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.config_strlist**, align 8
  %8 = alloca %struct.config_collate_arg, align 8
  store %struct.config_file* %0, %struct.config_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.config_strlist** %2, %struct.config_strlist*** %7, align 8
  %9 = call i32 @memset(%struct.config_collate_arg* %8, i32 0, i32 16)
  %10 = load %struct.config_strlist**, %struct.config_strlist*** %7, align 8
  store %struct.config_strlist* null, %struct.config_strlist** %10, align 8
  %11 = load %struct.config_file*, %struct.config_file** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @config_collate_func, align 4
  %14 = call i32 @config_get_option(%struct.config_file* %11, i8* %12, i32 %13, %struct.config_collate_arg* %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %31

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.config_collate_arg, %struct.config_collate_arg* %8, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.config_collate_arg, %struct.config_collate_arg* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.config_strlist*, %struct.config_strlist** %23, align 8
  %25 = call i32 @config_delstrlist(%struct.config_strlist* %24)
  store i32 2, i32* %4, align 4
  br label %31

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.config_collate_arg, %struct.config_collate_arg* %8, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.config_strlist*, %struct.config_strlist** %28, align 8
  %30 = load %struct.config_strlist**, %struct.config_strlist*** %7, align 8
  store %struct.config_strlist* %29, %struct.config_strlist** %30, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %21, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.config_collate_arg*, i32, i32) #1

declare dso_local i32 @config_get_option(%struct.config_file*, i8*, i32, %struct.config_collate_arg*) #1

declare dso_local i32 @config_delstrlist(%struct.config_strlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
