; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_domain_add_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_domain_add_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_data = type { i32 }
%struct.auth_rrset = type { i32 }

@LDNS_RR_TYPE_RRSIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_data*, i64, i32, i32*, i64, i32*)* @az_domain_add_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_domain_add_rr(%struct.auth_data* %0, i64 %1, i32 %2, i32* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.auth_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.auth_rrset*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_data* %0, %struct.auth_data** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %6
  %21 = load i32*, i32** %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = call i64 @rrsig_rdata_get_type_covered(i32* %21, i64 %22)
  store i64 %23, i64* %15, align 8
  %24 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %24, i64 %25)
  store %struct.auth_rrset* %26, %struct.auth_rrset** %14, align 8
  %27 = icmp ne %struct.auth_rrset* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %20
  %29 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %30 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @rdata_duplicate(i32 %31, i32* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32*, i32** %13, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %36
  store i32 1, i32* %7, align 4
  br label %145

42:                                               ; preds = %28
  %43 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @rrset_add_rr(%struct.auth_rrset* %43, i32 %44, i32* %45, i64 %46, i32 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %145

50:                                               ; preds = %42
  br label %90

51:                                               ; preds = %20
  %52 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %52, i64 %53)
  store %struct.auth_rrset* %54, %struct.auth_rrset** %14, align 8
  %55 = icmp ne %struct.auth_rrset* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %58 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i64 @rdata_duplicate(i32 %59, i32* %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32*, i32** %13, align 8
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %64
  store i32 1, i32* %7, align 4
  br label %145

70:                                               ; preds = %56
  %71 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @rrset_add_rr(%struct.auth_rrset* %71, i32 %72, i32* %73, i64 %74, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %145

78:                                               ; preds = %70
  br label %89

79:                                               ; preds = %51
  %80 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call %struct.auth_rrset* @rrset_create(%struct.auth_data* %80, i64 %81, i32 %82, i32* %83, i64 %84)
  %86 = icmp ne %struct.auth_rrset* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %145

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %78
  br label %90

90:                                               ; preds = %89, %50
  br label %144

91:                                               ; preds = %6
  %92 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %92, i64 %93)
  store %struct.auth_rrset* %94, %struct.auth_rrset** %14, align 8
  %95 = icmp ne %struct.auth_rrset* %94, null
  br i1 %95, label %96, label %119

96:                                               ; preds = %91
  %97 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %98 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @rdata_duplicate(i32 %99, i32* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load i32*, i32** %13, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32*, i32** %13, align 8
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %107, %104
  store i32 1, i32* %7, align 4
  br label %145

110:                                              ; preds = %96
  %111 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @rrset_add_rr(%struct.auth_rrset* %111, i32 %112, i32* %113, i64 %114, i32 0)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %145

118:                                              ; preds = %110
  br label %143

119:                                              ; preds = %91
  %120 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call %struct.auth_rrset* @rrset_create(%struct.auth_data* %120, i64 %121, i32 %122, i32* %123, i64 %124)
  store %struct.auth_rrset* %125, %struct.auth_rrset** %14, align 8
  %126 = icmp ne %struct.auth_rrset* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %119
  store i32 0, i32* %7, align 4
  br label %145

128:                                              ; preds = %119
  %129 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %130 = load i64, i64* @LDNS_RR_TYPE_RRSIG, align 8
  %131 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %129, i64 %130)
  store %struct.auth_rrset* %131, %struct.auth_rrset** %16, align 8
  %132 = icmp ne %struct.auth_rrset* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.auth_data*, %struct.auth_data** %8, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %137 = load %struct.auth_rrset*, %struct.auth_rrset** %16, align 8
  %138 = call i32 @rrset_moveover_rrsigs(%struct.auth_data* %134, i64 %135, %struct.auth_rrset* %136, %struct.auth_rrset* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  br label %145

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %128
  br label %143

143:                                              ; preds = %142, %118
  br label %144

144:                                              ; preds = %143, %90
  store i32 1, i32* %7, align 4
  br label %145

145:                                              ; preds = %144, %140, %127, %117, %109, %87, %77, %69, %49, %41
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i64 @rrsig_rdata_get_type_covered(i32*, i64) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i64) #1

declare dso_local i64 @rdata_duplicate(i32, i32*, i64) #1

declare dso_local i32 @rrset_add_rr(%struct.auth_rrset*, i32, i32*, i64, i32) #1

declare dso_local %struct.auth_rrset* @rrset_create(%struct.auth_data*, i64, i32, i32*, i64) #1

declare dso_local i32 @rrset_moveover_rrsigs(%struct.auth_data*, i64, %struct.auth_rrset*, %struct.auth_rrset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
