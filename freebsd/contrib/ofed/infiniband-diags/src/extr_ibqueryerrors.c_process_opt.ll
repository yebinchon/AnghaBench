; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibqueryerrors.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibnd_config = type { i32 }

@IB_PC_ERR_SWITCH_REL_F = common dso_local global i32 0, align 4
@node_name_map_file = common dso_local global i8* null, align 8
@data_counters = common dso_local global i32 0, align 4
@PRINT_SWITCH = common dso_local global i32 0, align 4
@node_type_to_print = common dso_local global i32 0, align 4
@PRINT_CA = common dso_local global i32 0, align 4
@PRINT_ROUTER = common dso_local global i32 0, align 4
@details = common dso_local global i32 0, align 4
@load_cache_file = common dso_local global i8* null, align 8
@threshold_file = common dso_local global i8* null, align 8
@data_counters_only = common dso_local global i32 0, align 4
@obtain_sl = common dso_local global i32 0, align 4
@port_guid_str = common dso_local global i8* null, align 8
@port_guid = common dso_local global i32 0, align 4
@dr_path = common dso_local global i8* null, align 8
@port_config = common dso_local global i32 0, align 4
@clear_errors = common dso_local global i32 0, align 4
@clear_counts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @process_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_opt(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ibnd_config*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ibnd_config*
  store %struct.ibnd_config* %10, %struct.ibnd_config** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %63 [
    i32 115, label %12
    i32 99, label %15
    i32 1, label %18
    i32 2, label %21
    i32 3, label %24
    i32 4, label %28
    i32 5, label %32
    i32 6, label %36
    i32 7, label %37
    i32 8, label %40
    i32 9, label %43
    i32 10, label %44
    i32 71, label %45
    i32 83, label %45
    i32 68, label %49
    i32 114, label %52
    i32 82, label %55
    i32 107, label %56
    i32 75, label %57
    i32 111, label %58
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @calculate_suppressed_fields(i8* %13)
  br label %64

15:                                               ; preds = %3
  %16 = load i32, i32* @IB_PC_ERR_SWITCH_REL_F, align 4
  %17 = call i32 @add_suppressed(i32 %16)
  br label %64

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i8* @strdup(i8* %19)
  store i8* %20, i8** @node_name_map_file, align 8
  br label %64

21:                                               ; preds = %3
  %22 = load i32, i32* @data_counters, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @data_counters, align 4
  br label %64

24:                                               ; preds = %3
  %25 = load i32, i32* @PRINT_SWITCH, align 4
  %26 = load i32, i32* @node_type_to_print, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @node_type_to_print, align 4
  br label %64

28:                                               ; preds = %3
  %29 = load i32, i32* @PRINT_CA, align 4
  %30 = load i32, i32* @node_type_to_print, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @node_type_to_print, align 4
  br label %64

32:                                               ; preds = %3
  %33 = load i32, i32* @PRINT_ROUTER, align 4
  %34 = load i32, i32* @node_type_to_print, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @node_type_to_print, align 4
  br label %64

36:                                               ; preds = %3
  store i32 1, i32* @details, align 4
  br label %64

37:                                               ; preds = %3
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strdup(i8* %38)
  store i8* %39, i8** @load_cache_file, align 8
  br label %64

40:                                               ; preds = %3
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @strdup(i8* %41)
  store i8* %42, i8** @threshold_file, align 8
  br label %64

43:                                               ; preds = %3
  store i32 1, i32* @data_counters_only, align 4
  br label %64

44:                                               ; preds = %3
  store i32 0, i32* @obtain_sl, align 4
  br label %64

45:                                               ; preds = %3, %3
  %46 = load i8*, i8** %7, align 8
  store i8* %46, i8** @port_guid_str, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strtoull(i8* %47, i32 0, i32 0)
  store i32 %48, i32* @port_guid, align 4
  br label %64

49:                                               ; preds = %3
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @strdup(i8* %50)
  store i8* %51, i8** @dr_path, align 8
  br label %64

52:                                               ; preds = %3
  %53 = load i32, i32* @port_config, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @port_config, align 4
  br label %64

55:                                               ; preds = %3
  br label %64

56:                                               ; preds = %3
  store i32 1, i32* @clear_errors, align 4
  br label %64

57:                                               ; preds = %3
  store i32 1, i32* @clear_counts, align 4
  br label %64

58:                                               ; preds = %3
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strtoul(i8* %59, i32* null, i32 0)
  %61 = load %struct.ibnd_config*, %struct.ibnd_config** %8, align 8
  %62 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %64

63:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %65

64:                                               ; preds = %58, %57, %56, %55, %52, %49, %45, %44, %43, %40, %37, %36, %32, %28, %24, %21, %18, %15, %12
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @calculate_suppressed_fields(i8*) #1

declare dso_local i32 @add_suppressed(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strtoull(i8*, i32, i32) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
