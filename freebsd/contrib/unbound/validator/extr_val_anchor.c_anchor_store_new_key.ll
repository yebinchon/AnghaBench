; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_store_new_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_anchor_store_new_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { i32, %struct.ta_key*, i32, i32 }
%struct.ta_key = type { %struct.ta_key* }
%struct.val_anchors = type { i32 }

@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Bad type for trust anchor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trust_anchor* (%struct.val_anchors*, i32*, i32, i32, i32*, i64)* @anchor_store_new_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trust_anchor* @anchor_store_new_key(%struct.val_anchors* %0, i32* %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.trust_anchor*, align 8
  %8 = alloca %struct.val_anchors*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ta_key*, align 8
  %15 = alloca %struct.trust_anchor*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @dname_count_size_labels(i32* %18, i64* %17)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.trust_anchor* null, %struct.trust_anchor** %7, align 8
  br label %110

29:                                               ; preds = %23, %6
  %30 = load %struct.val_anchors*, %struct.val_anchors** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load i64, i64* %17, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call %struct.trust_anchor* @anchor_find(%struct.val_anchors* %30, i32* %31, i32 %32, i64 %33, i32 %34)
  store %struct.trust_anchor* %35, %struct.trust_anchor** %15, align 8
  %36 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %37 = icmp ne %struct.trust_anchor* %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %29
  %39 = load %struct.val_anchors*, %struct.val_anchors** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %16, align 4
  %42 = load i64, i64* %17, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.trust_anchor* @anchor_new_ta(%struct.val_anchors* %39, i32* %40, i32 %41, i64 %42, i32 %43, i32 1)
  store %struct.trust_anchor* %44, %struct.trust_anchor** %15, align 8
  %45 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %46 = icmp ne %struct.trust_anchor* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  store %struct.trust_anchor* null, %struct.trust_anchor** %7, align 8
  br label %110

48:                                               ; preds = %38
  %49 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %50 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %49, i32 0, i32 0
  %51 = call i32 @lock_basic_lock(i32* %50)
  br label %52

52:                                               ; preds = %48, %29
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  %56 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %57 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %56, i32 0, i32 0
  %58 = call i32 @lock_basic_unlock(i32* %57)
  %59 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  store %struct.trust_anchor* %59, %struct.trust_anchor** %7, align 8
  br label %110

60:                                               ; preds = %52
  %61 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @anchor_find_key(%struct.trust_anchor* %61, i32* %62, i64 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %69 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %68, i32 0, i32 0
  %70 = call i32 @lock_basic_unlock(i32* %69)
  %71 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  store %struct.trust_anchor* %71, %struct.trust_anchor** %7, align 8
  br label %110

72:                                               ; preds = %60
  %73 = load i32*, i32** %12, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call %struct.ta_key* @anchor_new_ta_key(i32* %73, i64 %74, i32 %75)
  store %struct.ta_key* %76, %struct.ta_key** %14, align 8
  %77 = load %struct.ta_key*, %struct.ta_key** %14, align 8
  %78 = icmp ne %struct.ta_key* %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %81 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %80, i32 0, i32 0
  %82 = call i32 @lock_basic_unlock(i32* %81)
  store %struct.trust_anchor* null, %struct.trust_anchor** %7, align 8
  br label %110

83:                                               ; preds = %72
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %89 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %97

92:                                               ; preds = %83
  %93 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %94 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %99 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %98, i32 0, i32 1
  %100 = load %struct.ta_key*, %struct.ta_key** %99, align 8
  %101 = load %struct.ta_key*, %struct.ta_key** %14, align 8
  %102 = getelementptr inbounds %struct.ta_key, %struct.ta_key* %101, i32 0, i32 0
  store %struct.ta_key* %100, %struct.ta_key** %102, align 8
  %103 = load %struct.ta_key*, %struct.ta_key** %14, align 8
  %104 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %105 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %104, i32 0, i32 1
  store %struct.ta_key* %103, %struct.ta_key** %105, align 8
  %106 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  %107 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %106, i32 0, i32 0
  %108 = call i32 @lock_basic_unlock(i32* %107)
  %109 = load %struct.trust_anchor*, %struct.trust_anchor** %15, align 8
  store %struct.trust_anchor* %109, %struct.trust_anchor** %7, align 8
  br label %110

110:                                              ; preds = %97, %79, %67, %55, %47, %27
  %111 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  ret %struct.trust_anchor* %111
}

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.trust_anchor* @anchor_find(%struct.val_anchors*, i32*, i32, i64, i32) #1

declare dso_local %struct.trust_anchor* @anchor_new_ta(%struct.val_anchors*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @anchor_find_key(%struct.trust_anchor*, i32*, i64, i32) #1

declare dso_local %struct.ta_key* @anchor_new_ta_key(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
