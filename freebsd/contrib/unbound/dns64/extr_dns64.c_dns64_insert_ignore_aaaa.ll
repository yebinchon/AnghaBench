; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_insert_ignore_aaaa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_insert_ignore_aaaa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns64_env = type { i32 }
%struct.name_tree_node = type { %struct.name_tree_node*, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot parse dns64-ignore-aaaa: %s\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dns64_env*, i8*)* @dns64_insert_ignore_aaaa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns64_insert_ignore_aaaa(%struct.dns64_env* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dns64_env*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.name_tree_node*, align 8
  store %struct.dns64_env* %0, %struct.dns64_env** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i64 @calloc(i32 1, i32 24)
  %8 = inttoptr i64 %7 to %struct.name_tree_node*
  store %struct.name_tree_node* %8, %struct.name_tree_node** %6, align 8
  %9 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %10 = icmp ne %struct.name_tree_node* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %16 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %15, i32 0, i32 3
  %17 = call %struct.name_tree_node* @sldns_str2wire_dname(i8* %14, i32* %16)
  %18 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %19 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %18, i32 0, i32 0
  store %struct.name_tree_node* %17, %struct.name_tree_node** %19, align 8
  %20 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %21 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %20, i32 0, i32 0
  %22 = load %struct.name_tree_node*, %struct.name_tree_node** %21, align 8
  %23 = icmp ne %struct.name_tree_node* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %13
  %25 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %26 = call i32 @free(%struct.name_tree_node* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 0, i32* %3, align 4
  br label %64

29:                                               ; preds = %13
  %30 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %31 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %30, i32 0, i32 0
  %32 = load %struct.name_tree_node*, %struct.name_tree_node** %31, align 8
  %33 = call i32 @dname_count_labels(%struct.name_tree_node* %32)
  %34 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %35 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %37 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %38 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dns64_env*, %struct.dns64_env** %4, align 8
  %40 = getelementptr inbounds %struct.dns64_env, %struct.dns64_env* %39, i32 0, i32 0
  %41 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %42 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %43 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %42, i32 0, i32 0
  %44 = load %struct.name_tree_node*, %struct.name_tree_node** %43, align 8
  %45 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %46 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %49 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %52 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @name_tree_insert(i32* %40, %struct.name_tree_node* %41, %struct.name_tree_node* %44, i32 %47, i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %29
  %57 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %58 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %57, i32 0, i32 0
  %59 = load %struct.name_tree_node*, %struct.name_tree_node** %58, align 8
  %60 = call i32 @free(%struct.name_tree_node* %59)
  %61 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  %62 = call i32 @free(%struct.name_tree_node* %61)
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %56, %24, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local %struct.name_tree_node* @sldns_str2wire_dname(i8*, i32*) #1

declare dso_local i32 @free(%struct.name_tree_node*) #1

declare dso_local i32 @dname_count_labels(%struct.name_tree_node*) #1

declare dso_local i32 @name_tree_insert(i32*, %struct.name_tree_node*, %struct.name_tree_node*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
