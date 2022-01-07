; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_set_next_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_set_next_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i64*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.trust_anchor = type { %struct.TYPE_9__*, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.trust_anchor* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"trustpoint was deleted in set_next_probe\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"next probe set in %d seconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*)* @set_next_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_next_probe(%struct.module_env* %0, %struct.trust_anchor* %1, %struct.ub_packed_rrset_key* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_env*, align 8
  %6 = alloca %struct.trust_anchor*, align 8
  %7 = alloca %struct.ub_packed_rrset_key*, align 8
  %8 = alloca %struct.trust_anchor, align 8
  %9 = alloca %struct.trust_anchor*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %5, align 8
  store %struct.trust_anchor* %1, %struct.trust_anchor** %6, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %7, align 8
  %12 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.trust_anchor* %8, %struct.trust_anchor** %13, align 8
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %15 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %7, align 8
  %20 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 5
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dname_count_labels(i32 %25)
  %27 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %29 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %33 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %32, i32 0, i32 1
  %34 = call i32 @lock_basic_unlock(i32* %33)
  %35 = load %struct.module_env*, %struct.module_env** %5, align 8
  %36 = getelementptr inbounds %struct.module_env, %struct.module_env* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = call i32 @lock_basic_lock(i32* %38)
  %40 = load %struct.module_env*, %struct.module_env** %5, align 8
  %41 = getelementptr inbounds %struct.module_env, %struct.module_env* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @rbtree_search(i32 %44, %struct.trust_anchor* %8)
  %46 = inttoptr i64 %45 to %struct.trust_anchor*
  store %struct.trust_anchor* %46, %struct.trust_anchor** %9, align 8
  %47 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %48 = icmp ne %struct.trust_anchor* %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %3
  %50 = load i32, i32* @VERB_ALGO, align 4
  %51 = call i32 (i32, i8*, ...) @verbose(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.module_env*, %struct.module_env** %5, align 8
  %53 = getelementptr inbounds %struct.module_env, %struct.module_env* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 @lock_basic_unlock(i32* %55)
  store i32 0, i32* %4, align 4
  br label %130

57:                                               ; preds = %3
  %58 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %59 = load %struct.trust_anchor*, %struct.trust_anchor** %9, align 8
  %60 = icmp eq %struct.trust_anchor* %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @log_assert(i32 %61)
  %63 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %64 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %63, i32 0, i32 1
  %65 = call i32 @lock_basic_lock(i32* %64)
  %66 = load %struct.module_env*, %struct.module_env** %5, align 8
  %67 = getelementptr inbounds %struct.module_env, %struct.module_env* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = call i64 @wait_probe_time(%struct.TYPE_10__* %68)
  store i64 %69, i64* %10, align 8
  %70 = load %struct.module_env*, %struct.module_env** %5, align 8
  %71 = getelementptr inbounds %struct.module_env, %struct.module_env* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %77 = call i32 @rbtree_delete(i32* %75, %struct.trust_anchor* %76)
  %78 = load %struct.module_env*, %struct.module_env** %5, align 8
  %79 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %80 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @calc_next_probe(%struct.module_env* %78, i32 %83)
  %85 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %86 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i64 %84, i64* %88, align 8
  %89 = load %struct.module_env*, %struct.module_env** %5, align 8
  %90 = getelementptr inbounds %struct.module_env, %struct.module_env* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %96 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = call i32 @rbtree_insert(i32* %94, i32* %98)
  %100 = load %struct.module_env*, %struct.module_env** %5, align 8
  %101 = getelementptr inbounds %struct.module_env, %struct.module_env* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = call i64 @wait_probe_time(%struct.TYPE_10__* %102)
  store i64 %103, i64* %11, align 8
  %104 = load %struct.module_env*, %struct.module_env** %5, align 8
  %105 = getelementptr inbounds %struct.module_env, %struct.module_env* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = call i32 @lock_basic_unlock(i32* %107)
  %109 = load i32, i32* @VERB_ALGO, align 4
  %110 = load %struct.trust_anchor*, %struct.trust_anchor** %6, align 8
  %111 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.module_env*, %struct.module_env** %5, align 8
  %117 = getelementptr inbounds %struct.module_env, %struct.module_env* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = sub nsw i32 %115, %120
  %122 = call i32 (i32, i8*, ...) @verbose(i32 %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %57
  %127 = load %struct.module_env*, %struct.module_env** %5, align 8
  %128 = call i32 @reset_worker_timer(%struct.module_env* %127)
  br label %129

129:                                              ; preds = %126, %57
  store i32 1, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %49
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @dname_count_labels(i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @rbtree_search(i32, %struct.trust_anchor*) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @wait_probe_time(%struct.TYPE_10__*) #1

declare dso_local i32 @rbtree_delete(i32*, %struct.trust_anchor*) #1

declare dso_local i64 @calc_next_probe(%struct.module_env*, i32) #1

declare dso_local i32 @rbtree_insert(i32*, i32*) #1

declare dso_local i32 @reset_worker_timer(%struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
