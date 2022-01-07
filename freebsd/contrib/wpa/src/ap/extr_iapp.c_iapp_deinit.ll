; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_iapp.c_iapp_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iapp_data = type { i64, i64, i32 }
%struct.ip_mreqn = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@SOL_IP = common dso_local global i32 0, align 4
@IP_DROP_MEMBERSHIP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"iapp_deinit - setsockopt[UDP,IP_DEL_MEMBERSHIP]: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iapp_deinit(%struct.iapp_data* %0) #0 {
  %2 = alloca %struct.iapp_data*, align 8
  %3 = alloca %struct.ip_mreqn, align 8
  store %struct.iapp_data* %0, %struct.iapp_data** %2, align 8
  %4 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %5 = icmp eq %struct.iapp_data* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %60

7:                                                ; preds = %1
  %8 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %9 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = call i32 @os_memset(%struct.ip_mreqn* %3, i32 0, i32 16)
  %14 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %15 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %3, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @INADDR_ANY, align 4
  %19 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %3, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %23 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @SOL_IP, align 4
  %26 = load i32, i32* @IP_DROP_MEMBERSHIP, align 4
  %27 = call i64 @setsockopt(i64 %24, i32 %25, i32 %26, %struct.ip_mreqn* %3, i32 16)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %12
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %12
  %35 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %36 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @eloop_unregister_read_sock(i64 %37)
  %39 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %40 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @close(i64 %41)
  br label %43

43:                                               ; preds = %34, %7
  %44 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %45 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %50 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @eloop_unregister_read_sock(i64 %51)
  %53 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %54 = getelementptr inbounds %struct.iapp_data, %struct.iapp_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @close(i64 %55)
  br label %57

57:                                               ; preds = %48, %43
  %58 = load %struct.iapp_data*, %struct.iapp_data** %2, align 8
  %59 = call i32 @os_free(%struct.iapp_data* %58)
  br label %60

60:                                               ; preds = %57, %6
  ret void
}

declare dso_local i32 @os_memset(%struct.ip_mreqn*, i32, i32) #1

declare dso_local i64 @setsockopt(i64, i32, i32, %struct.ip_mreqn*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @eloop_unregister_read_sock(i64) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @os_free(%struct.iapp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
