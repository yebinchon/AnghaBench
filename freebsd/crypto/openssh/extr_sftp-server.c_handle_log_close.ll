; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server.c_handle_log_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-server.c_handle_log_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HANDLE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s%sclose \22%s\22 bytes read %llu written %llu\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s%sclosedir \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @handle_log_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_log_close(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @HANDLE_FILE, align 4
  %7 = call i64 @handle_is_ok(i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %15

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %12 ], [ %14, %13 ]
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @handle_to_name(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @handle_bytes_read(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @handle_bytes_write(i32 %25)
  %27 = call i32 (i8*, i8*, i8*, i32, ...) @logit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %20, i32 %22, i64 %24, i64 %26)
  br label %43

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %34

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %31 ], [ %33, %32 ]
  %36 = load i8*, i8** %4, align 8
  %37 = icmp eq i8* %36, null
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @handle_to_name(i32 %40)
  %42 = call i32 (i8*, i8*, i8*, i32, ...) @logit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %35, i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %34, %15
  ret void
}

declare dso_local i64 @handle_is_ok(i32, i32) #1

declare dso_local i32 @logit(i8*, i8*, i8*, i32, ...) #1

declare dso_local i32 @handle_to_name(i32) #1

declare dso_local i64 @handle_bytes_read(i32) #1

declare dso_local i64 @handle_bytes_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
