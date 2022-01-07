; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_scrub_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_scrub_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"removing irrelevant DS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_scrub_ds(%struct.dns_msg* %0, %struct.ub_packed_rrset_key* %1, i32* %2) #0 {
  %4 = alloca %struct.dns_msg*, align 8
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.dns_msg* %0, %struct.dns_msg** %4, align 8
  store %struct.ub_packed_rrset_key* %1, %struct.ub_packed_rrset_key** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %10 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  br label %14

14:                                               ; preds = %121, %66, %3
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %17 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %22 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %20, %25
  %27 = icmp ult i64 %15, %26
  br i1 %27, label %28, label %124

28:                                               ; preds = %14
  %29 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %30 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %33, i64 %34
  %36 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %35, align 8
  store %struct.ub_packed_rrset_key* %36, %struct.ub_packed_rrset_key** %8, align 8
  %37 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %38 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ntohs(i32 %40)
  %42 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %121

44:                                               ; preds = %28
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %46 = icmp ne %struct.ub_packed_rrset_key* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %49 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %53 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dname_subdomain_c(i32 %51, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %61 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @query_dname_compare(i32* %59, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %121

66:                                               ; preds = %58, %47, %44
  %67 = load i32, i32* @VERB_ALGO, align 4
  %68 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %69 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %73 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ntohs(i32 %75)
  %77 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %8, align 8
  %78 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ntohs(i32 %80)
  %82 = call i32 @log_nametypeclass(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %76, i64 %81)
  %83 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %84 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %87, i64 %88
  %90 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %91 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %94, i64 %95
  %97 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %96, i64 1
  %98 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %99 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = sub i64 %102, %103
  %105 = sub i64 %104, 1
  %106 = mul i64 8, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memmove(%struct.ub_packed_rrset_key** %89, %struct.ub_packed_rrset_key** %97, i32 %107)
  %109 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %110 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, -1
  store i64 %114, i64* %112, align 8
  %115 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %116 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, -1
  store i64 %120, i64* %118, align 8
  br label %14

121:                                              ; preds = %58, %28
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %7, align 8
  br label %14

124:                                              ; preds = %14
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @dname_subdomain_c(i32, i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @memmove(%struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
