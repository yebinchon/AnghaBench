; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_add_additionals_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_add_additionals_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_rrset = type { %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i64, i32*, i64* }
%struct.auth_data = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_rrset*, i64)* @az_add_additionals_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_add_additionals_from(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, %struct.auth_rrset* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.dns_msg*, align 8
  %10 = alloca %struct.auth_rrset*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.packed_rrset_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.auth_data*, align 8
  %16 = alloca %struct.auth_rrset*, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.regional* %1, %struct.regional** %8, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %9, align 8
  store %struct.auth_rrset* %3, %struct.auth_rrset** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.auth_rrset*, %struct.auth_rrset** %10, align 8
  %18 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %17, i32 0, i32 0
  %19 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %18, align 8
  store %struct.packed_rrset_data* %19, %struct.packed_rrset_data** %12, align 8
  %20 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %21 = icmp ne %struct.packed_rrset_data* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %117

23:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %113, %23
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %27 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %116

30:                                               ; preds = %24
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %32 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = add i64 2, %38
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %113

42:                                               ; preds = %30
  %43 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %44 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 2
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %49, %50
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %53 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %11, align 8
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @dname_valid(i64 %51, i32 %62)
  store i64 %63, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %42
  br label %113

66:                                               ; preds = %42
  %67 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %68 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %12, align 8
  %69 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 2
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %74, %75
  %77 = load i64, i64* %14, align 8
  %78 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %67, i64 %76, i64 %77)
  store %struct.auth_data* %78, %struct.auth_data** %15, align 8
  %79 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %80 = icmp ne %struct.auth_data* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %66
  br label %113

82:                                               ; preds = %66
  %83 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %84 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %85 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %83, i32 %84)
  store %struct.auth_rrset* %85, %struct.auth_rrset** %16, align 8
  %86 = icmp ne %struct.auth_rrset* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %89 = load %struct.regional*, %struct.regional** %8, align 8
  %90 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %91 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %92 = load %struct.auth_rrset*, %struct.auth_rrset** %16, align 8
  %93 = call i32 @msg_add_rrset_ar(%struct.auth_zone* %88, %struct.regional* %89, %struct.dns_msg* %90, %struct.auth_data* %91, %struct.auth_rrset* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %117

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %82
  %98 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %99 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %100 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %98, i32 %99)
  store %struct.auth_rrset* %100, %struct.auth_rrset** %16, align 8
  %101 = icmp ne %struct.auth_rrset* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %104 = load %struct.regional*, %struct.regional** %8, align 8
  %105 = load %struct.dns_msg*, %struct.dns_msg** %9, align 8
  %106 = load %struct.auth_data*, %struct.auth_data** %15, align 8
  %107 = load %struct.auth_rrset*, %struct.auth_rrset** %16, align 8
  %108 = call i32 @msg_add_rrset_ar(%struct.auth_zone* %103, %struct.regional* %104, %struct.dns_msg* %105, %struct.auth_data* %106, %struct.auth_rrset* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %117

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %97
  br label %113

113:                                              ; preds = %112, %81, %65, %41
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %13, align 8
  br label %24

116:                                              ; preds = %24
  store i32 1, i32* %6, align 4
  br label %117

117:                                              ; preds = %116, %110, %95, %22
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i64 @dname_valid(i64, i32) #1

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i64, i64) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @msg_add_rrset_ar(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
