; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_get_rrset_trust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_get_rrset_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, %struct.rrset_parse* }
%struct.rrset_parse = type { i64, i64, %struct.rrset_parse* }

@BIT_AA = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_CNAME = common dso_local global i64 0, align 8
@rrset_trust_ans_AA = common dso_local global i32 0, align 4
@rrset_trust_ans_noAA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNAME = common dso_local global i64 0, align 8
@LDNS_SECTION_AUTHORITY = common dso_local global i64 0, align 8
@rrset_trust_auth_AA = common dso_local global i32 0, align 4
@rrset_trust_auth_noAA = common dso_local global i32 0, align 4
@rrset_trust_add_AA = common dso_local global i32 0, align 4
@rrset_trust_add_noAA = common dso_local global i32 0, align 4
@rrset_trust_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_parse*, %struct.rrset_parse*)* @get_rrset_trust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rrset_trust(%struct.msg_parse* %0, %struct.rrset_parse* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_parse*, align 8
  %5 = alloca %struct.rrset_parse*, align 8
  %6 = alloca i32, align 4
  store %struct.msg_parse* %0, %struct.msg_parse** %4, align 8
  store %struct.rrset_parse* %1, %struct.rrset_parse** %5, align 8
  %7 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %8 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BIT_AA, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %13 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %92

20:                                               ; preds = %17
  %21 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %22 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %21, i32 0, i32 1
  %23 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %24 = icmp ne %struct.rrset_parse* %23, null
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %27 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %26, i32 0, i32 1
  %28 = load %struct.rrset_parse*, %struct.rrset_parse** %27, align 8
  %29 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %35 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %34, i32 0, i32 1
  %36 = load %struct.rrset_parse*, %struct.rrset_parse** %35, align 8
  %37 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LDNS_RR_TYPE_CNAME, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %43 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %44 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %43, i32 0, i32 1
  %45 = load %struct.rrset_parse*, %struct.rrset_parse** %44, align 8
  %46 = icmp eq %struct.rrset_parse* %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @rrset_trust_ans_AA, align 4
  store i32 %48, i32* %3, align 4
  br label %114

49:                                               ; preds = %41
  %50 = load i32, i32* @rrset_trust_ans_noAA, align 4
  store i32 %50, i32* %3, align 4
  br label %114

51:                                               ; preds = %33, %25, %20
  %52 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %53 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %52, i32 0, i32 1
  %54 = load %struct.rrset_parse*, %struct.rrset_parse** %53, align 8
  %55 = icmp ne %struct.rrset_parse* %54, null
  br i1 %55, label %56, label %90

56:                                               ; preds = %51
  %57 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %58 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %57, i32 0, i32 1
  %59 = load %struct.rrset_parse*, %struct.rrset_parse** %58, align 8
  %60 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LDNS_SECTION_ANSWER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %90

64:                                               ; preds = %56
  %65 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %66 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %65, i32 0, i32 1
  %67 = load %struct.rrset_parse*, %struct.rrset_parse** %66, align 8
  %68 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LDNS_RR_TYPE_DNAME, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %64
  %73 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %74 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %75 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %74, i32 0, i32 1
  %76 = load %struct.rrset_parse*, %struct.rrset_parse** %75, align 8
  %77 = icmp eq %struct.rrset_parse* %73, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %72
  %79 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %80 = load %struct.msg_parse*, %struct.msg_parse** %4, align 8
  %81 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %80, i32 0, i32 1
  %82 = load %struct.rrset_parse*, %struct.rrset_parse** %81, align 8
  %83 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %82, i32 0, i32 2
  %84 = load %struct.rrset_parse*, %struct.rrset_parse** %83, align 8
  %85 = icmp eq %struct.rrset_parse* %79, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78, %72
  %87 = load i32, i32* @rrset_trust_ans_AA, align 4
  store i32 %87, i32* %3, align 4
  br label %114

88:                                               ; preds = %78
  %89 = load i32, i32* @rrset_trust_ans_noAA, align 4
  store i32 %89, i32* %3, align 4
  br label %114

90:                                               ; preds = %64, %56, %51
  %91 = load i32, i32* @rrset_trust_ans_AA, align 4
  store i32 %91, i32* %3, align 4
  br label %114

92:                                               ; preds = %17
  %93 = load i32, i32* @rrset_trust_ans_noAA, align 4
  store i32 %93, i32* %3, align 4
  br label %114

94:                                               ; preds = %2
  %95 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %96 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LDNS_SECTION_AUTHORITY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @rrset_trust_auth_AA, align 4
  store i32 %104, i32* %3, align 4
  br label %114

105:                                              ; preds = %100
  %106 = load i32, i32* @rrset_trust_auth_noAA, align 4
  store i32 %106, i32* %3, align 4
  br label %114

107:                                              ; preds = %94
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @rrset_trust_add_AA, align 4
  store i32 %111, i32* %3, align 4
  br label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @rrset_trust_add_noAA, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %110, %105, %103, %92, %90, %88, %86, %49, %47
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
