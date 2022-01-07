; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_do_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_do_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Sending SSH2_FXP_REMOVE \22%s\22\00", align 1
@SSH2_FXP_REMOVE = common dso_local global i32 0, align 4
@SSH2_FX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't delete file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_rm(%struct.sftp_conn* %0, i8* %1) #0 {
  %3 = alloca %struct.sftp_conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sftp_conn* %0, %struct.sftp_conn** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @debug2(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %10 = getelementptr inbounds %struct.sftp_conn, %struct.sftp_conn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = sext i32 %11 to i64
  store i64 %13, i64* %6, align 8
  %14 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @SSH2_FXP_REMOVE, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i32 @send_string_request(%struct.sftp_conn* %14, i64 %15, i32 %16, i8* %17, i32 %19)
  %21 = load %struct.sftp_conn*, %struct.sftp_conn** %3, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @get_status(%struct.sftp_conn* %21, i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @SSH2_FX_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @fx2txt(i64 %28)
  %30 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @SSH2_FX_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 -1
  ret i32 %36
}

declare dso_local i32 @debug2(i8*, i8*) #1

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
