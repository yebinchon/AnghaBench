; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_derive_trust_tree_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_15__ = type { i64, i32*, i32* }

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @ldns_dnssec_derive_trust_tree_time(%struct.TYPE_15__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %10, align 8
  %15 = call %struct.TYPE_14__* (...) @ldns_dnssec_trust_tree_new()
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %14, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %149

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = icmp ne %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %147

22:                                               ; preds = %19
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %147

27:                                               ; preds = %22
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32*, i32** %6, align 8
  store i32* %37, i32** %10, align 8
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @ldns_rr_list_rr_count(i32* %42)
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @ldns_rr_list_rr(i32* %46, i64 0)
  store i32* %47, i32** %10, align 8
  br label %48

48:                                               ; preds = %45, %41, %38
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %146

51:                                               ; preds = %48
  %52 = load i32*, i32** %10, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %140

60:                                               ; preds = %51
  store i64 0, i64* %12, align 8
  br label %61

61:                                               ; preds = %131, %60
  %62 = load i64, i64* %12, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @ldns_rr_list_rr_count(i32* %63)
  %65 = icmp ult i64 %62, %64
  br i1 %65, label %66, label %134

66:                                               ; preds = %61
  %67 = load i32*, i32** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32* @ldns_rr_list_rr(i32* %67, i64 %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i64 @ldns_rr_get_type(i32* %70)
  %72 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %113

74:                                               ; preds = %66
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @ldns_rr_owner(i32* %75)
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @ldns_rr_owner(i32* %77)
  %79 = call i64 @ldns_dname_compare(i32 %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %74
  store i64 0, i64* %13, align 8
  br label %82

82:                                               ; preds = %100, %81
  %83 = load i64, i64* %13, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i64 @ldns_rr_list_rr_count(i32* %84)
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @ldns_rr_owner(i32* %88)
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @ldns_rr_owner(i32* %90)
  %92 = call i64 @ldns_dname_compare(i32 %89, i32 %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %87, %82
  %95 = phi i1 [ false, %82 ], [ %93, %87 ]
  br i1 %95, label %96, label %103

96:                                               ; preds = %94
  %97 = load i32*, i32** %8, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i32* @ldns_rr_list_rr(i32* %97, i64 %98)
  store i32* %99, i32** %10, align 8
  br label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %13, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %13, align 8
  br label %82

103:                                              ; preds = %94
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @ldns_rr_owner(i32* %104)
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @ldns_rr_owner(i32* %106)
  %108 = call i64 @ldns_dname_compare(i32 %105, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %134

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %74
  br label %113

113:                                              ; preds = %112, %66
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @ldns_dnssec_derive_trust_tree_normal_rrset_time(%struct.TYPE_14__* %119, %struct.TYPE_15__* %120, i32* %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %113
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @ldns_dnssec_derive_trust_tree_dnskey_rrset_time(%struct.TYPE_14__* %125, %struct.TYPE_15__* %126, i32* %127, i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %124
  %132 = load i64, i64* %12, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %12, align 8
  br label %61

134:                                              ; preds = %110, %61
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @ldns_dnssec_derive_trust_tree_ds_rrset_time(%struct.TYPE_14__* %135, %struct.TYPE_15__* %136, i32* %137, i32 %138)
  br label %145

140:                                              ; preds = %51
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @ldns_dnssec_derive_trust_tree_no_sig_time(%struct.TYPE_14__* %141, %struct.TYPE_15__* %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %134
  br label %146

146:                                              ; preds = %145, %48
  br label %147

147:                                              ; preds = %146, %22, %19
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %148, %struct.TYPE_14__** %4, align 8
  br label %149

149:                                              ; preds = %147, %18
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %150
}

declare dso_local %struct.TYPE_14__* @ldns_dnssec_trust_tree_new(...) #1

declare dso_local i64 @ldns_rr_list_rr_count(i32*) #1

declare dso_local i32* @ldns_rr_list_rr(i32*, i64) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i64 @ldns_dname_compare(i32, i32) #1

declare dso_local i32 @ldns_rr_owner(i32*) #1

declare dso_local i32 @ldns_dnssec_derive_trust_tree_normal_rrset_time(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @ldns_dnssec_derive_trust_tree_dnskey_rrset_time(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32*, i32) #1

declare dso_local i32 @ldns_dnssec_derive_trust_tree_ds_rrset_time(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32) #1

declare dso_local i32 @ldns_dnssec_derive_trust_tree_no_sig_time(%struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
