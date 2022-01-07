; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_answer_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_answer_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.module_env = type { i32 }
%struct.edns_data = type { i32, i64, i32, i32 }
%struct.comm_reply = type { i32 }
%struct.regional = type { i32 }
%struct.dns_msg = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EDNS_ADVERTISED_VERSION = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_SIZE = common dso_local global i32 0, align 4
@EDNS_DO = common dso_local global i32 0, align 4
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.query_info*, %struct.module_env*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, %struct.dns_msg*)* @auth_answer_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_answer_encode(%struct.query_info* %0, %struct.module_env* %1, %struct.edns_data* %2, %struct.comm_reply* %3, i32* %4, %struct.regional* %5, %struct.dns_msg* %6) #0 {
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.edns_data*, align 8
  %11 = alloca %struct.comm_reply*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.regional*, align 8
  %14 = alloca %struct.dns_msg*, align 8
  %15 = alloca i32, align 4
  store %struct.query_info* %0, %struct.query_info** %8, align 8
  store %struct.module_env* %1, %struct.module_env** %9, align 8
  store %struct.edns_data* %2, %struct.edns_data** %10, align 8
  store %struct.comm_reply* %3, %struct.comm_reply** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.regional* %5, %struct.regional** %13, align 8
  store %struct.dns_msg* %6, %struct.dns_msg** %14, align 8
  %16 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %17 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @EDNS_ADVERTISED_VERSION, align 4
  %20 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %21 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @EDNS_ADVERTISED_SIZE, align 4
  %23 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %24 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %26 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @EDNS_DO, align 4
  %28 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %29 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.module_env*, %struct.module_env** %9, align 8
  %33 = load %struct.query_info*, %struct.query_info** %8, align 8
  %34 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %35 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %38 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @FLAGS_GET_RCODE(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %45 = load %struct.comm_reply*, %struct.comm_reply** %11, align 8
  %46 = load %struct.regional*, %struct.regional** %13, align 8
  %47 = call i32 @inplace_cb_reply_local_call(%struct.module_env* %32, %struct.query_info* %33, i32* null, %struct.TYPE_3__* %36, i32 %43, %struct.edns_data* %44, %struct.comm_reply* %45, %struct.regional* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %7
  %50 = load %struct.query_info*, %struct.query_info** %8, align 8
  %51 = load %struct.dns_msg*, %struct.dns_msg** %14, align 8
  %52 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i64 @sldns_buffer_begin(i32* %54)
  %56 = inttoptr i64 %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @sldns_buffer_read_u16_at(i32* %58, i32 2)
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.regional*, %struct.regional** %13, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %64 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %65 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @EDNS_DO, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @reply_info_answer_encode(%struct.query_info* %50, %struct.TYPE_3__* %53, i32 %57, i32 %59, i32* %60, i32 0, i32 0, %struct.regional* %61, i32 %62, %struct.edns_data* %63, i32 %68, i32 0)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %49, %7
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %74 = load i32, i32* @BIT_AA, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.query_info*, %struct.query_info** %8, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i64 @sldns_buffer_begin(i32* %77)
  %79 = inttoptr i64 %78 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @sldns_buffer_read_u16_at(i32* %81, i32 2)
  %83 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %84 = call i32 @error_encode(i32* %72, i32 %75, %struct.query_info* %76, i32 %80, i32 %82, %struct.edns_data* %83)
  br label %85

85:                                               ; preds = %71, %49
  ret void
}

declare dso_local i32 @inplace_cb_reply_local_call(%struct.module_env*, %struct.query_info*, i32*, %struct.TYPE_3__*, i32, %struct.edns_data*, %struct.comm_reply*, %struct.regional*) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @reply_info_answer_encode(%struct.query_info*, %struct.TYPE_3__*, i32, i32, i32*, i32, i32, %struct.regional*, i32, %struct.edns_data*, i32, i32) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_read_u16_at(i32*, i32) #1

declare dso_local i32 @error_encode(i32*, i32, %struct.query_info*, i32, i32, %struct.edns_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
