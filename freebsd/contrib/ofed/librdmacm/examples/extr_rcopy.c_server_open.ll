; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"opening: \00", align 1
@file_addr = common dso_local global i64 0, align 8
@fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot open another file\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot allocate path name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"error receiving path\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"unable to open destination file\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.msg_hdr*)* @server_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_open(i32 %0, %struct.msg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_hdr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.msg_hdr* %1, %struct.msg_hdr** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @fflush(i32* null)
  %10 = load i64, i64* @file_addr, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @fd, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @EBUSY, align 4
  store i32 %17, i32* %6, align 4
  br label %62

18:                                               ; preds = %12
  %19 = load %struct.msg_hdr*, %struct.msg_hdr** %4, align 8
  %20 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @malloc(i32 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %6, align 4
  br label %62

32:                                               ; preds = %18
  %33 = load i32, i32* %3, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @_recv(i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %62

42:                                               ; preds = %32
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = call i32 @fflush(i32* null)
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @O_RDWR, align 4
  %48 = load i32, i32* @O_CREAT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @O_TRUNC, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.msg_hdr*, %struct.msg_hdr** %4, align 8
  %53 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @open(i8* %46, i32 %51, i32 %54)
  store i64 %55, i64* @fd, align 8
  %56 = load i64, i64* @fd, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %42
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %40, %29, %15
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.msg_hdr*, %struct.msg_hdr** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @msg_send_resp(i32 %69, %struct.msg_hdr* %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @_recv(i32, i8*, i32) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @msg_send_resp(i32, %struct.msg_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
