; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_handle_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_handle_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { i32 }
%struct.rc_state = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@SSL_ERROR_ZERO_RETURN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"could not SSL_read\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"could not recv: %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"UBCT\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"control connection has bad magic string\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"UBCT%d \00", align 1
@UNBOUND_CONTROL_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"control connection had bad version %s, cmd: %s\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"error version mismatch\0A\00", align 1
@VERB_DETAIL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"control cmd: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.daemon_remote*, %struct.rc_state*, %struct.TYPE_8__*)* @handle_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_req(%struct.daemon_remote* %0, %struct.rc_state* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.daemon_remote*, align 8
  %5 = alloca %struct.rc_state*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [10 x i8], align 1
  %9 = alloca [7 x i8], align 1
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i64, align 8
  store %struct.daemon_remote* %0, %struct.daemon_remote** %4, align 8
  store %struct.rc_state* %1, %struct.rc_state** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.rc_state*, %struct.rc_state** %5, align 8
  %13 = getelementptr inbounds %struct.rc_state, %struct.rc_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fd_set_block(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %3
  %23 = call i32 (...) @ERR_clear_error()
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %28 = call i32 @SSL_read(i64 %26, i8* %27, i32 6)
  store i32 %28, i32* %7, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @SSL_get_error(i64 %33, i32 %34)
  %36 = load i64, i64* @SSL_ERROR_ZERO_RETURN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %115

39:                                               ; preds = %30
  %40 = call i32 @log_crypto_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %115

41:                                               ; preds = %22
  br label %72

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %42, %63
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %48 = call i64 @recv(i32 %46, i8* %47, i32 6, i32 0)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp sle i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %115

55:                                               ; preds = %51
  %56 = load i64, i64* @errno, align 8
  %57 = load i64, i64* @EINTR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @EAGAIN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55
  br label %43

64:                                               ; preds = %59
  %65 = load i64, i64* @errno, align 8
  %66 = call i32 @strerror(i64 %65)
  %67 = call i32 @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %115

68:                                               ; preds = %43
  %69 = load i64, i64* %11, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %41
  %73 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 6
  store i8 0, i8* %73, align 1
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 6
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76, %72
  %81 = load i32, i32* @VERB_QUERY, align 4
  %82 = call i32 (i32, i8*, ...) @verbose(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %115

83:                                               ; preds = %76
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %86 = call i32 @ssl_read_line(%struct.TYPE_8__* %84, i8* %85, i32 1024)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %115

89:                                               ; preds = %83
  %90 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %91 = load i32, i32* @UNBOUND_CONTROL_VERSION, align 4
  %92 = call i32 @snprintf(i8* %90, i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %94 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %95 = call i64 @strcmp(i8* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load i32, i32* @VERB_QUERY, align 4
  %99 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %101 = call i32 (i32, i8*, ...) @verbose(i32 %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %99, i8* %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %103 = call i32 @ssl_printf(%struct.TYPE_8__* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %115

104:                                              ; preds = %89
  %105 = load i32, i32* @VERB_DETAIL, align 4
  %106 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %107 = call i32 (i32, i8*, ...) @verbose(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %106)
  %108 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %111 = load %struct.daemon_remote*, %struct.daemon_remote** %4, align 8
  %112 = getelementptr inbounds %struct.daemon_remote, %struct.daemon_remote* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @execute_cmd(%struct.daemon_remote* %108, %struct.TYPE_8__* %109, i8* %110, i32 %113)
  br label %115

115:                                              ; preds = %104, %97, %88, %80, %64, %54, %39, %38
  ret void
}

declare dso_local i32 @fd_set_block(i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_read(i64, i8*, i32) #1

declare dso_local i64 @SSL_get_error(i64, i32) #1

declare dso_local i32 @log_crypto_err(i8*) #1

declare dso_local i64 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @ssl_read_line(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ssl_printf(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @execute_cmd(%struct.daemon_remote*, %struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
