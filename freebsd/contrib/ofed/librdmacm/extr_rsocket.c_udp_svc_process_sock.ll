; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_udp_svc_process_sock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_udp_svc_process_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.rs_svc = type { i64, i32*, %struct.TYPE_4__* }
%struct.rs_svc_msg = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@RS_OPT_SVC_ACTIVE = common dso_local global i32 0, align 4
@udp_svc_fds = common dso_local global %struct.TYPE_4__* null, align 8
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rs_svc*)* @udp_svc_process_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_svc_process_sock(%struct.rs_svc* %0) #0 {
  %2 = alloca %struct.rs_svc*, align 8
  %3 = alloca %struct.rs_svc_msg, align 8
  store %struct.rs_svc* %0, %struct.rs_svc** %2, align 8
  %4 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %5 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @read_all(i32 %8, %struct.rs_svc_msg* %3, i32 16)
  %10 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %75 [
    i32 130, label %12
    i32 128, label %55
    i32 129, label %73
  ]

12:                                               ; preds = %1
  %13 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %14 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = call i32 @rs_svc_add_rs(%struct.rs_svc* %13, %struct.TYPE_5__* %15)
  %17 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %23 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  %28 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %29 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** @udp_svc_fds, align 8
  %31 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udp_svc_fds, align 8
  %36 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %37 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* @POLLIN, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udp_svc_fds, align 8
  %43 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %44 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %41, i32* %47, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @udp_svc_fds, align 8
  %49 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %50 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %21, %12
  br label %76

55:                                               ; preds = %1
  %56 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %57 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 @rs_svc_rm_rs(%struct.rs_svc* %56, %struct.TYPE_5__* %58)
  %60 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %66 = xor i32 %65, -1
  %67 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %66
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %55
  br label %76

73:                                               ; preds = %1
  %74 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %3, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %75, %73, %72, %54
  %77 = load %struct.rs_svc*, %struct.rs_svc** %2, align 8
  %78 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @write_all(i32 %81, %struct.rs_svc_msg* %3, i32 16)
  ret void
}

declare dso_local i32 @read_all(i32, %struct.rs_svc_msg*, i32) #1

declare dso_local i32 @rs_svc_add_rs(%struct.rs_svc*, %struct.TYPE_5__*) #1

declare dso_local i32 @rs_svc_rm_rs(%struct.rs_svc*, %struct.TYPE_5__*) #1

declare dso_local i32 @write_all(i32, %struct.rs_svc_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
