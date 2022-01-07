; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_set_lame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_set_lame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.infra_data = type { i32, i32, i32, i32, i32 }
%struct.lruhash_entry = type { i32, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"set_lame: malloc failure\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_set_lame(%struct.infra_cache* %0, %struct.sockaddr_storage* %1, i32 %2, i32* %3, i64 %4, i32 %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.infra_cache*, align 8
  %12 = alloca %struct.sockaddr_storage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.infra_data*, align 8
  %21 = alloca %struct.lruhash_entry*, align 8
  %22 = alloca i32, align 4
  store %struct.infra_cache* %0, %struct.infra_cache** %11, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %24 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = load i64, i64* %15, align 8
  %28 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %23, %struct.sockaddr_storage* %24, i32 %25, i32* %26, i64 %27, i32 1)
  store %struct.lruhash_entry* %28, %struct.lruhash_entry** %21, align 8
  %29 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %30 = icmp ne %struct.lruhash_entry* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %9
  %32 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %33 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call %struct.lruhash_entry* @new_entry(%struct.infra_cache* %32, %struct.sockaddr_storage* %33, i32 %34, i32* %35, i64 %36, i32 %37)
  store %struct.lruhash_entry* %38, %struct.lruhash_entry** %21, align 8
  %39 = icmp ne %struct.lruhash_entry* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = call i32 @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %120

42:                                               ; preds = %31
  store i32 1, i32* %22, align 4
  br label %58

43:                                               ; preds = %9
  %44 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %45 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.infra_data*
  %48 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %54 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @data_entry_init(%struct.infra_cache* %53, %struct.lruhash_entry* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %43
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %60 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.infra_data*
  store %struct.infra_data* %62, %struct.infra_data** %20, align 8
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.infra_data*, %struct.infra_data** %20, align 8
  %67 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %66, i32 0, i32 0
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.infra_data*, %struct.infra_data** %20, align 8
  %73 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %19, align 8
  %82 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.infra_data*, %struct.infra_data** %20, align 8
  %86 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %80, %77, %74
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.infra_data*, %struct.infra_data** %20, align 8
  %99 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %98, i32 0, i32 3
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %93, %90, %87
  %101 = load i32, i32* %22, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %105 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %108 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %111 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %112 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @slabhash_insert(i32 %106, i32 %109, %struct.lruhash_entry* %110, i64 %113, i32* null)
  br label %119

115:                                              ; preds = %100
  %116 = load %struct.lruhash_entry*, %struct.lruhash_entry** %21, align 8
  %117 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %116, i32 0, i32 0
  %118 = call i32 @lock_rw_unlock(i32* %117)
  br label %119

119:                                              ; preds = %115, %103
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %40
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local %struct.lruhash_entry* @new_entry(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @data_entry_init(%struct.infra_cache*, %struct.lruhash_entry*, i32) #1

declare dso_local i32 @slabhash_insert(i32, i32, %struct.lruhash_entry*, i64, i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
