; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c___rpc_gss_unwrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c___rpc_gss_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"in rpc_gss_unwrap()\00", align 1
@RPCSEC_GSS_ESTABLISHED = common dso_local global i64 0, align 8
@rpc_gss_svc_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_gss_unwrap(i32* %0, i32* %1, i32 (i32*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32 (i32*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rpc_gss_data*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 (i32*, i8*)* %2, i32 (i32*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %6, align 8
  %13 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %12)
  store %struct.rpc_gss_data* %13, %struct.rpc_gss_data** %10, align 8
  %14 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %15 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RPCSEC_GSS_ESTABLISHED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %21 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @rpc_gss_svc_none, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19, %4
  %27 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 %27(i32* %28, i8* %29)
  store i32 %30, i32* %5, align 4
  br label %50

31:                                               ; preds = %19
  %32 = load i32*, i32** %7, align 8
  %33 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %36 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %39 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %42 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %10, align 8
  %46 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @xdr_rpc_gss_unwrap_data(i32* %32, i32 (i32*, i8*)* %33, i8* %34, i32 %37, i32 %40, i64 %44, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %31, %26
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @log_debug(i8*) #1

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i32 @xdr_rpc_gss_unwrap_data(i32*, i32 (i32*, i8*)*, i8*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
