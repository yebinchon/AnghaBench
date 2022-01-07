; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_iblinkinfo.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_iblinkinfo.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibnd_config = type { i8*, i8* }

@node_name_map_file = common dso_local global i8* null, align 8
@load_cache_file = common dso_local global i8* null, align 8
@diff_cache_file = common dso_local global i8* null, align 8
@diffcheck_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@DIFF_FLAG_PORT_CONNECTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@DIFF_FLAG_PORT_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"lid\00", align 1
@DIFF_FLAG_LID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"nodedesc\00", align 1
@DIFF_FLAG_NODE_DESCRIPTION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"invalid diff check key: %s\0A\00", align 1
@filterdownports_cache_file = common dso_local global i8* null, align 8
@only_flag = common dso_local global i32 0, align 4
@IB_NODE_SWITCH = common dso_local global i32 0, align 4
@only_type = common dso_local global i32 0, align 4
@IB_NODE_CA = common dso_local global i32 0, align 4
@guid_str = common dso_local global i8* null, align 8
@guid = common dso_local global i32 0, align 4
@dr_path = common dso_local global i8* null, align 8
@all = common dso_local global i32 0, align 4
@down_links_only = common dso_local global i32 0, align 4
@line_mode = common dso_local global i32 0, align 4
@add_sw_settings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @process_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_opt(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ibnd_config*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ibnd_config*
  store %struct.ibnd_config* %11, %struct.ibnd_config** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %99 [
    i32 1, label %13
    i32 2, label %16
    i32 3, label %19
    i32 4, label %22
    i32 5, label %70
    i32 6, label %73
    i32 7, label %75
    i32 83, label %77
    i32 71, label %77
    i32 68, label %81
    i32 97, label %84
    i32 110, label %85
    i32 100, label %90
    i32 108, label %91
    i32 112, label %92
    i32 82, label %93
    i32 111, label %94
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** @node_name_map_file, align 8
  br label %100

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** @load_cache_file, align 8
  br label %100

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @strdup(i8* %20)
  store i8* %21, i8** @diff_cache_file, align 8
  br label %100

22:                                               ; preds = %3
  store i32 0, i32* @diffcheck_flags, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strtok(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %67, %22
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strcasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %34 = load i32, i32* @diffcheck_flags, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @diffcheck_flags, align 4
  br label %67

36:                                               ; preds = %28
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strcasecmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @DIFF_FLAG_PORT_STATE, align 4
  %42 = load i32, i32* @diffcheck_flags, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @diffcheck_flags, align 4
  br label %66

44:                                               ; preds = %36
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @DIFF_FLAG_LID, align 4
  %50 = load i32, i32* @diffcheck_flags, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* @diffcheck_flags, align 4
  br label %65

52:                                               ; preds = %44
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @strcasecmp(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %58 = load i32, i32* @diffcheck_flags, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* @diffcheck_flags, align 4
  br label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  store i32 -1, i32* %4, align 4
  br label %101

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %48
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %32
  %68 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %68, i8** %9, align 8
  br label %25

69:                                               ; preds = %25
  br label %100

70:                                               ; preds = %3
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @strdup(i8* %71)
  store i8* %72, i8** @filterdownports_cache_file, align 8
  br label %100

73:                                               ; preds = %3
  store i32 1, i32* @only_flag, align 4
  %74 = load i32, i32* @IB_NODE_SWITCH, align 4
  store i32 %74, i32* @only_type, align 4
  br label %100

75:                                               ; preds = %3
  store i32 1, i32* @only_flag, align 4
  %76 = load i32, i32* @IB_NODE_CA, align 4
  store i32 %76, i32* @only_type, align 4
  br label %100

77:                                               ; preds = %3, %3
  %78 = load i8*, i8** %7, align 8
  store i8* %78, i8** @guid_str, align 8
  %79 = load i8*, i8** @guid_str, align 8
  %80 = call i32 @strtoull(i8* %79, i32 0, i32 0)
  store i32 %80, i32* @guid, align 4
  br label %100

81:                                               ; preds = %3
  %82 = load i8*, i8** %7, align 8
  %83 = call i8* @strdup(i8* %82)
  store i8* %83, i8** @dr_path, align 8
  br label %100

84:                                               ; preds = %3
  store i32 1, i32* @all, align 4
  br label %100

85:                                               ; preds = %3
  %86 = load i8*, i8** %7, align 8
  %87 = call i8* @strtoul(i8* %86, i32* null, i32 0)
  %88 = load %struct.ibnd_config*, %struct.ibnd_config** %8, align 8
  %89 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %100

90:                                               ; preds = %3
  store i32 1, i32* @down_links_only, align 4
  br label %100

91:                                               ; preds = %3
  store i32 1, i32* @line_mode, align 4
  br label %100

92:                                               ; preds = %3
  store i32 1, i32* @add_sw_settings, align 4
  br label %100

93:                                               ; preds = %3
  br label %100

94:                                               ; preds = %3
  %95 = load i8*, i8** %7, align 8
  %96 = call i8* @strtoul(i8* %95, i32* null, i32 0)
  %97 = load %struct.ibnd_config*, %struct.ibnd_config** %8, align 8
  %98 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %100

99:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %101

100:                                              ; preds = %94, %93, %92, %91, %90, %85, %84, %81, %77, %75, %73, %70, %69, %19, %16, %13
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %99, %60
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strtoull(i8*, i32, i32) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
