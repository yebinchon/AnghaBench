; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_rrset_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_rrset_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { i64, i64, i64, i64, i64*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*)* @rrset_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rrset_equal(%struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca %struct.packed_rrset_data*, align 8
  %7 = alloca %struct.packed_rrset_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  %10 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %11 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %14, %struct.packed_rrset_data** %6, align 8
  %15 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %16 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %19, %struct.packed_rrset_data** %7, align 8
  %20 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %21 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %25 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %70, label %29

29:                                               ; preds = %2
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %31 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %70, label %39

39:                                               ; preds = %29
  %40 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %41 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %70, label %49

49:                                               ; preds = %39
  %50 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %51 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %55 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %70, label %59

59:                                               ; preds = %49
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %65 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @query_dname_compare(i32 %63, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59, %49, %39, %29, %2
  store i32 0, i32* %3, align 4
  br label %157

71:                                               ; preds = %59
  %72 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %73 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %76 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %103, label %79

79:                                               ; preds = %71
  %80 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %81 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %84 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %103, label %87

87:                                               ; preds = %79
  %88 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %89 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %92 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %87
  %96 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %97 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %100 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95, %87, %79, %71
  store i32 0, i32* %3, align 4
  br label %157

104:                                              ; preds = %95
  %105 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %106 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %109 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %107, %110
  store i64 %111, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %112

112:                                              ; preds = %153, %104
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %112
  %117 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %118 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %117, i32 0, i32 4
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %124 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %123, i32 0, i32 4
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %122, %128
  br i1 %129, label %151, label %130

130:                                              ; preds = %116
  %131 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %132 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %7, align 8
  %138 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* %8, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %6, align 8
  %144 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %143, i32 0, i32 4
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @memcmp(i32 %136, i32 %142, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %130, %116
  store i32 0, i32* %3, align 4
  br label %157

152:                                              ; preds = %130
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %8, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %8, align 8
  br label %112

156:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %151, %103, %70
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
