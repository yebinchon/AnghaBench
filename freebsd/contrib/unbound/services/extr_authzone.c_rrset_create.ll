; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_rrset_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_rrset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_rrset = type { i64, %struct.auth_rrset*, %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i64*, i32, i32**, i8**, i32, i8* }
%struct.auth_data = type { %struct.auth_rrset* }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@rrset_trust_prim_noglue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.auth_rrset* (%struct.auth_data*, i64, i8*, i32*, i64)* @rrset_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.auth_rrset* @rrset_create(%struct.auth_data* %0, i64 %1, i8* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.auth_rrset*, align 8
  %7 = alloca %struct.auth_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.auth_rrset*, align 8
  %13 = alloca %struct.auth_rrset*, align 8
  %14 = alloca %struct.auth_rrset*, align 8
  %15 = alloca %struct.packed_rrset_data*, align 8
  store %struct.auth_data* %0, %struct.auth_data** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = call i64 @calloc(i32 1, i32 24)
  %17 = inttoptr i64 %16 to %struct.auth_rrset*
  store %struct.auth_rrset* %17, %struct.auth_rrset** %12, align 8
  %18 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %19 = icmp ne %struct.auth_rrset* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.auth_rrset* null, %struct.auth_rrset** %6, align 8
  br label %133

22:                                               ; preds = %5
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %25 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %11, align 8
  %27 = add i64 72, %26
  %28 = trunc i64 %27 to i32
  %29 = call i64 @calloc(i32 1, i32 %28)
  %30 = inttoptr i64 %29 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %30, %struct.packed_rrset_data** %15, align 8
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %32 = icmp ne %struct.packed_rrset_data* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %35 = call i32 @free(%struct.auth_rrset* %34)
  %36 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.auth_rrset* null, %struct.auth_rrset** %6, align 8
  br label %133

37:                                               ; preds = %22
  %38 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %39 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %40 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %39, i32 0, i32 2
  store %struct.packed_rrset_data* %38, %struct.packed_rrset_data** %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %43 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* @rrset_trust_prim_noglue, align 4
  %45 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %46 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %48 = bitcast %struct.packed_rrset_data* %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 48
  %50 = bitcast i32* %49 to i64*
  %51 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %52 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %51, i32 0, i32 0
  store i64* %50, i64** %52, align 8
  %53 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %54 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = bitcast i64* %56 to i32**
  %58 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %59 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %58, i32 0, i32 2
  store i32** %57, i32*** %59, align 8
  %60 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %61 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 1
  %64 = bitcast i32** %63 to i8**
  %65 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %66 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %65, i32 0, i32 3
  store i8** %64, i8*** %66, align 8
  %67 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %68 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = bitcast i8** %70 to i32*
  %72 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %73 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %72, i32 0, i32 2
  %74 = load i32**, i32*** %73, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  store i32* %71, i32** %75, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %78 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  store i64 %76, i64* %80, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %83 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %82, i32 0, i32 3
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  store i8* %81, i8** %85, align 8
  %86 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %87 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %86, i32 0, i32 2
  %88 = load i32**, i32*** %87, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @memmove(i32* %90, i32* %91, i64 %92)
  %94 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %15, align 8
  %95 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  store %struct.auth_rrset* null, %struct.auth_rrset** %14, align 8
  %98 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %99 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %98, i32 0, i32 0
  %100 = load %struct.auth_rrset*, %struct.auth_rrset** %99, align 8
  store %struct.auth_rrset* %100, %struct.auth_rrset** %13, align 8
  br label %101

101:                                              ; preds = %112, %37
  %102 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %103 = icmp ne %struct.auth_rrset* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %106 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp sle i64 %107, %108
  br label %110

110:                                              ; preds = %104, %101
  %111 = phi i1 [ false, %101 ], [ %109, %104 ]
  br i1 %111, label %112, label %117

112:                                              ; preds = %110
  %113 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  store %struct.auth_rrset* %113, %struct.auth_rrset** %14, align 8
  %114 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %115 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %114, i32 0, i32 1
  %116 = load %struct.auth_rrset*, %struct.auth_rrset** %115, align 8
  store %struct.auth_rrset* %116, %struct.auth_rrset** %13, align 8
  br label %101

117:                                              ; preds = %110
  %118 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %119 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %120 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %119, i32 0, i32 1
  store %struct.auth_rrset* %118, %struct.auth_rrset** %120, align 8
  %121 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %122 = icmp ne %struct.auth_rrset* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %125 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %126 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %125, i32 0, i32 1
  store %struct.auth_rrset* %124, %struct.auth_rrset** %126, align 8
  br label %131

127:                                              ; preds = %117
  %128 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %129 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %130 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %129, i32 0, i32 0
  store %struct.auth_rrset* %128, %struct.auth_rrset** %130, align 8
  br label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  store %struct.auth_rrset* %132, %struct.auth_rrset** %6, align 8
  br label %133

133:                                              ; preds = %131, %33, %20
  %134 = load %struct.auth_rrset*, %struct.auth_rrset** %6, align 8
  ret %struct.auth_rrset* %134
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @free(%struct.auth_rrset*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
