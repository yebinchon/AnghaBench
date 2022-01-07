; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_do_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_do_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }

@SSH2_FXP_RMDIR = common dso_local global i32 0, align 4
@SSH2_FX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Couldn't remove directory: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rmdir(%struct.sftp_conn* %0, i8* %1) #0 {
  %3 = alloca %struct.sftp_conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sftp_conn* %0, %struct.sftp_conn** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %8 = getelementptr inbounds %struct.sftp_conn, %struct.sftp_conn* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = sext i32 %9 to i64
  store i64 %11, i64* %6, align 8
  %12 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @SSH2_FXP_RMDIR, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @send_string_request(%struct.sftp_conn* %12, i64 %13, i32 %14, i8* %15, i32 %17)
  %19 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @get_status(%struct.sftp_conn* %19, i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @SSH2_FX_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @fx2txt(i64 %26)
  %28 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @SSH2_FX_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 -1
  ret i32 %34
}

declare dso_local i32 @send_string_request(%struct.sftp_conn*, i64, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @get_status(%struct.sftp_conn*, i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @fx2txt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
