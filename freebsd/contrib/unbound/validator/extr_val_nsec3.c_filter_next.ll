; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_filter_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_filter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32, i32 }
%struct.nsec3_filter = type { i64, i64, %struct.ub_packed_rrset_key**, i32 }

@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_packed_rrset_key* (%struct.nsec3_filter*, i64*, i32*)* @filter_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_packed_rrset_key* @filter_next(%struct.nsec3_filter* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.ub_packed_rrset_key*, align 8
  %5 = alloca %struct.nsec3_filter*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.nsec3_filter* %0, %struct.nsec3_filter** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %13 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %144

17:                                               ; preds = %3
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %140, %17
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %23 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %143

26:                                               ; preds = %20
  %27 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %28 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %27, i32 0, i32 2
  %29 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %29, i64 %30
  %32 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %31, align 8
  %33 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ntohs(i32 %35)
  %37 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %54, label %39

39:                                               ; preds = %26
  %40 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %41 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %40, i32 0, i32 2
  %42 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %42, i64 %43
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %44, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ntohs(i32 %48)
  %50 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %51 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39, %26
  br label %140

55:                                               ; preds = %39
  %56 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %57 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %56, i32 0, i32 2
  %58 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %58, i64 %59
  %61 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %60, align 8
  %62 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %10, align 8
  %65 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %66 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %65, i32 0, i32 2
  %67 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %67, i64 %68
  %70 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %69, align 8
  %71 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  %74 = call i32 @dname_remove_label(i32** %10, i64* %11)
  %75 = load i32*, i32** %10, align 8
  %76 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %77 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @query_dname_compare(i32* %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %55
  br label %140

82:                                               ; preds = %55
  %83 = load i64, i64* %8, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %92

91:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %87
  br label %93

93:                                               ; preds = %136, %92
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %96 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %95, i32 0, i32 2
  %97 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %97, i64 %98
  %100 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %99, align 8
  %101 = call i64 @rrset_get_count(%struct.ub_packed_rrset_key* %100)
  %102 = trunc i64 %101 to i32
  %103 = icmp slt i32 %94, %102
  br i1 %103, label %104, label %139

104:                                              ; preds = %93
  %105 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %106 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %105, i32 0, i32 2
  %107 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %107, i64 %108
  %110 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @nsec3_unknown_flags(%struct.ub_packed_rrset_key* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %104
  %115 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %116 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %115, i32 0, i32 2
  %117 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %117, i64 %118
  %120 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @nsec3_known_algo(%struct.ub_packed_rrset_key* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %114, %104
  br label %136

125:                                              ; preds = %114
  %126 = load i64, i64* %8, align 8
  %127 = load i64*, i64** %6, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i32, i32* %9, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  %130 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %131 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %130, i32 0, i32 2
  %132 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %132, i64 %133
  %135 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %134, align 8
  store %struct.ub_packed_rrset_key* %135, %struct.ub_packed_rrset_key** %4, align 8
  br label %144

136:                                              ; preds = %124
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %93

139:                                              ; preds = %93
  br label %140

140:                                              ; preds = %139, %81, %54
  %141 = load i64, i64* %8, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %8, align 8
  br label %20

143:                                              ; preds = %20
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %4, align 8
  br label %144

144:                                              ; preds = %143, %125, %16
  %145 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %4, align 8
  ret %struct.ub_packed_rrset_key* %145
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i64 @rrset_get_count(%struct.ub_packed_rrset_key*) #1

declare dso_local i64 @nsec3_unknown_flags(%struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @nsec3_known_algo(%struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
