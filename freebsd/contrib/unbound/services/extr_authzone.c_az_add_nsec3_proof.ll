; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_add_nsec3_proof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_az_add_nsec3_proof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_data = type { i32 }

@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, i32*, i64, i32*, i64, i32, i32, i32, i32)* @az_add_nsec3_proof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az_add_nsec3_proof(%struct.auth_zone* %0, %struct.regional* %1, %struct.dns_msg* %2, i32* %3, i64 %4, i32* %5, i64 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.auth_zone*, align 8
  %14 = alloca %struct.regional*, align 8
  %15 = alloca %struct.dns_msg*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.auth_data*, align 8
  %30 = alloca %struct.auth_data*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  store %struct.auth_zone* %0, %struct.auth_zone** %13, align 8
  store %struct.regional* %1, %struct.regional** %14, align 8
  store %struct.dns_msg* %2, %struct.dns_msg** %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i32* %5, i32** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 0, i32* %28, align 4
  %37 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %38 = call i32 @az_nsec3_param(%struct.auth_zone* %37, i32* %24, i64* %25, i32** %27, i64* %26)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %11
  store i32 1, i32* %12, align 4
  br label %153

41:                                               ; preds = %11
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = load i64, i64* %19, align 8
  %48 = load i32, i32* %24, align 4
  %49 = load i64, i64* %25, align 8
  %50 = load i32*, i32** %27, align 8
  %51 = load i64, i64* %26, align 8
  %52 = call %struct.auth_data* @az_nsec3_find_exact(%struct.auth_zone* %45, i32* %46, i64 %47, i32 %48, i64 %49, i32* %50, i64 %51)
  store %struct.auth_data* %52, %struct.auth_data** %30, align 8
  %53 = load %struct.auth_data*, %struct.auth_data** %30, align 8
  %54 = icmp ne %struct.auth_data* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %57 = load %struct.regional*, %struct.regional** %14, align 8
  %58 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %59 = load %struct.auth_data*, %struct.auth_data** %30, align 8
  %60 = call i32 @az_nsec3_insert(%struct.auth_zone* %56, %struct.regional* %57, %struct.dns_msg* %58, %struct.auth_data* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %153

63:                                               ; preds = %55
  store i32 1, i32* %12, align 4
  br label %153

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64, %41
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %70 = load i32, i32* %24, align 4
  %71 = load i64, i64* %25, align 8
  %72 = load i32*, i32** %27, align 8
  %73 = load i64, i64* %26, align 8
  %74 = call %struct.auth_data* @az_nsec3_find_ce(%struct.auth_zone* %69, i32** %16, i64* %17, i32* %28, i32 %70, i64 %71, i32* %72, i64 %73)
  store %struct.auth_data* %74, %struct.auth_data** %29, align 8
  %75 = load i32, i32* %28, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 1, i32* %22, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %80 = load %struct.regional*, %struct.regional** %14, align 8
  %81 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %82 = load %struct.auth_data*, %struct.auth_data** %29, align 8
  %83 = call i32 @az_nsec3_insert(%struct.auth_zone* %79, %struct.regional* %80, %struct.dns_msg* %81, %struct.auth_data* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  br label %153

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i32, i32* %22, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %87
  %91 = load i32*, i32** %16, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = load i64, i64* %19, align 8
  %94 = call i32 @az_nsec3_get_nextcloser(i32* %91, i32* %92, i64 %93, i32** %31, i64* %32)
  %95 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %96 = load i32*, i32** %31, align 8
  %97 = load i64, i64* %32, align 8
  %98 = load i32, i32* %24, align 4
  %99 = load i64, i64* %25, align 8
  %100 = load i32*, i32** %27, align 8
  %101 = load i64, i64* %26, align 8
  %102 = call %struct.auth_data* @az_nsec3_find_cover(%struct.auth_zone* %95, i32* %96, i64 %97, i32 %98, i64 %99, i32* %100, i64 %101)
  store %struct.auth_data* %102, %struct.auth_data** %29, align 8
  %103 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %104 = load %struct.regional*, %struct.regional** %14, align 8
  %105 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %106 = load %struct.auth_data*, %struct.auth_data** %29, align 8
  %107 = call i32 @az_nsec3_insert(%struct.auth_zone* %103, %struct.regional* %104, %struct.dns_msg* %105, %struct.auth_data* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %90
  store i32 0, i32* %12, align 4
  br label %153

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %152

114:                                              ; preds = %111
  %115 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %116 = zext i32 %115 to i64
  %117 = call i8* @llvm.stacksave()
  store i8* %117, i8** %33, align 8
  %118 = alloca i32, i64 %116, align 16
  store i64 %116, i64* %34, align 8
  %119 = load i64, i64* %17, align 8
  %120 = add i64 %119, 2
  %121 = mul nuw i64 4, %116
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  store i32 1, i32* %36, align 4
  br label %148

124:                                              ; preds = %114
  %125 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 1, i32* %125, align 16
  %126 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 42, i32* %126, align 4
  %127 = getelementptr inbounds i32, i32* %118, i64 2
  %128 = load i32*, i32** %16, align 8
  %129 = load i64, i64* %17, align 8
  %130 = call i32 @memmove(i32* %127, i32* %128, i64 %129)
  %131 = load i64, i64* %17, align 8
  %132 = add i64 %131, 2
  store i64 %132, i64* %35, align 8
  %133 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %134 = load i64, i64* %35, align 8
  %135 = load i32, i32* %24, align 4
  %136 = load i64, i64* %25, align 8
  %137 = load i32*, i32** %27, align 8
  %138 = load i64, i64* %26, align 8
  %139 = call %struct.auth_data* @az_nsec3_find_cover(%struct.auth_zone* %133, i32* %118, i64 %134, i32 %135, i64 %136, i32* %137, i64 %138)
  store %struct.auth_data* %139, %struct.auth_data** %29, align 8
  %140 = load %struct.auth_zone*, %struct.auth_zone** %13, align 8
  %141 = load %struct.regional*, %struct.regional** %14, align 8
  %142 = load %struct.dns_msg*, %struct.dns_msg** %15, align 8
  %143 = load %struct.auth_data*, %struct.auth_data** %29, align 8
  %144 = call i32 @az_nsec3_insert(%struct.auth_zone* %140, %struct.regional* %141, %struct.dns_msg* %142, %struct.auth_data* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %124
  store i32 0, i32* %12, align 4
  store i32 1, i32* %36, align 4
  br label %148

147:                                              ; preds = %124
  store i32 0, i32* %36, align 4
  br label %148

148:                                              ; preds = %147, %146, %123
  %149 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %36, align 4
  switch i32 %150, label %155 [
    i32 0, label %151
    i32 1, label %153
  ]

151:                                              ; preds = %148
  br label %152

152:                                              ; preds = %151, %111
  store i32 1, i32* %12, align 4
  br label %153

153:                                              ; preds = %152, %148, %109, %85, %63, %62, %40
  %154 = load i32, i32* %12, align 4
  ret i32 %154

155:                                              ; preds = %148
  unreachable
}

declare dso_local i32 @az_nsec3_param(%struct.auth_zone*, i32*, i64*, i32**, i64*) #1

declare dso_local %struct.auth_data* @az_nsec3_find_exact(%struct.auth_zone*, i32*, i64, i32, i64, i32*, i64) #1

declare dso_local i32 @az_nsec3_insert(%struct.auth_zone*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*) #1

declare dso_local %struct.auth_data* @az_nsec3_find_ce(%struct.auth_zone*, i32**, i64*, i32*, i32, i64, i32*, i64) #1

declare dso_local i32 @az_nsec3_get_nextcloser(i32*, i32*, i64, i32**, i64*) #1

declare dso_local %struct.auth_data* @az_nsec3_find_cover(%struct.auth_zone*, i32*, i64, i32, i64, i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memmove(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
