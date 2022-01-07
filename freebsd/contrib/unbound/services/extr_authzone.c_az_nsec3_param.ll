; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_nsec3_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32, i32 }
%struct.auth_data = type { i32 }
%struct.auth_rrset = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64**, i64* }

@LDNS_RR_TYPE_NSEC3PARAM = common dso_local global i32 0, align 4
@NSEC3_UNKNOWN_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, i32*, i64*, i64**, i64*)* @az_nsec3_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_nsec3_param(%struct.auth_zone* %0, i32* %1, i64* %2, i64** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.auth_data*, align 8
  %13 = alloca %struct.auth_rrset*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64** %3, i64*** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %18 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %19 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %22 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.auth_data* @az_find_name(%struct.auth_zone* %17, i32 %20, i32 %23)
  store %struct.auth_data* %24, %struct.auth_data** %12, align 8
  %25 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %26 = icmp ne %struct.auth_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %124

28:                                               ; preds = %5
  %29 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %30 = load i32, i32* @LDNS_RR_TYPE_NSEC3PARAM, align 4
  %31 = call %struct.auth_rrset* @az_domain_rrset(%struct.auth_data* %29, i32 %30)
  store %struct.auth_rrset* %31, %struct.auth_rrset** %13, align 8
  %32 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %33 = icmp ne %struct.auth_rrset* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %36 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %28
  store i32 0, i32* %6, align 4
  br label %124

42:                                               ; preds = %34
  store i64 0, i64* %14, align 8
  br label %43

43:                                               ; preds = %120, %42
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %46 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %44, %49
  br i1 %50, label %51, label %123

51:                                               ; preds = %43
  %52 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %53 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64**, i64*** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds i64*, i64** %56, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 2
  store i64* %60, i64** %15, align 8
  %61 = load %struct.auth_rrset*, %struct.auth_rrset** %13, align 8
  %62 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %16, align 8
  %69 = load i64, i64* %16, align 8
  %70 = icmp ult i64 %69, 7
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %120

72:                                               ; preds = %51
  %73 = load i64*, i64** %15, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @nsec3_hash_algo_size_supported(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %120

80:                                               ; preds = %72
  %81 = load i64, i64* %16, align 8
  %82 = load i64*, i64** %15, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 4
  %84 = load i64, i64* %83, align 8
  %85 = add i64 7, %84
  %86 = icmp ult i64 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %120

88:                                               ; preds = %80
  %89 = load i64*, i64** %15, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NSEC3_UNKNOWN_FLAGS, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %120

96:                                               ; preds = %88
  %97 = load i64*, i64** %15, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i64*, i64** %15, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  %104 = call i64 @sldns_read_uint16(i64* %103)
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i64*, i64** %15, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %11, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i64*, i64** %11, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %96
  %114 = load i64**, i64*** %10, align 8
  store i64* null, i64** %114, align 8
  br label %119

115:                                              ; preds = %96
  %116 = load i64*, i64** %15, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 5
  %118 = load i64**, i64*** %10, align 8
  store i64* %117, i64** %118, align 8
  br label %119

119:                                              ; preds = %115, %113
  store i32 1, i32* %6, align 4
  br label %124

120:                                              ; preds = %95, %87, %79, %71
  %121 = load i64, i64* %14, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %14, align 8
  br label %43

123:                                              ; preds = %43
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %119, %41, %27
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.auth_data* @az_find_name(%struct.auth_zone*, i32, i32) #1

declare dso_local %struct.auth_rrset* @az_domain_rrset(%struct.auth_data*, i32) #1

declare dso_local i32 @nsec3_hash_algo_size_supported(i32) #1

declare dso_local i64 @sldns_read_uint16(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
