; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_region_strlist_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_config_file.c_cfg_region_strlist_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.config_strlist = type { i8*, %struct.config_strlist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg_region_strlist_insert(%struct.regional* %0, %struct.config_strlist** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.config_strlist**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_strlist*, align 8
  store %struct.regional* %0, %struct.regional** %5, align 8
  store %struct.config_strlist** %1, %struct.config_strlist*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.config_strlist**, %struct.config_strlist*** %6, align 8
  %13 = icmp ne %struct.config_strlist** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %32

15:                                               ; preds = %11
  %16 = load %struct.regional*, %struct.regional** %5, align 8
  %17 = call i64 @regional_alloc_zero(%struct.regional* %16, i32 16)
  %18 = inttoptr i64 %17 to %struct.config_strlist*
  store %struct.config_strlist* %18, %struct.config_strlist** %8, align 8
  %19 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %20 = icmp ne %struct.config_strlist* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %32

22:                                               ; preds = %15
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %25 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.config_strlist**, %struct.config_strlist*** %6, align 8
  %27 = load %struct.config_strlist*, %struct.config_strlist** %26, align 8
  %28 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %29 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %28, i32 0, i32 1
  store %struct.config_strlist* %27, %struct.config_strlist** %29, align 8
  %30 = load %struct.config_strlist*, %struct.config_strlist** %8, align 8
  %31 = load %struct.config_strlist**, %struct.config_strlist*** %6, align 8
  store %struct.config_strlist* %30, %struct.config_strlist** %31, align 8
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %21, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @regional_alloc_zero(%struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
