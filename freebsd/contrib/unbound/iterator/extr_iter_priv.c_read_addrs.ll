; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_read_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_priv.c_read_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_priv = type { i32, i32 }
%struct.config_file = type { %struct.config_strlist* }
%struct.config_strlist = type { i32, %struct.config_strlist* }
%struct.addr_tree_node = type { i32 }
%struct.sockaddr_storage = type { i32 }

@UNBOUND_DNS_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot parse private-address: %s\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"ignoring duplicate private-address: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_priv*, %struct.config_file*)* @read_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_addrs(%struct.iter_priv* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iter_priv*, align 8
  %5 = alloca %struct.config_file*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca %struct.addr_tree_node*, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iter_priv* %0, %struct.iter_priv** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %11 = load %struct.config_file*, %struct.config_file** %5, align 8
  %12 = getelementptr inbounds %struct.config_file, %struct.config_file* %11, i32 0, i32 0
  %13 = load %struct.config_strlist*, %struct.config_strlist** %12, align 8
  store %struct.config_strlist* %13, %struct.config_strlist** %6, align 8
  br label %14

14:                                               ; preds = %58, %2
  %15 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %16 = icmp ne %struct.config_strlist* %15, null
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %19 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @log_assert(i32 %20)
  %22 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %23 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @UNBOUND_DNS_PORT, align 4
  %26 = call i32 @netblockstrtoaddr(i32 %24, i32 %25, %struct.sockaddr_storage* %8, i32* %10, i32* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %17
  %29 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %30 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %63

33:                                               ; preds = %17
  %34 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %35 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @regional_alloc(i32 %36, i32 4)
  %38 = inttoptr i64 %37 to %struct.addr_tree_node*
  store %struct.addr_tree_node* %38, %struct.addr_tree_node** %7, align 8
  %39 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %40 = icmp ne %struct.addr_tree_node* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

43:                                               ; preds = %33
  %44 = load %struct.iter_priv*, %struct.iter_priv** %4, align 8
  %45 = getelementptr inbounds %struct.iter_priv, %struct.iter_priv* %44, i32 0, i32 0
  %46 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @addr_tree_insert(i32* %45, %struct.addr_tree_node* %46, %struct.sockaddr_storage* %8, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @VERB_QUERY, align 4
  %53 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %54 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @verbose(i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %43
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  %60 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %59, i32 0, i32 1
  %61 = load %struct.config_strlist*, %struct.config_strlist** %60, align 8
  store %struct.config_strlist* %61, %struct.config_strlist** %6, align 8
  br label %14

62:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %41, %28
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @netblockstrtoaddr(i32, i32, %struct.sockaddr_storage*, i32*, i32*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i32 @addr_tree_insert(i32*, %struct.addr_tree_node*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
