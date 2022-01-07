; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_caps_white_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_caps_white_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }
%struct.name_tree_node = type { i64, %struct.name_tree_node*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.name_tree_node* }

@.str = private unnamed_addr constant [19 x i8] c"could not parse %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.config_file*)* @caps_white_apply_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caps_white_apply_cfg(i32* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca %struct.name_tree_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.name_tree_node*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %10 = load %struct.config_file*, %struct.config_file** %5, align 8
  %11 = getelementptr inbounds %struct.config_file, %struct.config_file* %10, i32 0, i32 0
  %12 = load %struct.config_strlist*, %struct.config_strlist** %11, align 8
  store %struct.config_strlist* %12, %struct.config_strlist** %6, align 8
  br label %13

13:                                               ; preds = %75, %2
  %14 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %15 = icmp ne %struct.config_strlist* %14, null
  br i1 %15, label %16, label %79

16:                                               ; preds = %13
  %17 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %18 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.name_tree_node* @sldns_str2wire_dname(i32 %19, i64* %8)
  store %struct.name_tree_node* %20, %struct.name_tree_node** %9, align 8
  %21 = load %struct.name_tree_node*, %struct.name_tree_node** %9, align 8
  %22 = icmp ne %struct.name_tree_node* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %25 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %3, align 4
  br label %82

28:                                               ; preds = %16
  %29 = call i64 @calloc(i32 1, i32 32)
  %30 = inttoptr i64 %29 to %struct.name_tree_node*
  store %struct.name_tree_node* %30, %struct.name_tree_node** %7, align 8
  %31 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %32 = icmp ne %struct.name_tree_node* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.name_tree_node*, %struct.name_tree_node** %9, align 8
  %36 = call i32 @free(%struct.name_tree_node* %35)
  store i32 0, i32* %3, align 4
  br label %82

37:                                               ; preds = %28
  %38 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %39 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %40 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.name_tree_node* %38, %struct.name_tree_node** %41, align 8
  %42 = load %struct.name_tree_node*, %struct.name_tree_node** %9, align 8
  %43 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %44 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %43, i32 0, i32 1
  store %struct.name_tree_node* %42, %struct.name_tree_node** %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %47 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.name_tree_node*, %struct.name_tree_node** %9, align 8
  %49 = call i32 @dname_count_labels(%struct.name_tree_node* %48)
  %50 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %51 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %53 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %54 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %57 = load %struct.name_tree_node*, %struct.name_tree_node** %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %60 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %63 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @name_tree_insert(i32* %55, %struct.name_tree_node* %56, %struct.name_tree_node* %57, i64 %58, i32 %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %37
  %68 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %69 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %68, i32 0, i32 1
  %70 = load %struct.name_tree_node*, %struct.name_tree_node** %69, align 8
  %71 = call i32 @free(%struct.name_tree_node* %70)
  %72 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %73 = call i32 @free(%struct.name_tree_node* %72)
  br label %74

74:                                               ; preds = %67, %37
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %77 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %76, i32 0, i32 1
  %78 = load %struct.config_strlist*, %struct.config_strlist** %77, align 8
  store %struct.config_strlist* %78, %struct.config_strlist** %6, align 8
  br label %13

79:                                               ; preds = %13
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @name_tree_init_parents(i32* %80)
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %33, %23
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.name_tree_node* @sldns_str2wire_dname(i32, i64*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.name_tree_node*) #1

declare dso_local i32 @dname_count_labels(%struct.name_tree_node*) #1

declare dso_local i32 @name_tree_insert(i32*, %struct.name_tree_node*, %struct.name_tree_node*, i64, i32, i32) #1

declare dso_local i32 @name_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
