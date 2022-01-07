; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_build_ucred.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_svc_rpcsec_gss.c_svc_rpc_gss_build_ucred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rpc_gss_client = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.passwd = type { i32, i32, i32 }

@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@NGRPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_rpc_gss_client*, i32)* @svc_rpc_gss_build_ucred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_rpc_gss_build_ucred(%struct.svc_rpc_gss_client* %0, i32 %1) #0 {
  %3 = alloca %struct.svc_rpc_gss_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.passwd, align 4
  %10 = alloca %struct.passwd*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  store %struct.svc_rpc_gss_client* %0, %struct.svc_rpc_gss_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %14 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %13, i32 0, i32 2
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %11, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 65534, i32* %16, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i32 65534, i32* %18, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %22 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %28 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @gss_pname_to_uid(i64* %6, i32 %26, i32 %29, i32* %8)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @GSS_S_COMPLETE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %71

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %38 = call i32 @getpwuid_r(i32 %36, %struct.passwd* %9, i8* %37, i32 128, %struct.passwd** %10)
  %39 = load %struct.passwd*, %struct.passwd** %10, align 8
  %40 = icmp ne %struct.passwd* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = load i32, i32* @NGRPS, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.passwd*, %struct.passwd** %10, align 8
  %44 = getelementptr inbounds %struct.passwd, %struct.passwd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.passwd*, %struct.passwd** %10, align 8
  %49 = getelementptr inbounds %struct.passwd, %struct.passwd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.svc_rpc_gss_client*, %struct.svc_rpc_gss_client** %3, align 8
  %54 = getelementptr inbounds %struct.svc_rpc_gss_client, %struct.svc_rpc_gss_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.passwd*, %struct.passwd** %10, align 8
  %59 = getelementptr inbounds %struct.passwd, %struct.passwd* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.passwd*, %struct.passwd** %10, align 8
  %62 = getelementptr inbounds %struct.passwd, %struct.passwd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @getgrouplist(i32 %60, i32 %63, i32 %66, i32* %12)
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %34, %41, %35
  ret void
}

declare dso_local i64 @gss_pname_to_uid(i64*, i32, i32, i32*) #1

declare dso_local i32 @getpwuid_r(i32, %struct.passwd*, i8*, i32, %struct.passwd**) #1

declare dso_local i32 @getgrouplist(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
