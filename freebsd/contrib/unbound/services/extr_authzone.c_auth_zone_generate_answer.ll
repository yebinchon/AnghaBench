; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_generate_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_generate_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_zone = type { i32, i32, i32 }
%struct.query_info = type { i32, i32, i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { i32 }
%struct.auth_data = type { i32, i32 }
%struct.auth_rrset = type { i32 }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"auth_zone %s query %s %s, domain %s %s %s, ce %s, rrset %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exact\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"notexact\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"exist\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"notexist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg**, i32*)* @auth_zone_generate_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_zone_generate_answer(%struct.auth_zone* %0, %struct.query_info* %1, %struct.regional* %2, %struct.dns_msg** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.auth_zone*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca %struct.dns_msg**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.auth_data*, align 8
  %13 = alloca %struct.auth_data*, align 8
  %14 = alloca %struct.auth_rrset*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [256 x i8], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca [256 x i8], align 16
  %21 = alloca [32 x i8], align 16
  %22 = alloca [32 x i8], align 16
  store %struct.auth_zone* %0, %struct.auth_zone** %7, align 8
  store %struct.query_info* %1, %struct.query_info** %8, align 8
  store %struct.regional* %2, %struct.regional** %9, align 8
  store %struct.dns_msg** %3, %struct.dns_msg*** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %24 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.regional*, %struct.regional** %9, align 8
  %28 = load %struct.query_info*, %struct.query_info** %8, align 8
  %29 = call %struct.dns_msg* @msg_create(%struct.regional* %27, %struct.query_info* %28)
  %30 = load %struct.dns_msg**, %struct.dns_msg*** %10, align 8
  store %struct.dns_msg* %29, %struct.dns_msg** %30, align 8
  %31 = icmp ne %struct.dns_msg* %29, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %145

33:                                               ; preds = %5
  %34 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %35 = load %struct.query_info*, %struct.query_info** %8, align 8
  %36 = call i32 @az_find_domain(%struct.auth_zone* %34, %struct.query_info* %35, i32* %15, %struct.auth_data** %12)
  %37 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %38 = load %struct.query_info*, %struct.query_info** %8, align 8
  %39 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @az_find_ce(%struct.auth_zone* %37, %struct.query_info* %38, %struct.auth_data* %39, i32 %40, %struct.auth_data** %13, %struct.auth_rrset** %14)
  store i32 %41, i32* %16, align 4
  %42 = load i64, i64* @verbosity, align 8
  %43 = load i64, i64* @VERB_ALGO, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %124

45:                                               ; preds = %33
  %46 = load %struct.query_info*, %struct.query_info** %8, align 8
  %47 = getelementptr inbounds %struct.query_info, %struct.query_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.query_info*, %struct.query_info** %8, align 8
  %50 = getelementptr inbounds %struct.query_info, %struct.query_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %53 = call i32 @sldns_wire2str_dname_buf(i32 %48, i32 %51, i8* %52, i32 256)
  %54 = load %struct.query_info*, %struct.query_info** %8, align 8
  %55 = getelementptr inbounds %struct.query_info, %struct.query_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %58 = call i32 @sldns_wire2str_type_buf(i32 %56, i8* %57, i32 32)
  %59 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %60 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %63 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %66 = call i32 @sldns_wire2str_dname_buf(i32 %61, i32 %64, i8* %65, i32 256)
  %67 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %68 = icmp ne %struct.auth_data* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %45
  %70 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %71 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %74 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %77 = call i32 @sldns_wire2str_dname_buf(i32 %72, i32 %75, i8* %76, i32 256)
  br label %81

78:                                               ; preds = %45
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %80 = call i32 @snprintf(i8* %79, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %69
  %82 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %83 = icmp ne %struct.auth_data* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %86 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %89 = getelementptr inbounds %struct.auth_data, %struct.auth_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %92 = call i32 @sldns_wire2str_dname_buf(i32 %87, i32 %90, i8* %91, i32 256)
  br label %96

93:                                               ; preds = %81
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %95 = call i32 @snprintf(i8* %94, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %84
  %97 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %98 = icmp ne %struct.auth_rrset* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %101 = getelementptr inbounds %struct.auth_rrset, %struct.auth_rrset* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %104 = call i32 @sldns_wire2str_type_buf(i32 %102, i8* %103, i32 32)
  br label %108

105:                                              ; preds = %96
  %106 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %107 = call i32 @snprintf(i8* %106, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %99
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 0
  %110 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %21, i64 0, i64 0
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %117 = load i32, i32* %16, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %121 = getelementptr inbounds [256 x i8], [256 x i8]* %20, i64 0, i64 0
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %123 = call i32 @log_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %109, i8* %110, i8* %111, i8* %112, i8* %116, i8* %120, i8* %121, i8* %122)
  br label %124

124:                                              ; preds = %108, %33
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %129 = load %struct.query_info*, %struct.query_info** %8, align 8
  %130 = load %struct.regional*, %struct.regional** %9, align 8
  %131 = load %struct.dns_msg**, %struct.dns_msg*** %10, align 8
  %132 = load %struct.dns_msg*, %struct.dns_msg** %131, align 8
  %133 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %134 = call i32 @az_generate_answer_with_node(%struct.auth_zone* %128, %struct.query_info* %129, %struct.regional* %130, %struct.dns_msg* %132, %struct.auth_data* %133)
  store i32 %134, i32* %6, align 4
  br label %145

135:                                              ; preds = %124
  %136 = load %struct.auth_zone*, %struct.auth_zone** %7, align 8
  %137 = load %struct.query_info*, %struct.query_info** %8, align 8
  %138 = load %struct.regional*, %struct.regional** %9, align 8
  %139 = load %struct.dns_msg**, %struct.dns_msg*** %10, align 8
  %140 = load %struct.dns_msg*, %struct.dns_msg** %139, align 8
  %141 = load %struct.auth_data*, %struct.auth_data** %13, align 8
  %142 = load %struct.auth_rrset*, %struct.auth_rrset** %14, align 8
  %143 = load %struct.auth_data*, %struct.auth_data** %12, align 8
  %144 = call i32 @az_generate_answer_nonexistnode(%struct.auth_zone* %136, %struct.query_info* %137, %struct.regional* %138, %struct.dns_msg* %140, %struct.auth_data* %141, %struct.auth_rrset* %142, %struct.auth_data* %143)
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %135, %127, %32
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local %struct.dns_msg* @msg_create(%struct.regional*, %struct.query_info*) #1

declare dso_local i32 @az_find_domain(%struct.auth_zone*, %struct.query_info*, i32*, %struct.auth_data**) #1

declare dso_local i32 @az_find_ce(%struct.auth_zone*, %struct.query_info*, %struct.auth_data*, i32, %struct.auth_data**, %struct.auth_rrset**) #1

declare dso_local i32 @sldns_wire2str_dname_buf(i32, i32, i8*, i32) #1

declare dso_local i32 @sldns_wire2str_type_buf(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @log_info(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @az_generate_answer_with_node(%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*) #1

declare dso_local i32 @az_generate_answer_nonexistnode(%struct.auth_zone*, %struct.query_info*, %struct.regional*, %struct.dns_msg*, %struct.auth_data*, %struct.auth_rrset*, %struct.auth_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
