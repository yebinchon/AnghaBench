; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.module_env = type { i32 }
%struct.edns_data = type { i32, i64, i64, i32 }
%struct.comm_reply = type { i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.reply_info = type { i32, i32, i32, i32, %struct.ub_packed_rrset_key**, i64 }

@BIT_QR = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@BIT_RA = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_VERSION = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_SIZE = common dso_local global i64 0, align 8
@EDNS_DO = common dso_local global i32 0, align 4
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.query_info*, %struct.module_env*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, %struct.ub_packed_rrset_key*, i32, i32)* @local_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_encode(%struct.query_info* %0, %struct.module_env* %1, %struct.edns_data* %2, %struct.comm_reply* %3, i32* %4, %struct.regional* %5, %struct.ub_packed_rrset_key* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.module_env*, align 8
  %12 = alloca %struct.edns_data*, align 8
  %13 = alloca %struct.comm_reply*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.regional*, align 8
  %16 = alloca %struct.ub_packed_rrset_key*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.reply_info, align 8
  %20 = alloca i64, align 8
  store %struct.query_info* %0, %struct.query_info** %10, align 8
  store %struct.module_env* %1, %struct.module_env** %11, align 8
  store %struct.edns_data* %2, %struct.edns_data** %12, align 8
  store %struct.comm_reply* %3, %struct.comm_reply** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.regional* %5, %struct.regional** %15, align 8
  store %struct.ub_packed_rrset_key* %6, %struct.ub_packed_rrset_key** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = call i32 @memset(%struct.reply_info* %19, i32 0, i32 32)
  %22 = load i32, i32* @BIT_QR, align 4
  %23 = load i32, i32* @BIT_AA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BIT_RA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %18, align 4
  %28 = or i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 5
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 1
  store i32 1, i32* %35, align 4
  br label %38

36:                                               ; preds = %9
  %37 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 2
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 4
  store %struct.ub_packed_rrset_key** %16, %struct.ub_packed_rrset_key*** %40, align 8
  %41 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %42 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %20, align 8
  %44 = load i32, i32* @EDNS_ADVERTISED_VERSION, align 4
  %45 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %46 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* @EDNS_ADVERTISED_SIZE, align 8
  %48 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %49 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %51 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @EDNS_DO, align 4
  %53 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %54 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.module_env*, %struct.module_env** %11, align 8
  %58 = load %struct.query_info*, %struct.query_info** %10, align 8
  %59 = load i32, i32* %18, align 4
  %60 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %61 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %62 = load %struct.regional*, %struct.regional** %15, align 8
  %63 = call i32 @inplace_cb_reply_local_call(%struct.module_env* %57, %struct.query_info* %58, i32* null, %struct.reply_info* %19, i32 %59, %struct.edns_data* %60, %struct.comm_reply* %61, %struct.regional* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %38
  %66 = load %struct.query_info*, %struct.query_info** %10, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i64 @sldns_buffer_begin(i32* %67)
  %69 = inttoptr i64 %68 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @sldns_buffer_read_u16_at(i32* %71, i32 2)
  %73 = load i32*, i32** %14, align 8
  %74 = load %struct.regional*, %struct.regional** %15, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %77 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %78 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @EDNS_DO, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @reply_info_answer_encode(%struct.query_info* %66, %struct.reply_info* %19, i64 %70, i32 %72, i32* %73, i32 0, i32 0, %struct.regional* %74, i64 %75, %struct.edns_data* %76, i32 %81, i32 0)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %65, %38
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %87 = load i32, i32* @BIT_AA, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.query_info*, %struct.query_info** %10, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = call i64 @sldns_buffer_begin(i32* %90)
  %92 = inttoptr i64 %91 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = call i32 @sldns_buffer_read_u16_at(i32* %94, i32 2)
  %96 = load %struct.edns_data*, %struct.edns_data** %12, align 8
  %97 = call i32 @error_encode(i32* %85, i32 %88, %struct.query_info* %89, i64 %93, i32 %95, %struct.edns_data* %96)
  br label %98

98:                                               ; preds = %84, %65
  ret i32 1
}

declare dso_local i32 @memset(%struct.reply_info*, i32, i32) #1

declare dso_local i32 @inplace_cb_reply_local_call(%struct.module_env*, %struct.query_info*, i32*, %struct.reply_info*, i32, %struct.edns_data*, %struct.comm_reply*, %struct.regional*) #1

declare dso_local i32 @reply_info_answer_encode(%struct.query_info*, %struct.reply_info*, i64, i32, i32*, i32, i32, %struct.regional*, i64, %struct.edns_data*, i32, i32) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_read_u16_at(i32*, i32) #1

declare dso_local i32 @error_encode(i32*, i32, %struct.query_info*, i64, i32, %struct.edns_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
