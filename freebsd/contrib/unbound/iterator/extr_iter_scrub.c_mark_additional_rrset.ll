; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_mark_additional_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_mark_additional_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32 }
%struct.rrset_parse = type { i64, i32, i32, %struct.rr_parse*, i32 }
%struct.rr_parse = type { %struct.rr_parse* }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_SECTION_ADDITIONAL = common dso_local global i64 0, align 8
@RRSET_SCRUB_OK = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.msg_parse*, %struct.rrset_parse*)* @mark_additional_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_additional_rrset(i32* %0, %struct.msg_parse* %1, %struct.rrset_parse* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.msg_parse*, align 8
  %6 = alloca %struct.rrset_parse*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rr_parse*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rrset_parse*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %5, align 8
  store %struct.rrset_parse* %2, %struct.rrset_parse** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %13 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @has_additional(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %101

18:                                               ; preds = %3
  %19 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %20 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %19, i32 0, i32 3
  %21 = load %struct.rr_parse*, %struct.rr_parse** %20, align 8
  store %struct.rr_parse* %21, %struct.rr_parse** %9, align 8
  br label %22

22:                                               ; preds = %97, %18
  %23 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %24 = icmp ne %struct.rr_parse* %23, null
  br i1 %24, label %25, label %101

25:                                               ; preds = %22
  %26 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %27 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @get_additional_name(%struct.rrset_parse* %26, %struct.rr_parse* %27, i32** %7, i64* %8, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %96

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %35 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %36 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pkt_hash_rrset(i32* %32, i32* %33, i32 %34, i32 %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %45 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %46 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse* %39, i32* %40, i32 %41, i32 0, i32* %42, i64 %43, i32 %44, i32 %47)
  store %struct.rrset_parse* %48, %struct.rrset_parse** %11, align 8
  %49 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %50 = icmp ne %struct.rrset_parse* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %31
  %52 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %53 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LDNS_SECTION_ADDITIONAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @RRSET_SCRUB_OK, align 4
  %59 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %60 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %51, %31
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %67 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %68 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pkt_hash_rrset(i32* %64, i32* %65, i32 %66, i32 %69, i32 0)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %77 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %78 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse* %71, i32* %72, i32 %73, i32 0, i32* %74, i64 %75, i32 %76, i32 %79)
  store %struct.rrset_parse* %80, %struct.rrset_parse** %11, align 8
  %81 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %82 = icmp ne %struct.rrset_parse* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %63
  %84 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %85 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @LDNS_SECTION_ADDITIONAL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, i32* @RRSET_SCRUB_OK, align 4
  %91 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  %92 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %83, %63
  br label %96

96:                                               ; preds = %95, %25
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.rr_parse*, %struct.rr_parse** %9, align 8
  %99 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %98, i32 0, i32 0
  %100 = load %struct.rr_parse*, %struct.rr_parse** %99, align 8
  store %struct.rr_parse* %100, %struct.rr_parse** %9, align 8
  br label %22

101:                                              ; preds = %17, %22
  ret void
}

declare dso_local i32 @has_additional(i32) #1

declare dso_local i64 @get_additional_name(%struct.rrset_parse*, %struct.rr_parse*, i32**, i64*, i32*) #1

declare dso_local i32 @pkt_hash_rrset(i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.rrset_parse* @msgparse_hashtable_lookup(%struct.msg_parse*, i32*, i32, i32, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
