; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_error_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_error_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.module_env = type { i32 }
%struct.edns_data = type { i32*, i32, i64, i32, i32 }
%struct.comm_reply = type { i32 }
%struct.regional = type { i32 }

@EDNS_ADVERTISED_VERSION = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_SIZE = common dso_local global i32 0, align 4
@EDNS_DO = common dso_local global i32 0, align 4
@BIT_AA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.query_info*, %struct.module_env*, %struct.edns_data*, %struct.comm_reply*, i32*, %struct.regional*, i32)* @auth_error_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auth_error_encode(%struct.query_info* %0, %struct.module_env* %1, %struct.edns_data* %2, %struct.comm_reply* %3, i32* %4, %struct.regional* %5, i32 %6) #0 {
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.module_env*, align 8
  %10 = alloca %struct.edns_data*, align 8
  %11 = alloca %struct.comm_reply*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.regional*, align 8
  %14 = alloca i32, align 4
  store %struct.query_info* %0, %struct.query_info** %8, align 8
  store %struct.module_env* %1, %struct.module_env** %9, align 8
  store %struct.edns_data* %2, %struct.edns_data** %10, align 8
  store %struct.comm_reply* %3, %struct.comm_reply** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.regional* %5, %struct.regional** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* @EDNS_ADVERTISED_VERSION, align 4
  %16 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %17 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @EDNS_ADVERTISED_SIZE, align 4
  %19 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %20 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %22 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @EDNS_DO, align 4
  %24 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %25 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.module_env*, %struct.module_env** %9, align 8
  %29 = load %struct.query_info*, %struct.query_info** %8, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %32 = load %struct.comm_reply*, %struct.comm_reply** %11, align 8
  %33 = load %struct.regional*, %struct.regional** %13, align 8
  %34 = call i32 @inplace_cb_reply_local_call(%struct.module_env* %28, %struct.query_info* %29, i32* null, i32* null, i32 %30, %struct.edns_data* %31, %struct.comm_reply* %32, %struct.regional* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %7
  %37 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %38 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %36, %7
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @BIT_AA, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.query_info*, %struct.query_info** %8, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @sldns_buffer_begin(i32* %45)
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @sldns_buffer_read_u16_at(i32* %49, i32 2)
  %51 = load %struct.edns_data*, %struct.edns_data** %10, align 8
  %52 = call i32 @error_encode(i32* %40, i32 %43, %struct.query_info* %44, i32 %48, i32 %50, %struct.edns_data* %51)
  ret void
}

declare dso_local i32 @inplace_cb_reply_local_call(%struct.module_env*, %struct.query_info*, i32*, i32*, i32, %struct.edns_data*, %struct.comm_reply*, %struct.regional*) #1

declare dso_local i32 @error_encode(i32*, i32, %struct.query_info*, i32, i32, %struct.edns_data*) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_read_u16_at(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
