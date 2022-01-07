; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c_rpc_gss_max_data_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librpcsec_gss/extr_rpcsec_gss.c_rpc_gss_max_data_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_gss_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"gss_wrap_size_limit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_gss_max_data_length(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_gss_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call %struct.rpc_gss_data* @AUTH_PRIVATE(i32* %12)
  store %struct.rpc_gss_data* %13, %struct.rpc_gss_data** %6, align 8
  %14 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %15 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 131, label %20
    i32 130, label %20
    i32 128, label %22
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %2, %2
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %7, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

25:                                               ; preds = %22, %20
  %26 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %27 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %31 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @gss_wrap_size_limit(i64* %10, i32 %28, i32 %29, i32 %32, i32 %33, i64* %8)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @GSS_S_COMPLETE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %25
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %25
  %47 = load %struct.rpc_gss_data*, %struct.rpc_gss_data** %6, align 8
  %48 = getelementptr inbounds %struct.rpc_gss_data, %struct.rpc_gss_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @log_status(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %50, i64 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %44, %24, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.rpc_gss_data* @AUTH_PRIVATE(i32*) #1

declare dso_local i64 @gss_wrap_size_limit(i64*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @log_status(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
