; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_remote_handshake_later.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_remote_handshake_later.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { i32 }
%struct.rc_state = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.comm_point = type { i32 }

@SSL_ERROR_WANT_READ = common dso_local global i32 0, align 4
@rc_hs_read = common dso_local global i64 0, align 8
@SSL_ERROR_WANT_WRITE = common dso_local global i32 0, align 4
@rc_hs_write = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"remote control connection closed prematurely\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed connection from\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"remote control failed ssl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.daemon_remote*, %struct.rc_state*, %struct.comm_point*, i32, i32)* @remote_handshake_later to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_handshake_later(%struct.daemon_remote* %0, %struct.rc_state* %1, %struct.comm_point* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.daemon_remote*, align 8
  %8 = alloca %struct.rc_state*, align 8
  %9 = alloca %struct.comm_point*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.daemon_remote* %0, %struct.daemon_remote** %7, align 8
  store %struct.rc_state* %1, %struct.rc_state** %8, align 8
  store %struct.comm_point* %2, %struct.comm_point** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SSL_ERROR_WANT_READ, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = load %struct.rc_state*, %struct.rc_state** %8, align 8
  %17 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @rc_hs_read, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %69

22:                                               ; preds = %15
  %23 = load i64, i64* @rc_hs_read, align 8
  %24 = load %struct.rc_state*, %struct.rc_state** %8, align 8
  %25 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.comm_point*, %struct.comm_point** %9, align 8
  %27 = call i32 @comm_point_listen_for_rw(%struct.comm_point* %26, i32 1, i32 0)
  store i32 0, i32* %6, align 4
  br label %69

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @SSL_ERROR_WANT_WRITE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.rc_state*, %struct.rc_state** %8, align 8
  %34 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @rc_hs_write, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %69

39:                                               ; preds = %32
  %40 = load i64, i64* @rc_hs_write, align 8
  %41 = load %struct.rc_state*, %struct.rc_state** %8, align 8
  %42 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.comm_point*, %struct.comm_point** %9, align 8
  %44 = call i32 @comm_point_listen_for_rw(%struct.comm_point* %43, i32 0, i32 1)
  store i32 0, i32* %6, align 4
  br label %69

45:                                               ; preds = %28
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @log_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = load %struct.rc_state*, %struct.rc_state** %8, align 8
  %52 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.rc_state*, %struct.rc_state** %8, align 8
  %57 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @log_addr(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %55, i32 %61)
  %63 = call i32 @log_crypto_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.daemon_remote*, %struct.daemon_remote** %7, align 8
  %65 = load %struct.rc_state*, %struct.rc_state** %8, align 8
  %66 = call i32 @clean_point(%struct.daemon_remote* %64, %struct.rc_state* %65)
  br label %67

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %39, %38, %22, %21
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @comm_point_listen_for_rw(%struct.comm_point*, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #1

declare dso_local i32 @log_crypto_err(i8*) #1

declare dso_local i32 @clean_point(%struct.daemon_remote*, %struct.rc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
