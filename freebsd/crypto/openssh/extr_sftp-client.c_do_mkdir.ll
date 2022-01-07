; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_do_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_do_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }

@SSH2_FXP_MKDIR = common dso_local global i32 0, align 4
@SSH2_FX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Couldn't create directory: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_mkdir(%struct.sftp_conn* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sftp_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sftp_conn* %0, %struct.sftp_conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %12 = getelementptr inbounds %struct.sftp_conn, %struct.sftp_conn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = sext i32 %13 to i64
  store i64 %15, i64* %10, align 8
  %16 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i32, i32* @SSH2_FXP_MKDIR, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @send_string_attrs_request(%struct.sftp_conn* %16, i64 %17, i32 %18, i8* %19, i32 %21, i32* %22)
  %24 = load %struct.sftp_conn*, %struct.sftp_conn** %5, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @get_status(%struct.sftp_conn* %24, i64 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @SSH2_FX_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @fx2txt(i64 %34)
  %36 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30, %4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @SSH2_FX_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 -1
  ret i32 %42
}

declare dso_local i32 @send_string_attrs_request(%struct.sftp_conn*, i64, i32, i8*, i32, i32*) #1

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
