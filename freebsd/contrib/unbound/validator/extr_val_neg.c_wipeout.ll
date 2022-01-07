; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_wipeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_neg.c_wipeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.val_neg_cache = type { i32 }
%struct.val_neg_zone = type { i32 }
%struct.val_neg_data = type { i32, i64, i32*, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i64, i32*, i32** }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@RBTREE_NULL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.val_neg_cache*, %struct.val_neg_zone*, %struct.val_neg_data*, %struct.ub_packed_rrset_key*)* @wipeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wipeout(%struct.val_neg_cache* %0, %struct.val_neg_zone* %1, %struct.val_neg_data* %2, %struct.ub_packed_rrset_key* %3) #0 {
  %5 = alloca %struct.val_neg_cache*, align 8
  %6 = alloca %struct.val_neg_zone*, align 8
  %7 = alloca %struct.val_neg_data*, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.val_neg_data*, align 8
  %17 = alloca [257 x i32], align 16
  store %struct.val_neg_cache* %0, %struct.val_neg_cache** %5, align 8
  store %struct.val_neg_zone* %1, %struct.val_neg_zone** %6, align 8
  store %struct.val_neg_data* %2, %struct.val_neg_data** %7, align 8
  store %struct.ub_packed_rrset_key* %3, %struct.ub_packed_rrset_key** %8, align 8
  %18 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %19 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %22, %struct.packed_rrset_data** %9, align 8
  %23 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %24 = icmp ne %struct.packed_rrset_data* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %27 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %32 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %25, %4
  br label %159

38:                                               ; preds = %30
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ntohs(i32 %42)
  %44 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %38
  %47 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %48 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %55 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 2
  %60 = call i64 @dname_valid(i32* %53, i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @dname_count_labels(i32* %61)
  store i32 %62, i32* %12, align 4
  br label %73

63:                                               ; preds = %38
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %65 = getelementptr inbounds [257 x i32], [257 x i32]* %17, i64 0, i64 0
  %66 = call i32 @nsec3_get_nextowner_b32(%struct.ub_packed_rrset_key* %64, i32 0, i32* %65, i32 1028)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  br label %159

69:                                               ; preds = %63
  %70 = getelementptr inbounds [257 x i32], [257 x i32]* %17, i64 0, i64 0
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @dname_count_size_labels(i32* %71, i64* %11)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %69, %46
  %74 = load %struct.val_neg_data*, %struct.val_neg_data** %7, align 8
  %75 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.val_neg_zone*, %struct.val_neg_zone** %6, align 8
  %78 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dname_subdomain_c(i32* %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %73
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.val_neg_zone*, %struct.val_neg_zone** %6, align 8
  %85 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dname_subdomain_c(i32* %83, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82, %73
  br label %159

90:                                               ; preds = %82
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.val_neg_zone*, %struct.val_neg_zone** %6, align 8
  %93 = getelementptr inbounds %struct.val_neg_zone, %struct.val_neg_zone* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @query_dname_compare(i32* %91, i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32* null, i32** %10, align 8
  br label %98

98:                                               ; preds = %97, %90
  %99 = load %struct.val_neg_data*, %struct.val_neg_data** %7, align 8
  %100 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %99, i32 0, i32 3
  %101 = call i32* @rbtree_next(i32* %100)
  store i32* %101, i32** %14, align 8
  br label %102

102:                                              ; preds = %157, %128, %98
  %103 = load i32*, i32** %14, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** @RBTREE_NULL, align 8
  %108 = icmp ne i32* %106, %107
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi i1 [ false, %102 ], [ %108, %105 ]
  br i1 %110, label %111, label %159

111:                                              ; preds = %109
  %112 = load i32*, i32** %14, align 8
  %113 = bitcast i32* %112 to %struct.val_neg_data*
  store %struct.val_neg_data* %113, %struct.val_neg_data** %16, align 8
  %114 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  %115 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  %118 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.val_neg_data*, %struct.val_neg_data** %7, align 8
  %121 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.val_neg_data*, %struct.val_neg_data** %7, align 8
  %124 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @dname_canon_lab_cmp(i32* %116, i32 %119, i32* %122, i32 %125, i32* %13)
  %127 = icmp sle i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %111
  %129 = load i32*, i32** %14, align 8
  %130 = call i32* @rbtree_next(i32* %129)
  store i32* %130, i32** %14, align 8
  br label %102

131:                                              ; preds = %111
  %132 = load i32*, i32** %10, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  %136 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  %139 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %12, align 4
  %143 = call i64 @dname_canon_lab_cmp(i32* %137, i32 %140, i32* %141, i32 %142, i32* %13)
  %144 = icmp sge i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %159

146:                                              ; preds = %134, %131
  %147 = load i32*, i32** %14, align 8
  %148 = call i32* @rbtree_next(i32* %147)
  store i32* %148, i32** %15, align 8
  %149 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  %150 = getelementptr inbounds %struct.val_neg_data, %struct.val_neg_data* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load %struct.val_neg_cache*, %struct.val_neg_cache** %5, align 8
  %155 = load %struct.val_neg_data*, %struct.val_neg_data** %16, align 8
  %156 = call i32 @neg_delete_data(%struct.val_neg_cache* %154, %struct.val_neg_data* %155)
  br label %157

157:                                              ; preds = %153, %146
  %158 = load i32*, i32** %15, align 8
  store i32* %158, i32** %14, align 8
  br label %102

159:                                              ; preds = %37, %68, %89, %145, %109
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @dname_valid(i32*, i32) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @nsec3_get_nextowner_b32(%struct.ub_packed_rrset_key*, i32, i32*, i32) #1

declare dso_local i32 @dname_count_size_labels(i32*, i64*) #1

declare dso_local i32 @dname_subdomain_c(i32*, i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i32* @rbtree_next(i32*) #1

declare dso_local i64 @dname_canon_lab_cmp(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @neg_delete_data(%struct.val_neg_cache*, %struct.val_neg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
