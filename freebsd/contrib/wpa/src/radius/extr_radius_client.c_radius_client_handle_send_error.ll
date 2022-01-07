; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_handle_send_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/radius/extr_radius_client.c_radius_client_handle_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_client_data = type { i32 }

@errno = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"send[RADIUS,s=%d]: %s\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Send failed - maybe interface status changed - try to connect again\00", align 1
@RADIUS_ACCT = common dso_local global i64 0, align 8
@RADIUS_ACCT_INTERIM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_client_data*, i32, i64)* @radius_client_handle_send_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radius_client_handle_send_error(%struct.radius_client_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_client_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.radius_client_data* %0, %struct.radius_client_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* @errno, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @MSG_INFO, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @strerror(i32 %12)
  %14 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ENOTCONN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @EDESTADDRREQ, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EBADF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @ENETUNREACH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @EACCES, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %34, %30, %26, %22, %18, %3
  %39 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %40 = getelementptr inbounds %struct.radius_client_data, %struct.radius_client_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %43 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %44 = call i32 @hostapd_logger(i32 %41, i32* null, i32 %42, i32 %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @RADIUS_ACCT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %38
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @RADIUS_ACCT_INTERIM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %38
  %53 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %54 = call i32 @radius_client_init_acct(%struct.radius_client_data* %53)
  store i32 0, i32* %4, align 4
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.radius_client_data*, %struct.radius_client_data** %5, align 8
  %57 = call i32 @radius_client_init_auth(%struct.radius_client_data* %56)
  store i32 1, i32* %4, align 4
  br label %59

58:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55, %52
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hostapd_logger(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @radius_client_init_acct(%struct.radius_client_data*) #1

declare dso_local i32 @radius_client_init_auth(%struct.radius_client_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
