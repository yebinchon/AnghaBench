; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_domain_limit_findcreate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_domain_limit_findcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_limit_data = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.domain_limit_data*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.infra_cache = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"could not parse %s\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"duplicate element in domainlimit tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.domain_limit_data* (%struct.infra_cache*, i8*)* @domain_limit_findcreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.domain_limit_data* @domain_limit_findcreate(%struct.infra_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.domain_limit_data*, align 8
  %4 = alloca %struct.infra_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.domain_limit_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.domain_limit_data*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.domain_limit_data* @sldns_str2wire_dname(i8* %10, i64* %8)
  store %struct.domain_limit_data* %11, %struct.domain_limit_data** %6, align 8
  %12 = load %struct.domain_limit_data*, %struct.domain_limit_data** %6, align 8
  %13 = icmp ne %struct.domain_limit_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %15)
  store %struct.domain_limit_data* null, %struct.domain_limit_data** %3, align 8
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.domain_limit_data*, %struct.domain_limit_data** %6, align 8
  %19 = call i32 @dname_count_labels(%struct.domain_limit_data* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %21 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %20, i32 0, i32 0
  %22 = load %struct.domain_limit_data*, %struct.domain_limit_data** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %26 = call i64 @name_tree_find(i32* %21, %struct.domain_limit_data* %22, i64 %23, i32 %24, i32 %25)
  %27 = inttoptr i64 %26 to %struct.domain_limit_data*
  store %struct.domain_limit_data* %27, %struct.domain_limit_data** %9, align 8
  %28 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %29 = icmp ne %struct.domain_limit_data* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load %struct.domain_limit_data*, %struct.domain_limit_data** %6, align 8
  %32 = call i32 @free(%struct.domain_limit_data* %31)
  %33 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  store %struct.domain_limit_data* %33, %struct.domain_limit_data** %3, align 8
  br label %87

34:                                               ; preds = %17
  %35 = call i64 @calloc(i32 1, i32 40)
  %36 = inttoptr i64 %35 to %struct.domain_limit_data*
  store %struct.domain_limit_data* %36, %struct.domain_limit_data** %9, align 8
  %37 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %38 = icmp ne %struct.domain_limit_data* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load %struct.domain_limit_data*, %struct.domain_limit_data** %6, align 8
  %41 = call i32 @free(%struct.domain_limit_data* %40)
  store %struct.domain_limit_data* null, %struct.domain_limit_data** %3, align 8
  br label %87

42:                                               ; preds = %34
  %43 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %44 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %43, i32 0, i32 2
  %45 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %46 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %48, align 8
  %49 = load %struct.domain_limit_data*, %struct.domain_limit_data** %6, align 8
  %50 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %51 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store %struct.domain_limit_data* %49, %struct.domain_limit_data** %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %55 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %59 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %62 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %63 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %66 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %68 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %67, i32 0, i32 1
  store i32 -1, i32* %68, align 4
  %69 = load %struct.infra_cache*, %struct.infra_cache** %4, align 8
  %70 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %69, i32 0, i32 0
  %71 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %72 = getelementptr inbounds %struct.domain_limit_data, %struct.domain_limit_data* %71, i32 0, i32 2
  %73 = load %struct.domain_limit_data*, %struct.domain_limit_data** %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %77 = call i32 @name_tree_insert(i32* %70, %struct.TYPE_4__* %72, %struct.domain_limit_data* %73, i64 %74, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %42
  %80 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.domain_limit_data*, %struct.domain_limit_data** %6, align 8
  %82 = call i32 @free(%struct.domain_limit_data* %81)
  %83 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  %84 = call i32 @free(%struct.domain_limit_data* %83)
  store %struct.domain_limit_data* null, %struct.domain_limit_data** %3, align 8
  br label %87

85:                                               ; preds = %42
  %86 = load %struct.domain_limit_data*, %struct.domain_limit_data** %9, align 8
  store %struct.domain_limit_data* %86, %struct.domain_limit_data** %3, align 8
  br label %87

87:                                               ; preds = %85, %79, %39, %30, %14
  %88 = load %struct.domain_limit_data*, %struct.domain_limit_data** %3, align 8
  ret %struct.domain_limit_data* %88
}

declare dso_local %struct.domain_limit_data* @sldns_str2wire_dname(i8*, i64*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @dname_count_labels(%struct.domain_limit_data*) #1

declare dso_local i64 @name_tree_find(i32*, %struct.domain_limit_data*, i64, i32, i32) #1

declare dso_local i32 @free(%struct.domain_limit_data*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @name_tree_insert(i32*, %struct.TYPE_4__*, %struct.domain_limit_data*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
