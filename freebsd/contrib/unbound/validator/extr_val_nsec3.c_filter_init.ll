; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_filter_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_filter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsec3_filter = type { i64, i64, i64, i32*, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32, i32 }
%struct.query_info = type { i64, i64, i32* }

@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nsec3_filter*, %struct.ub_packed_rrset_key**, i64, %struct.query_info*)* @filter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_init(%struct.nsec3_filter* %0, %struct.ub_packed_rrset_key** %1, i64 %2, %struct.query_info* %3) #0 {
  %5 = alloca %struct.nsec3_filter*, align 8
  %6 = alloca %struct.ub_packed_rrset_key**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.nsec3_filter* %0, %struct.nsec3_filter** %5, align 8
  store %struct.ub_packed_rrset_key** %1, %struct.ub_packed_rrset_key*** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.query_info* %3, %struct.query_info** %8, align 8
  %12 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %13 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %12, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %15 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %6, align 8
  %17 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %18 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %17, i32 0, i32 4
  store %struct.ub_packed_rrset_key** %16, %struct.ub_packed_rrset_key*** %18, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %21 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.query_info*, %struct.query_info** %8, align 8
  %23 = getelementptr inbounds %struct.query_info, %struct.query_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %26 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %126, %4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %129

31:                                               ; preds = %27
  %32 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %32, i64 %33
  %35 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %34, align 8
  %36 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  %40 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %55, label %42

42:                                               ; preds = %31
  %43 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %43, i64 %44
  %46 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %45, align 8
  %47 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @ntohs(i32 %49)
  %51 = load %struct.query_info*, %struct.query_info** %8, align 8
  %52 = getelementptr inbounds %struct.query_info, %struct.query_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %42, %31
  br label %126

56:                                               ; preds = %42
  %57 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %57, i64 %58
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %59, align 8
  %61 = call i32 @nsec3_rrset_has_known(%struct.ub_packed_rrset_key* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %126

64:                                               ; preds = %56
  %65 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %65, i64 %66
  %68 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %67, align 8
  %69 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %10, align 8
  %72 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %6, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %72, i64 %73
  %75 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %74, align 8
  %76 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  %79 = call i32 @dname_remove_label(i32** %10, i64* %11)
  %80 = load %struct.query_info*, %struct.query_info** %8, align 8
  %81 = getelementptr inbounds %struct.query_info, %struct.query_info* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i64 @dname_subdomain_c(i32* %82, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %64
  %87 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %88 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %94 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @dname_subdomain_c(i32* %92, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %91, %86
  %99 = load %struct.query_info*, %struct.query_info** %8, align 8
  %100 = getelementptr inbounds %struct.query_info, %struct.query_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load %struct.query_info*, %struct.query_info** %8, align 8
  %106 = getelementptr inbounds %struct.query_info, %struct.query_info* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = call i64 @query_dname_compare(i32* %107, i32* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %104
  %112 = load %struct.query_info*, %struct.query_info** %8, align 8
  %113 = getelementptr inbounds %struct.query_info, %struct.query_info* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @dname_is_root(i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %126

118:                                              ; preds = %111, %104, %98
  %119 = load i32*, i32** %10, align 8
  %120 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %121 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %120, i32 0, i32 3
  store i32* %119, i32** %121, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.nsec3_filter*, %struct.nsec3_filter** %5, align 8
  %124 = getelementptr inbounds %struct.nsec3_filter, %struct.nsec3_filter* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %118, %91, %64
  br label %126

126:                                              ; preds = %125, %117, %63, %55
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %9, align 8
  br label %27

129:                                              ; preds = %27
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @nsec3_rrset_has_known(%struct.ub_packed_rrset_key*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local i32 @dname_is_root(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
