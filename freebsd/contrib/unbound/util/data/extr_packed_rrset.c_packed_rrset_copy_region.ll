; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_copy_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_packed_rrset_copy_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { %struct.packed_rrset_data*, %struct.ub_packed_rrset_key*, i32 }
%struct.packed_rrset_data = type { i64, i64, i64*, i64 }
%struct.TYPE_3__ = type { i64, %struct.packed_rrset_data* }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %0, %struct.regional* %1, i64 %2) #0 {
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca %struct.regional*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  %10 = alloca %struct.packed_rrset_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store %struct.regional* %1, %struct.regional** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.regional*, %struct.regional** %6, align 8
  %14 = call %struct.ub_packed_rrset_key* @regional_alloc(%struct.regional* %13, i32 48)
  store %struct.ub_packed_rrset_key* %14, %struct.ub_packed_rrset_key** %8, align 8
  %15 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %16 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %17, align 8
  store %struct.packed_rrset_data* %18, %struct.packed_rrset_data** %10, align 8
  %19 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %20 = icmp ne %struct.ub_packed_rrset_key* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %139

22:                                               ; preds = %3
  %23 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %24 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %27 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %29 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %28, i32 0, i32 0
  %30 = call i32 @memset(%struct.TYPE_4__* %29, i32 0, i32 24)
  %31 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %32 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %36 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %39 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %40 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %38, %struct.ub_packed_rrset_key** %41, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 1
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 1
  %46 = bitcast %struct.TYPE_3__* %43 to i8*
  %47 = bitcast %struct.TYPE_3__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 16, i1 false)
  %48 = load %struct.regional*, %struct.regional** %6, align 8
  %49 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %50 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %51, align 8
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.packed_rrset_data* @regional_alloc_init(%struct.regional* %48, %struct.packed_rrset_data* %52, i64 %56)
  %58 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %59 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store %struct.packed_rrset_data* %57, %struct.packed_rrset_data** %60, align 8
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %62 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %63, align 8
  %65 = icmp ne %struct.packed_rrset_data* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %22
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %139

67:                                               ; preds = %22
  %68 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %69 = call i64 @packed_rrset_sizeof(%struct.packed_rrset_data* %68)
  store i64 %69, i64* %11, align 8
  %70 = load %struct.regional*, %struct.regional** %6, align 8
  %71 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call %struct.packed_rrset_data* @regional_alloc_init(%struct.regional* %70, %struct.packed_rrset_data* %71, i64 %72)
  store %struct.packed_rrset_data* %73, %struct.packed_rrset_data** %9, align 8
  %74 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %75 = icmp ne %struct.packed_rrset_data* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %139

77:                                               ; preds = %67
  %78 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %79 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %80 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store %struct.packed_rrset_data* %78, %struct.packed_rrset_data** %81, align 8
  %82 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %83 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %82)
  store i64 0, i64* %12, align 8
  br label %84

84:                                               ; preds = %119, %77
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %87 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %90 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = icmp ult i64 %85, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %84
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %96 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %105 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* %12, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 0, i64* %108, align 8
  br label %118

109:                                              ; preds = %94
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %112 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %111, i32 0, i32 2
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, %110
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %109, %103
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %12, align 8
  br label %84

122:                                              ; preds = %84
  %123 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %124 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %130 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  br label %137

131:                                              ; preds = %122
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %134 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, %132
  store i64 %136, i64* %134, align 8
  br label %137

137:                                              ; preds = %131, %128
  %138 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  store %struct.ub_packed_rrset_key* %138, %struct.ub_packed_rrset_key** %4, align 8
  br label %139

139:                                              ; preds = %137, %76, %66, %21
  %140 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  ret %struct.ub_packed_rrset_key* %140
}

declare dso_local %struct.ub_packed_rrset_key* @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.packed_rrset_data* @regional_alloc_init(%struct.regional*, %struct.packed_rrset_data*, i64) #1

declare dso_local i64 @packed_rrset_sizeof(%struct.packed_rrset_data*) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
