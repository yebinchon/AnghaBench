; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_domain_remove_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_domain_remove_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { i32 }
%struct.auth_rrset = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_data*, i64, i32*, i64, i32*)* @az_domain_remove_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_domain_remove_rr(%struct.auth_data* %0, i64 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.auth_rrset*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.auth_rrset*, align 8
  %15 = alloca i64, align 8
  store %struct.auth_data* %0, %struct.auth_data** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %16, i64 %17)
  store %struct.auth_rrset* %18, %struct.auth_rrset** %12, align 8
  %19 = icmp ne %struct.auth_rrset* %18, null
  br i1 %19, label %20, label %107

20:                                               ; preds = %5
  %21 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %22 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @az_rrset_find_rr(%struct.TYPE_3__* %23, i32* %24, i64 %25, i64* %13)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %106

28:                                               ; preds = %20
  %29 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %30 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %28
  %36 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %37 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @domain_remove_rrset(%struct.auth_data* %43, i64 %44)
  br label %105

46:                                               ; preds = %35, %28
  %47 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %48 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %97

53:                                               ; preds = %46
  %54 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %55 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %53
  %61 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %62 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %63 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %61, i64 %62)
  store %struct.auth_rrset* %63, %struct.auth_rrset** %14, align 8
  %64 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %65 = icmp ne %struct.auth_rrset* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %68 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %69 = call i32 @rrsigs_copy_from_rrset_to_rrsigset(%struct.auth_rrset* %67, %struct.auth_rrset* %68)
  %70 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @domain_remove_rrset(%struct.auth_data* %70, i64 %71)
  br label %96

73:                                               ; preds = %60
  %74 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @rrset_remove_rr(%struct.auth_rrset* %74, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %142

79:                                               ; preds = %73
  %80 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %81 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %82 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %84 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %89 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 4
  %92 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %93 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %79, %66
  br label %104

97:                                               ; preds = %53, %46
  %98 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @rrset_remove_rr(%struct.auth_rrset* %98, i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %142

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %96
  br label %105

105:                                              ; preds = %104, %42
  store i32 1, i32* %6, align 4
  br label %142

106:                                              ; preds = %20
  br label %107

107:                                              ; preds = %106, %5
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load i32*, i32** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @rrsig_rdata_get_type_covered(i32* %112, i64 %113)
  store i64 %114, i64* %15, align 8
  %115 = load %struct.auth_data*, %struct.auth_data** %7, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %115, i64 %116)
  store %struct.auth_rrset* %117, %struct.auth_rrset** %12, align 8
  %118 = icmp ne %struct.auth_rrset* %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %111
  %120 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %121 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i64 @az_rrset_find_rrsig(%struct.TYPE_3__* %122, i32* %123, i64 %124, i64* %13)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = load %struct.auth_rrset*, %struct.auth_rrset** %12, align 8
  %129 = load i64, i64* %13, align 8
  %130 = call i32 @rrset_remove_rr(%struct.auth_rrset* %128, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %142

133:                                              ; preds = %127
  store i32 1, i32* %6, align 4
  br label %142

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %134, %111
  br label %136

136:                                              ; preds = %135, %107
  %137 = load i32*, i32** %11, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32*, i32** %11, align 8
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %139, %136
  store i32 1, i32* %6, align 4
  br label %142

142:                                              ; preds = %141, %133, %132, %105, %102, %78
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i64) #1

declare dso_local i64 @az_rrset_find_rr(%struct.TYPE_3__*, i32*, i64, i64*) #1

declare dso_local i32 @domain_remove_rrset(%struct.auth_data*, i64) #1

declare dso_local i32 @rrsigs_copy_from_rrset_to_rrsigset(%struct.auth_rrset*, %struct.auth_rrset*) #1

declare dso_local i32 @rrset_remove_rr(%struct.auth_rrset*, i64) #1

declare dso_local i64 @rrsig_rdata_get_type_covered(i32*, i64) #1

declare dso_local i64 @az_rrset_find_rrsig(%struct.TYPE_3__*, i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
