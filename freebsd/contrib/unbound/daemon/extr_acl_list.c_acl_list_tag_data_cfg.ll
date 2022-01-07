; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_tag_data_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_acl_list.c_acl_list_tag_data_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acl_list = type { i32 }
%struct.config_file = type { i32 }
%struct.acl_addr = type { i64, %struct.config_strlist** }
%struct.config_strlist = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot parse tag (define-tag it): %s %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"tagid too large for array %s %s\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot parse access-control-tag data: %s %s '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acl_list*, %struct.config_file*, i8*, i8*, i8*)* @acl_list_tag_data_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_list_tag_data_cfg(%struct.acl_list* %0, %struct.config_file* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.acl_list*, align 8
  %8 = alloca %struct.config_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.acl_addr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.acl_list* %0, %struct.acl_list** %7, align 8
  store %struct.config_file* %1, %struct.config_file** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.acl_list*, %struct.acl_list** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call %struct.acl_addr* @acl_find_or_create(%struct.acl_list* %15, i8* %16)
  store %struct.acl_addr* %17, %struct.acl_addr** %12, align 8
  %18 = icmp ne %struct.acl_addr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %114

20:                                               ; preds = %5
  %21 = load %struct.acl_addr*, %struct.acl_addr** %12, align 8
  %22 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %21, i32 0, i32 1
  %23 = load %struct.config_strlist**, %struct.config_strlist*** %22, align 8
  %24 = icmp ne %struct.config_strlist** %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %20
  %26 = load %struct.acl_list*, %struct.acl_list** %7, align 8
  %27 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.config_file*, %struct.config_file** %8, align 8
  %30 = getelementptr inbounds %struct.config_file, %struct.config_file* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i64 @regional_alloc_zero(i32 %28, i32 %34)
  %36 = inttoptr i64 %35 to %struct.config_strlist**
  %37 = load %struct.acl_addr*, %struct.acl_addr** %12, align 8
  %38 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %37, i32 0, i32 1
  store %struct.config_strlist** %36, %struct.config_strlist*** %38, align 8
  %39 = load %struct.acl_addr*, %struct.acl_addr** %12, align 8
  %40 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %39, i32 0, i32 1
  %41 = load %struct.config_strlist**, %struct.config_strlist*** %40, align 8
  %42 = icmp ne %struct.config_strlist** %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %25
  %44 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %114

45:                                               ; preds = %25
  %46 = load %struct.config_file*, %struct.config_file** %8, align 8
  %47 = getelementptr inbounds %struct.config_file, %struct.config_file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.acl_addr*, %struct.acl_addr** %12, align 8
  %51 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %20
  %53 = load %struct.config_file*, %struct.config_file** %8, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @find_tag_id(%struct.config_file* %53, i8* %54)
  store i32 %55, i32* %13, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %59)
  store i32 0, i32* %6, align 4
  br label %114

61:                                               ; preds = %52
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.acl_addr*, %struct.acl_addr** %12, align 8
  %65 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i8*, i8** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %70)
  store i32 0, i32* %6, align 4
  br label %114

72:                                               ; preds = %61
  %73 = load i8*, i8** %11, align 8
  %74 = load %struct.acl_addr*, %struct.acl_addr** %12, align 8
  %75 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %74, i32 0, i32 1
  %76 = load %struct.config_strlist**, %struct.config_strlist*** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.config_strlist*, %struct.config_strlist** %76, i64 %78
  %80 = load %struct.config_strlist*, %struct.config_strlist** %79, align 8
  %81 = call i32 @check_data(i8* %73, %struct.config_strlist* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %72
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %84, i8* %85, i8* %86)
  store i32 0, i32* %6, align 4
  br label %114

88:                                               ; preds = %72
  %89 = load %struct.acl_list*, %struct.acl_list** %7, align 8
  %90 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %11, align 8
  %93 = call i8* @regional_strdup(i32 %91, i8* %92)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %88
  %97 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %114

98:                                               ; preds = %88
  %99 = load %struct.acl_list*, %struct.acl_list** %7, align 8
  %100 = getelementptr inbounds %struct.acl_list, %struct.acl_list* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.acl_addr*, %struct.acl_addr** %12, align 8
  %103 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %102, i32 0, i32 1
  %104 = load %struct.config_strlist**, %struct.config_strlist*** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.config_strlist*, %struct.config_strlist** %104, i64 %106
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @cfg_region_strlist_insert(i32 %101, %struct.config_strlist** %107, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %98
  %112 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %114

113:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %111, %96, %83, %68, %57, %43, %19
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.acl_addr* @acl_find_or_create(%struct.acl_list*, i8*) #1

declare dso_local i64 @regional_alloc_zero(i32, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @find_tag_id(%struct.config_file*, i8*) #1

declare dso_local i32 @check_data(i8*, %struct.config_strlist*) #1

declare dso_local i8* @regional_strdup(i32, i8*) #1

declare dso_local i32 @cfg_region_strlist_insert(i32, %struct.config_strlist**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
