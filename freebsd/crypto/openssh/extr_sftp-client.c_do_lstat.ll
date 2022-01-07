; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_do_lstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_do_lstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Server version does not support lstat operation\00", align 1
@SSH2_FXP_LSTAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @do_lstat(%struct.sftp_conn* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sftp_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sftp_conn* %0, %struct.sftp_conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %10 = getelementptr inbounds %struct.sftp_conn, %struct.sftp_conn* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %20

18:                                               ; preds = %13
  %19 = call i32 @logit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32* @do_stat(%struct.sftp_conn* %21, i8* %22, i32 %23)
  store i32* %24, i32** %4, align 8
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %27 = getelementptr inbounds %struct.sftp_conn, %struct.sftp_conn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  store i64 %30, i64* %8, align 8
  %31 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @SSH2_FXP_LSTAT, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @send_string_request(%struct.sftp_conn* %31, i64 %32, i32 %33, i8* %34, i32 %36)
  %38 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32* @get_decode_stat(%struct.sftp_conn* %38, i64 %39, i32 %40)
  store i32* %41, i32** %4, align 8
  br label %42

42:                                               ; preds = %25, %20
  %43 = load i32*, i32** %4, align 8
  ret i32* %43
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @logit(i8*) #1

declare dso_local i32* @do_stat(%struct.sftp_conn*, i8*, i32) #1

declare dso_local i32 @send_string_request(%struct.sftp_conn*, i64, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @get_decode_stat(%struct.sftp_conn*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
