; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_read_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_read_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_priv = type { i32, i32 }
%struct.config_file = type { %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }
%struct.name_tree_node = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"cannot parse private-domain: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"ignoring duplicate private-domain: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_priv*, %struct.config_file*)* @read_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_names(%struct.iter_priv* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_priv*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca %struct.name_tree_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iter_priv* %0, %struct.iter_priv** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %12 = load %struct.config_file*, %struct.config_file** %5, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 0
  %14 = load %struct.config_strlist*, %struct.config_strlist** %13, align 8
  store %struct.config_strlist* %14, %struct.config_strlist** %6, align 8
  br label %15

15:                                               ; preds = %77, %2
  %16 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %17 = icmp ne %struct.config_strlist* %16, null
  br i1 %17, label %18, label %81

18:                                               ; preds = %15
  %19 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %20 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @log_assert(i32 %21)
  %23 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %24 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @sldns_str2wire_dname(i32 %25, i64* %10)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %31 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %3, align 4
  br label %82

34:                                               ; preds = %18
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @dname_count_size_labels(i32* %35, i64* %10)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %38 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @regional_alloc_init(i32 %39, i32* %40, i64 %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @free(i32* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %34
  %49 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

50:                                               ; preds = %34
  %51 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %52 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @regional_alloc(i32 %53, i32 4)
  %55 = inttoptr i64 %54 to %struct.name_tree_node*
  store %struct.name_tree_node* %55, %struct.name_tree_node** %7, align 8
  %56 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %57 = icmp ne %struct.name_tree_node* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

60:                                               ; preds = %50
  %61 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %62 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %61, i32 0, i32 0
  %63 = load %struct.name_tree_node*, %struct.name_tree_node** %7, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %68 = call i32 @name_tree_insert(i32* %62, %struct.name_tree_node* %63, i32* %64, i64 %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @VERB_QUERY, align 4
  %72 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %73 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @verbose(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %60
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %79 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %78, i32 0, i32 1
  %80 = load %struct.config_strlist*, %struct.config_strlist** %79, align 8
  store %struct.config_strlist* %80, %struct.config_strlist** %6, align 8
  br label %15

81:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %58, %48, %29
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32* @sldns_str2wire_dname(i32, i64*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i64 @regional_alloc_init(i32, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @name_tree_insert(i32*, %struct.name_tree_node*, i32*, i64, i32, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
