; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_process_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibnetdiscover.c_process_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibnd_config = type { i32, i32 }

@node_name_map_file = common dso_local global i8* null, align 8
@cache_file = common dso_local global i8* null, align 8
@load_cache_file = common dso_local global i8* null, align 8
@diff_cache_file = common dso_local global i8* null, align 8
@diffcheck_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@DIFF_FLAG_SWITCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@DIFF_FLAG_CA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"router\00", align 1
@DIFF_FLAG_ROUTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@DIFF_FLAG_PORT_CONNECTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"lid\00", align 1
@DIFF_FLAG_LID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"nodedesc\00", align 1
@DIFF_FLAG_NODE_DESCRIPTION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid diff check key: %s\0A\00", align 1
@full_info = common dso_local global i32 0, align 4
@LIST_CA_NODE = common dso_local global i32 0, align 4
@LIST_SWITCH_NODE = common dso_local global i32 0, align 4
@LIST_ROUTER_NODE = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@group = common dso_local global i32 0, align 4
@ports_report = common dso_local global i32 0, align 4
@report_max_hops = common dso_local global i32 0, align 4
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
  switch i32 %12, label %115 [
    i32 1, label %13
    i32 2, label %16
    i32 3, label %19
    i32 4, label %22
    i32 5, label %25
    i32 115, label %91
    i32 102, label %94
    i32 108, label %95
    i32 103, label %101
    i32 83, label %102
    i32 72, label %104
    i32 82, label %106
    i32 112, label %108
    i32 109, label %109
    i32 111, label %110
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strdup(i8* %14)
  store i8* %15, i8** @node_name_map_file, align 8
  br label %116

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strdup(i8* %17)
  store i8* %18, i8** @cache_file, align 8
  br label %116

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @strdup(i8* %20)
  store i8* %21, i8** @load_cache_file, align 8
  br label %116

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strdup(i8* %23)
  store i8* %24, i8** @diff_cache_file, align 8
  br label %116

25:                                               ; preds = %3
  store i32 0, i32* @diffcheck_flags, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strtok(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %88, %25
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %90

31:                                               ; preds = %28
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strcasecmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @DIFF_FLAG_SWITCH, align 4
  %37 = load i32, i32* @diffcheck_flags, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @diffcheck_flags, align 4
  br label %88

39:                                               ; preds = %31
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strcasecmp(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @DIFF_FLAG_CA, align 4
  %45 = load i32, i32* @diffcheck_flags, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* @diffcheck_flags, align 4
  br label %87

47:                                               ; preds = %39
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @strcasecmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @DIFF_FLAG_ROUTER, align 4
  %53 = load i32, i32* @diffcheck_flags, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* @diffcheck_flags, align 4
  br label %86

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strcasecmp(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @DIFF_FLAG_PORT_CONNECTION, align 4
  %61 = load i32, i32* @diffcheck_flags, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @diffcheck_flags, align 4
  br label %85

63:                                               ; preds = %55
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strcasecmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @DIFF_FLAG_LID, align 4
  %69 = load i32, i32* @diffcheck_flags, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* @diffcheck_flags, align 4
  br label %84

71:                                               ; preds = %63
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strcasecmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @DIFF_FLAG_NODE_DESCRIPTION, align 4
  %77 = load i32, i32* @diffcheck_flags, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* @diffcheck_flags, align 4
  br label %83

79:                                               ; preds = %71
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  store i32 -1, i32* %4, align 4
  br label %117

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %59
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86, %43
  br label %88

88:                                               ; preds = %87, %35
  %89 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %89, i8** %9, align 8
  br label %28

90:                                               ; preds = %28
  br label %116

91:                                               ; preds = %3
  %92 = load %struct.ibnd_config*, %struct.ibnd_config** %8, align 8
  %93 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  br label %116

94:                                               ; preds = %3
  store i32 1, i32* @full_info, align 4
  br label %116

95:                                               ; preds = %3
  %96 = load i32, i32* @LIST_CA_NODE, align 4
  %97 = load i32, i32* @LIST_SWITCH_NODE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @LIST_ROUTER_NODE, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* @list, align 4
  br label %116

101:                                              ; preds = %3
  store i32 1, i32* @group, align 4
  br label %116

102:                                              ; preds = %3
  %103 = load i32, i32* @LIST_SWITCH_NODE, align 4
  store i32 %103, i32* @list, align 4
  br label %116

104:                                              ; preds = %3
  %105 = load i32, i32* @LIST_CA_NODE, align 4
  store i32 %105, i32* @list, align 4
  br label %116

106:                                              ; preds = %3
  %107 = load i32, i32* @LIST_ROUTER_NODE, align 4
  store i32 %107, i32* @list, align 4
  br label %116

108:                                              ; preds = %3
  store i32 1, i32* @ports_report, align 4
  br label %116

109:                                              ; preds = %3
  store i32 1, i32* @report_max_hops, align 4
  br label %116

110:                                              ; preds = %3
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @strtoul(i8* %111, i32* null, i32 0)
  %113 = load %struct.ibnd_config*, %struct.ibnd_config** %8, align 8
  %114 = getelementptr inbounds %struct.ibnd_config, %struct.ibnd_config* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %116

115:                                              ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %117

116:                                              ; preds = %110, %109, %108, %106, %104, %102, %101, %95, %94, %91, %90, %22, %19, %16, %13
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %115, %79
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
