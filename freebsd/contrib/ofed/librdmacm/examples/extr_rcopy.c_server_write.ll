; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hdr = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"transferring\00", align 1
@fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"...file not opened\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"...invalid message length %d\0A\00", align 1
@bytes = common dso_local global i64 0, align 8
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@file_addr = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"...error mapping file\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"...%lld bytes...\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"...error receiving data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.msg_hdr*)* @server_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_write(i32 %0, %struct.msg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.msg_hdr* %1, %struct.msg_hdr** %4, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @fflush(i32* null)
  %9 = load i64, i64* @fd, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %6, align 4
  br label %69

14:                                               ; preds = %2
  %15 = load %struct.msg_hdr*, %struct.msg_hdr** %4, align 8
  %16 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 4
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.msg_hdr*, %struct.msg_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %6, align 4
  br label %69

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = call i8* @_recv(i32 %27, i8* bitcast (i64* @bytes to i8*), i64 8)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %69

34:                                               ; preds = %26
  %35 = load i64, i64* @fd, align 8
  %36 = load i64, i64* @bytes, align 8
  %37 = call i32 @ftruncate(i64 %35, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %69

41:                                               ; preds = %34
  %42 = load i64, i64* @bytes, align 8
  %43 = load i32, i32* @PROT_WRITE, align 4
  %44 = load i32, i32* @MAP_SHARED, align 4
  %45 = load i64, i64* @fd, align 8
  %46 = call i8* @mmap(i32* null, i64 %42, i32 %43, i32 %44, i64 %45, i32 0)
  store i8* %46, i8** @file_addr, align 8
  %47 = load i8*, i8** @file_addr, align 8
  %48 = icmp eq i8* %47, inttoptr (i64 -1 to i8*)
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @errno, align 4
  store i32 %51, i32* %6, align 4
  br label %69

52:                                               ; preds = %41
  %53 = load i64, i64* @bytes, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %53)
  %55 = call i32 @fflush(i32* null)
  %56 = load i32, i32* %3, align 4
  %57 = load i8*, i8** @file_addr, align 8
  %58 = load i64, i64* @bytes, align 8
  %59 = call i8* @_recv(i32 %56, i8* %57, i64 %58)
  %60 = ptrtoint i8* %59 to i64
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @bytes, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i64, i64* %5, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %52
  br label %69

69:                                               ; preds = %68, %49, %40, %33, %20, %11
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.msg_hdr*, %struct.msg_hdr** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @msg_send_resp(i32 %70, %struct.msg_hdr* %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i8* @_recv(i32, i8*, i64) #1

declare dso_local i32 @ftruncate(i64, i64) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i64, i32) #1

declare dso_local i32 @msg_send_resp(i32, %struct.msg_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
