; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_covers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_covers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsec3_cached_hash = type { i64, i64, i32*, i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_covers(i32* %0, %struct.nsec3_cached_hash* %1, %struct.ub_packed_rrset_key* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nsec3_cached_hash*, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.nsec3_cached_hash* %1, %struct.nsec3_cached_hash** %8, align 8
  store %struct.ub_packed_rrset_key* %2, %struct.ub_packed_rrset_key** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @nsec3_get_nextowner(%struct.ub_packed_rrset_key* %16, i32 %17, i32** %12, i64* %14)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %144

21:                                               ; preds = %5
  %22 = load i64, i64* %14, align 8
  %23 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %24 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %62, label %27

27:                                               ; preds = %21
  %28 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %29 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %27
  %33 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %34 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %32
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %44 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %62, label %47

47:                                               ; preds = %37
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %49 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %54 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %52, i64 %57
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @query_dname_compare(i64* %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47, %37, %32, %27, %21
  store i32 0, i32* %6, align 4
  br label %144

63:                                               ; preds = %47
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %65 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %70 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %73 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @label_compare_lower(i64* %68, i32 %71, i64 %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %63
  %78 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %79 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %14, align 8
  %83 = call i64 @memcmp(i32* %80, i32* %81, i64 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 1, i32* %6, align 4
  br label %144

86:                                               ; preds = %77, %63
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @sldns_buffer_clear(i32* %87)
  %89 = load i32*, i32** %11, align 8
  %90 = call i32* @sldns_buffer_begin(i32* %89)
  store i32* %90, i32** %13, align 8
  %91 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %92 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = bitcast i64* %94 to i8*
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %98 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @sldns_buffer_limit(i32* %101)
  %103 = call i32 @sldns_b32_pton_extended_hex(i8* %96, i64 %99, i32* %100, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %86
  store i32 0, i32* %6, align 4
  br label %144

107:                                              ; preds = %86
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %111 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %109, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %14, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %107
  store i32 0, i32* %6, align 4
  br label %144

120:                                              ; preds = %114
  %121 = load i32*, i32** %12, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i64, i64* %14, align 8
  %124 = call i64 @memcmp(i32* %121, i32* %122, i64 %123)
  %125 = icmp sle i64 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %120
  %127 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %128 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %13, align 8
  %131 = load i64, i64* %14, align 8
  %132 = call i64 @memcmp(i32* %129, i32* %130, i64 %131)
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %126
  %135 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %8, align 8
  %136 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32*, i32** %12, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i64 @memcmp(i32* %137, i32* %138, i64 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134, %126
  store i32 1, i32* %6, align 4
  br label %144

143:                                              ; preds = %134, %120
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %142, %119, %106, %85, %62, %20
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @nsec3_get_nextowner(%struct.ub_packed_rrset_key*, i32, i32**, i64*) #1

declare dso_local i64 @query_dname_compare(i64*, i32*) #1

declare dso_local i64 @label_compare_lower(i64*, i32, i64) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32* @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_b32_pton_extended_hex(i8*, i64, i32*, i32) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
