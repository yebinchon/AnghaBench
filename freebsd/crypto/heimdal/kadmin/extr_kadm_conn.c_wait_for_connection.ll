; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadm_conn.c_wait_for_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadm_conn.c_wait_for_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgrp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"setpgid\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@terminate = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@sigchld = common dso_local global i32 0, align 4
@term_flag = common dso_local global i64 0, align 8
@rk_SOCK_ERRNO = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"select returned 0\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i32)* @wait_for_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_connection(i32 %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %12, align 4
  %13 = call i32 @FD_ZERO(i32* %9)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %32, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @FD_SET(i64 %23, i32* %9)
  %25 = load i32, i32* %12, align 4
  %26 = load i64*, i64** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @max(i32 %25, i64 %30)
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %14

35:                                               ; preds = %14
  %36 = call i32 (...) @getpid()
  store i32 %36, i32* @pgrp, align 4
  %37 = load i32, i32* @pgrp, align 4
  %38 = call i64 @setpgid(i32 0, i32 %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, i32* @SIGTERM, align 4
  %44 = load i32, i32* @terminate, align 4
  %45 = call i32 @signal(i32 %43, i32 %44)
  %46 = load i32, i32* @SIGINT, align 4
  %47 = load i32, i32* @terminate, align 4
  %48 = call i32 @signal(i32 %46, i32 %47)
  %49 = load i32, i32* @SIGCHLD, align 4
  %50 = load i32, i32* @sigchld, align 4
  %51 = call i32 @signal(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %106, %42
  %53 = load i64, i64* @term_flag, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %107

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @select(i32 %58, i32* %10, i32* null, i32* null, i32* null)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @rk_IS_SOCKET_ERROR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load i64, i64* @rk_SOCK_ERRNO, align 8
  %65 = load i64, i64* @EINTR, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load i64, i64* @rk_SOCK_ERRNO, align 8
  %70 = call i32 @krb5_warn(i32 %68, i64 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %63
  br label %106

72:                                               ; preds = %55
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @krb5_warnx(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %105

78:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %101, %78
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load i64*, i64** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @FD_ISSET(i64 %88, i32* %10)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %83
  %92 = load i32, i32* %4, align 4
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i64 @spawn_child(i32 %92, i64* %93, i32 %94, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  ret void

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %83
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %79

104:                                              ; preds = %79
  br label %105

105:                                              ; preds = %104, %75
  br label %106

106:                                              ; preds = %105, %71
  br label %52

107:                                              ; preds = %52
  %108 = load i32, i32* @SIGCHLD, align 4
  %109 = load i32, i32* @SIG_IGN, align 4
  %110 = call i32 @signal(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %115, %107
  %112 = load i32, i32* @WNOHANG, align 4
  %113 = call i64 @waitpid(i32 -1, i32* %11, i32 %112)
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %111

116:                                              ; preds = %111
  %117 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @setpgid(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @rk_IS_SOCKET_ERROR(i32) #1

declare dso_local i32 @krb5_warn(i32, i64, i8*) #1

declare dso_local i32 @krb5_warnx(i32, i8*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i64 @spawn_child(i32, i64*, i32, i32) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
