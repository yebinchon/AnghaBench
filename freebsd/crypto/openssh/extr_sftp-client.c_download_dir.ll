; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_download_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_download_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unable to canonicalize path \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @download_dir(%struct.sftp_conn* %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sftp_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.sftp_conn* %0, %struct.sftp_conn** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %20 = load %struct.sftp_conn*, %struct.sftp_conn** %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i8* @do_realpath(%struct.sftp_conn* %20, i8* %21)
  store i8* %22, i8** %18, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %9, align 4
  br label %40

27:                                               ; preds = %8
  %28 = load %struct.sftp_conn*, %struct.sftp_conn** %10, align 8
  %29 = load i8*, i8** %18, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call i32 @download_dir_internal(%struct.sftp_conn* %28, i8* %29, i8* %30, i32 0, i32* %31, i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i8*, i8** %18, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i32, i32* %19, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %27, %24
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i8* @do_realpath(%struct.sftp_conn*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @download_dir_internal(%struct.sftp_conn*, i8*, i8*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
