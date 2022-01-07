; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_tp_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_tp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.trust_anchor = type { i32, i64, %struct.trust_anchor*, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.trust_anchor* }
%struct.TYPE_7__ = type { %struct.trust_anchor* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.autr_point_data = type { i32, i64, %struct.autr_point_data*, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }

@VERB_OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"trust point was revoked\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.trust_anchor*, %struct.ub_packed_rrset_key*)* @autr_tp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autr_tp_remove(%struct.module_env* %0, %struct.trust_anchor* %1, %struct.ub_packed_rrset_key* %2) #0 {
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.trust_anchor*, align 8
  %8 = alloca %struct.trust_anchor, align 8
  %9 = alloca %struct.autr_point_data, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store %struct.trust_anchor* %1, %struct.trust_anchor** %5, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %6, align 8
  %12 = load i32, i32* @VERB_OPS, align 4
  %13 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %14 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %17 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %18 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @log_nametypeclass(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %19)
  %21 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %22 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %21, i32 0, i32 2
  %23 = load %struct.trust_anchor*, %struct.trust_anchor** %22, align 8
  %24 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = call i32 @memset(%struct.trust_anchor* %8, i32 0, i32 64)
  %26 = bitcast %struct.autr_point_data* %9 to %struct.trust_anchor*
  %27 = call i32 @memset(%struct.trust_anchor* %26, i32 0, i32 64)
  %28 = bitcast %struct.autr_point_data* %9 to %struct.trust_anchor*
  %29 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 2
  store %struct.trust_anchor* %28, %struct.trust_anchor** %29, align 8
  %30 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store %struct.trust_anchor* %8, %struct.trust_anchor** %31, align 8
  %32 = getelementptr inbounds %struct.autr_point_data, %struct.autr_point_data* %9, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store %struct.trust_anchor* %8, %struct.trust_anchor** %33, align 8
  %34 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %35 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %34, i32 0, i32 2
  %36 = load %struct.trust_anchor*, %struct.trust_anchor** %35, align 8
  %37 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.autr_point_data, %struct.autr_point_data* %9, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %41 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 7
  store i32 %43, i32* %44, align 8
  %45 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %46 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 6
  store i32 %47, i32* %48, align 4
  %49 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %50 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 5
  store i32 %51, i32* %52, align 8
  %53 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %54 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  %57 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %58 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %57, i32 0, i32 3
  %59 = call i32 @lock_basic_unlock(i32* %58)
  %60 = load %struct.module_env*, %struct.module_env** %4, align 8
  %61 = getelementptr inbounds %struct.module_env, %struct.module_env* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = call i32 @lock_basic_lock(i32* %63)
  %65 = load %struct.module_env*, %struct.module_env** %4, align 8
  %66 = getelementptr inbounds %struct.module_env, %struct.module_env* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @rbtree_delete(i32* %69, %struct.trust_anchor* %8)
  %71 = inttoptr i64 %70 to %struct.trust_anchor*
  store %struct.trust_anchor* %71, %struct.trust_anchor** %7, align 8
  %72 = load %struct.module_env*, %struct.module_env** %4, align 8
  %73 = getelementptr inbounds %struct.module_env, %struct.module_env* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = call i64 @wait_probe_time(%struct.TYPE_11__* %74)
  store i64 %75, i64* %10, align 8
  %76 = load %struct.module_env*, %struct.module_env** %4, align 8
  %77 = getelementptr inbounds %struct.module_env, %struct.module_env* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = call i64 @rbtree_delete(i32* %81, %struct.trust_anchor* %8)
  %83 = load %struct.module_env*, %struct.module_env** %4, align 8
  %84 = getelementptr inbounds %struct.module_env, %struct.module_env* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = call i64 @wait_probe_time(%struct.TYPE_11__* %85)
  store i64 %86, i64* %11, align 8
  %87 = load %struct.module_env*, %struct.module_env** %4, align 8
  %88 = getelementptr inbounds %struct.module_env, %struct.module_env* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = call i32 @anchors_init_parents_locked(%struct.TYPE_11__* %89)
  %91 = load %struct.module_env*, %struct.module_env** %4, align 8
  %92 = getelementptr inbounds %struct.module_env, %struct.module_env* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = call i32 @lock_basic_unlock(i32* %94)
  %96 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %97 = icmp ne %struct.trust_anchor* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %3
  %99 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %100 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %99, i32 0, i32 2
  %101 = load %struct.trust_anchor*, %struct.trust_anchor** %100, align 8
  %102 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.module_env*, %struct.module_env** %4, align 8
  %104 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %105 = call i32 @autr_write_file(%struct.module_env* %103, %struct.trust_anchor* %104)
  %106 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %107 = call i32 @autr_point_delete(%struct.trust_anchor* %106)
  br label %108

108:                                              ; preds = %98, %3
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.module_env*, %struct.module_env** %4, align 8
  %114 = call i32 @reset_worker_timer(%struct.module_env* %113)
  br label %115

115:                                              ; preds = %112, %108
  ret void
}

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.trust_anchor*, i32, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i64 @rbtree_delete(i32*, %struct.trust_anchor*) #1

declare dso_local i64 @wait_probe_time(%struct.TYPE_11__*) #1

declare dso_local i32 @anchors_init_parents_locked(%struct.TYPE_11__*) #1

declare dso_local i32 @autr_write_file(%struct.module_env*, %struct.trust_anchor*) #1

declare dso_local i32 @autr_point_delete(%struct.trust_anchor*) #1

declare dso_local i32 @reset_worker_timer(%struct.module_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
