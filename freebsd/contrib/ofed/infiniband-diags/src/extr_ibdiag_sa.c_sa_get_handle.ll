; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_sa.c_sa_get_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_sa.c_sa_get_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"calloc failed\00", align 1
@ibd_ca = common dso_local global i8* null, align 8
@ibd_ca_port = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"No SM/SA found on port %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IB_DEFAULT_QP1_QKEY = common dso_local global i64 0, align 8
@IB_SA_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sa_handle* @sa_get_handle() #0 {
  %1 = alloca %struct.sa_handle*, align 8
  %2 = alloca %struct.sa_handle*, align 8
  %3 = call %struct.sa_handle* @calloc(i32 1, i32 32)
  store %struct.sa_handle* %3, %struct.sa_handle** %2, align 8
  %4 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %5 = icmp ne %struct.sa_handle* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @IBPANIC(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i8*, i8** @ibd_ca, align 8
  %10 = load i32, i32* @ibd_ca_port, align 4
  %11 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %12 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %11, i32 0, i32 2
  %13 = call i32 @resolve_sm_portid(i8* %9, i32 %10, %struct.TYPE_2__* %12)
  %14 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %15 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  %20 = load i8*, i8** @ibd_ca, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** @ibd_ca, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %22 ], [ %24, %23 ]
  %27 = load i32, i32* @ibd_ca_port, align 4
  %28 = call i32 @IBWARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %27)
  %29 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %30 = call i32 @free(%struct.sa_handle* %29)
  store %struct.sa_handle* null, %struct.sa_handle** %1, align 8
  br label %59

31:                                               ; preds = %8
  %32 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %33 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %36 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* @IB_DEFAULT_QP1_QKEY, align 8
  %42 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %43 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %31
  %46 = load i8*, i8** @ibd_ca, align 8
  %47 = load i32, i32* @ibd_ca_port, align 4
  %48 = call i32 @umad_open_port(i8* %46, i32 %47)
  %49 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %50 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %52 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IB_SA_CLASS, align 4
  %55 = call i32 @umad_register(i32 %53, i32 %54, i32 2, i32 1, i32* null)
  %56 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  %57 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sa_handle*, %struct.sa_handle** %2, align 8
  store %struct.sa_handle* %58, %struct.sa_handle** %1, align 8
  br label %59

59:                                               ; preds = %45, %25
  %60 = load %struct.sa_handle*, %struct.sa_handle** %1, align 8
  ret %struct.sa_handle* %60
}

declare dso_local %struct.sa_handle* @calloc(i32, i32) #1

declare dso_local i32 @IBPANIC(i8*) #1

declare dso_local i32 @resolve_sm_portid(i8*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @IBWARN(i8*, i8*, i32) #1

declare dso_local i32 @free(%struct.sa_handle*) #1

declare dso_local i32 @umad_open_port(i8*, i32) #1

declare dso_local i32 @umad_register(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
