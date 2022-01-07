; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_from_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_from_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }
%struct.dns_msg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.ub_packed_rrset_key** }
%struct.ub_packed_rrset_key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.regional = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt* @delegpt_from_message(%struct.dns_msg* %0, %struct.regional* %1) #0 {
  %3 = alloca %struct.delegpt*, align 8
  %4 = alloca %struct.dns_msg*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.ub_packed_rrset_key*, align 8
  %7 = alloca %struct.delegpt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  store %struct.dns_msg* %0, %struct.dns_msg** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %6, align 8
  %10 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %11 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %14 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %19 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %24 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %22, %27
  %29 = call %struct.ub_packed_rrset_key* @find_NS(%struct.TYPE_4__* %12, i64 %17, i64 %28)
  store %struct.ub_packed_rrset_key* %29, %struct.ub_packed_rrset_key** %6, align 8
  %30 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %31 = icmp ne %struct.ub_packed_rrset_key* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %2
  %33 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %34 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %37 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.ub_packed_rrset_key* @find_NS(%struct.TYPE_4__* %35, i64 0, i64 %40)
  store %struct.ub_packed_rrset_key* %41, %struct.ub_packed_rrset_key** %6, align 8
  br label %42

42:                                               ; preds = %32, %2
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %44 = icmp ne %struct.ub_packed_rrset_key* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %150

46:                                               ; preds = %42
  %47 = load %struct.regional*, %struct.regional** %5, align 8
  %48 = call %struct.delegpt* @delegpt_create(%struct.regional* %47)
  store %struct.delegpt* %48, %struct.delegpt** %7, align 8
  %49 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %50 = icmp ne %struct.delegpt* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %150

52:                                               ; preds = %46
  %53 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %54 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %56 = load %struct.regional*, %struct.regional** %5, align 8
  %57 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %58 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @delegpt_set_name(%struct.delegpt* %55, %struct.regional* %56, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %150

64:                                               ; preds = %52
  %65 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %66 = load %struct.regional*, %struct.regional** %5, align 8
  %67 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %6, align 8
  %68 = call i32 @delegpt_rrset_add_ns(%struct.delegpt* %65, %struct.regional* %66, %struct.ub_packed_rrset_key* %67, i32 0)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %150

71:                                               ; preds = %64
  store i64 0, i64* %8, align 8
  br label %72

72:                                               ; preds = %145, %71
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %75 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %80, label %148

80:                                               ; preds = %72
  %81 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %82 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %85, i64 %86
  %88 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %87, align 8
  store %struct.ub_packed_rrset_key* %88, %struct.ub_packed_rrset_key** %9, align 8
  %89 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %90 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %80
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %99 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.dns_msg*, %struct.dns_msg** %4, align 8
  %104 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %102, %107
  %109 = icmp ult i64 %97, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %96
  br label %145

111:                                              ; preds = %96, %80
  %112 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %113 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @ntohs(i32 %115)
  %117 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %121 = load %struct.regional*, %struct.regional** %5, align 8
  %122 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %123 = call i32 @delegpt_add_rrset_A(%struct.delegpt* %120, %struct.regional* %121, %struct.ub_packed_rrset_key* %122, i32 0)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %150

126:                                              ; preds = %119
  br label %144

127:                                              ; preds = %111
  %128 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %129 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @ntohs(i32 %131)
  %133 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %137 = load %struct.regional*, %struct.regional** %5, align 8
  %138 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %139 = call i32 @delegpt_add_rrset_AAAA(%struct.delegpt* %136, %struct.regional* %137, %struct.ub_packed_rrset_key* %138, i32 0)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %135
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %150

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %127
  br label %144

144:                                              ; preds = %143, %126
  br label %145

145:                                              ; preds = %144, %110
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %8, align 8
  br label %72

148:                                              ; preds = %72
  %149 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  store %struct.delegpt* %149, %struct.delegpt** %3, align 8
  br label %150

150:                                              ; preds = %148, %141, %125, %70, %63, %51, %45
  %151 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  ret %struct.delegpt* %151
}

declare dso_local %struct.ub_packed_rrset_key* @find_NS(%struct.TYPE_4__*, i64, i64) #1

declare dso_local %struct.delegpt* @delegpt_create(%struct.regional*) #1

declare dso_local i32 @delegpt_set_name(%struct.delegpt*, %struct.regional*, i32) #1

declare dso_local i32 @delegpt_rrset_add_ns(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @delegpt_add_rrset_A(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

declare dso_local i32 @delegpt_add_rrset_AAAA(%struct.delegpt*, %struct.regional*, %struct.ub_packed_rrset_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
