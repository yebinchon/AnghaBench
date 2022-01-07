; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_notify_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_notify_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_svc = type { i32*, i32, i64, i32 }
%struct.rsocket = type { i32 }
%struct.rs_svc_msg = type { i32, i32, %struct.rsocket* }

@mut = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_svc*, %struct.rsocket*, i32)* @rs_notify_svc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_notify_svc(%struct.rs_svc* %0, %struct.rsocket* %1, i32 %2) #0 {
  %4 = alloca %struct.rs_svc*, align 8
  %5 = alloca %struct.rsocket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rs_svc_msg, align 8
  %8 = alloca i32, align 4
  store %struct.rs_svc* %0, %struct.rs_svc** %4, align 8
  store %struct.rsocket* %1, %struct.rsocket** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @pthread_mutex_lock(i32* @mut)
  %10 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %11 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AF_UNIX, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %18 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @socketpair(i32 %15, i32 %16, i32 0, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %83

24:                                               ; preds = %14
  %25 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %26 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %25, i32 0, i32 1
  %27 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %28 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %31 = call i32 @pthread_create(i32* %26, i32* null, i32 %29, %struct.rs_svc* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @ERR(i32 %35)
  store i32 %36, i32* %8, align 4
  br label %70

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* %6, align 4
  %40 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %7, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %7, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %44 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %7, i32 0, i32 2
  store %struct.rsocket* %43, %struct.rsocket** %44, align 8
  %45 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %46 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @write_all(i32 %49, %struct.rs_svc_msg* %7, i32 16)
  %51 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %52 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @read_all(i32 %55, %struct.rs_svc_msg* %7, i32 16)
  %57 = getelementptr inbounds %struct.rs_svc_msg, %struct.rs_svc_msg* %7, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @rdma_seterrno(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %61 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %38
  br label %83

65:                                               ; preds = %38
  %66 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %67 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @pthread_join(i32 %68, i32* null)
  br label %70

70:                                               ; preds = %65, %34
  %71 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %72 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %78 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 %81)
  br label %83

83:                                               ; preds = %70, %64, %23
  %84 = call i32 @pthread_mutex_unlock(i32* @mut)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.rs_svc*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @write_all(i32, %struct.rs_svc_msg*, i32) #1

declare dso_local i32 @read_all(i32, %struct.rs_svc_msg*, i32) #1

declare dso_local i32 @rdma_seterrno(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
