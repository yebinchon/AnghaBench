; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_repinfo_copy_rrsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_repinfo_copy_rrsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i64, %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i32 }
%struct.regional = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reply_info*, %struct.reply_info*, %struct.regional*)* @repinfo_copy_rrsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repinfo_copy_rrsets(%struct.reply_info* %0, %struct.reply_info* %1, %struct.regional* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca %struct.reply_info*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.packed_rrset_data*, align 8
  %11 = alloca %struct.packed_rrset_data*, align 8
  %12 = alloca %struct.ub_packed_rrset_key*, align 8
  %13 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.reply_info* %0, %struct.reply_info** %5, align 8
  store %struct.reply_info* %1, %struct.reply_info** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %122, %3
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %17 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %125

20:                                               ; preds = %14
  %21 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %22 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %21, i32 0, i32 1
  %23 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %23, i64 %24
  %26 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %25, align 8
  store %struct.ub_packed_rrset_key* %26, %struct.ub_packed_rrset_key** %12, align 8
  %27 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %28 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %27, i32 0, i32 1
  %29 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, i64 %30
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %31, align 8
  store %struct.ub_packed_rrset_key* %32, %struct.ub_packed_rrset_key** %13, align 8
  %33 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %34 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %37, %struct.packed_rrset_data** %10, align 8
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %43 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 1
  %47 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %48 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %47, i32 0, i32 1
  %49 = bitcast %struct.TYPE_3__* %46 to i8*
  %50 = bitcast %struct.TYPE_3__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 16, i1 false)
  %51 = load %struct.regional*, %struct.regional** %7, align 8
  %52 = icmp ne %struct.regional* %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %20
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %55 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %58 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.regional*, %struct.regional** %7, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %62, align 8
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %65 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @regional_alloc_init(%struct.regional* %59, %struct.packed_rrset_data* %63, i64 %67)
  %69 = inttoptr i64 %68 to %struct.packed_rrset_data*
  %70 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %71 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store %struct.packed_rrset_data* %69, %struct.packed_rrset_data** %72, align 8
  br label %87

73:                                               ; preds = %20
  %74 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %75 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %76, align 8
  %78 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %12, align 8
  %79 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @memdup(%struct.packed_rrset_data* %77, i64 %81)
  %83 = inttoptr i64 %82 to %struct.packed_rrset_data*
  %84 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %85 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store %struct.packed_rrset_data* %83, %struct.packed_rrset_data** %86, align 8
  br label %87

87:                                               ; preds = %73, %53
  %88 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %89 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %90, align 8
  %92 = icmp ne %struct.packed_rrset_data* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %126

94:                                               ; preds = %87
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %96 = call i64 @packed_rrset_sizeof(%struct.packed_rrset_data* %95)
  store i64 %96, i64* %9, align 8
  %97 = load %struct.regional*, %struct.regional** %7, align 8
  %98 = icmp ne %struct.regional* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.regional*, %struct.regional** %7, align 8
  %101 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call i64 @regional_alloc_init(%struct.regional* %100, %struct.packed_rrset_data* %101, i64 %102)
  %104 = inttoptr i64 %103 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %104, %struct.packed_rrset_data** %11, align 8
  br label %110

105:                                              ; preds = %94
  %106 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %10, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i64 @memdup(%struct.packed_rrset_data* %106, i64 %107)
  %109 = inttoptr i64 %108 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %109, %struct.packed_rrset_data** %11, align 8
  br label %110

110:                                              ; preds = %105, %99
  %111 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %112 = icmp ne %struct.packed_rrset_data* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %126

114:                                              ; preds = %110
  %115 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %116 = call i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data* %115)
  %117 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %11, align 8
  %118 = bitcast %struct.packed_rrset_data* %117 to i8*
  %119 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %13, align 8
  %120 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %114
  %123 = load i64, i64* %8, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %8, align 8
  br label %14

125:                                              ; preds = %14
  store i32 1, i32* %4, align 4
  br label %126

126:                                              ; preds = %125, %113, %93
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @regional_alloc_init(%struct.regional*, %struct.packed_rrset_data*, i64) #2

declare dso_local i64 @memdup(%struct.packed_rrset_data*, i64) #2

declare dso_local i64 @packed_rrset_sizeof(%struct.packed_rrset_data*) #2

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.packed_rrset_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
