; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_tcp_svc_process_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_tcp_svc_process_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_svc = type { i64, i32*, i64* }
%struct.rs_svc_msg = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@RS_OPT_SVC_ACTIVE = common dso_local global i32 0, align 4
@tcp_svc_timeouts = common dso_local global i64* null, align 8
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rs_svc*)* @tcp_svc_process_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_svc_process_sock(%struct.rs_svc* %0) #0 {
  %2 = alloca %struct.rs_svc*, align 8
  %3 = alloca %struct.rs_svc_msg, align 8
  %4 = alloca i32, align 4
  store %struct.rs_svc* %0, %struct.rs_svc** %2, align 8
  %5 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %6 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @read_all(i32 %9, %struct.rs_svc_msg* %3, i32 16)
  %11 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %87 [
    i32 131, label %13
    i32 128, label %44
    i32 130, label %62
    i32 129, label %85
  ]

13:                                               ; preds = %1
  %14 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %15 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @rs_svc_add_rs(%struct.rs_svc* %14, %struct.TYPE_4__* %16)
  %18 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %24 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %30 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** @tcp_svc_timeouts, align 8
  %32 = call i64 (...) @rs_get_time()
  %33 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %32, %36
  %38 = load i64*, i64** @tcp_svc_timeouts, align 8
  %39 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %40 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64 %37, i64* %42, align 8
  br label %43

43:                                               ; preds = %22, %13
  br label %88

44:                                               ; preds = %1
  %45 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %46 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @rs_svc_rm_rs(%struct.rs_svc* %45, %struct.TYPE_4__* %47)
  %49 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %55 = xor i32 %54, -1
  %56 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %53, %44
  br label %88

62:                                               ; preds = %1
  %63 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %64 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = call i32 @rs_svc_index(%struct.rs_svc* %63, %struct.TYPE_4__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = call i64 (...) @rs_get_time()
  %71 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %70, %74
  %76 = load i64*, i64** @tcp_svc_timeouts, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %75, i64* %79, align 8
  %80 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  store i32 0, i32* %80, align 4
  br label %84

81:                                               ; preds = %62
  %82 = load i32, i32* @EBADF, align 4
  %83 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %69
  br label %88

85:                                               ; preds = %1
  %86 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %88

87:                                               ; preds = %1
  br label %88

88:                                               ; preds = %87, %85, %84, %61, %43
  %89 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %90 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @write_all(i32 %93, %struct.rs_svc_msg* %3, i32 16)
  ret void
}

declare dso_local i32 @read_all(i32, %struct.rs_svc_msg*, i32) #1

declare dso_local i32 @rs_svc_add_rs(%struct.rs_svc*, %struct.TYPE_4__*) #1

declare dso_local i64 @rs_get_time(...) #1

declare dso_local i32 @rs_svc_rm_rs(%struct.rs_svc*, %struct.TYPE_4__*) #1

declare dso_local i32 @rs_svc_index(%struct.rs_svc*, %struct.TYPE_4__*) #1

declare dso_local i32 @write_all(i32, %struct.rs_svc_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
