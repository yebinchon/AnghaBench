; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_server_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hdr = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"closing...\00", align 1
@file_addr = common dso_local global i32* null, align 8
@bytes = common dso_local global i32 0, align 4
@fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.msg_hdr*)* @server_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_close(i32 %0, %struct.msg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg_hdr*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.msg_hdr* %1, %struct.msg_hdr** %4, align 8
  %5 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @fflush(i32* null)
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.msg_hdr*, %struct.msg_hdr** %4, align 8
  %9 = call i32 @msg_send_resp(i32 %7, %struct.msg_hdr* %8, i32 0)
  %10 = load i32*, i32** @file_addr, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** @file_addr, align 8
  %14 = load i32, i32* @bytes, align 4
  %15 = call i32 @munmap(i32* %13, i32 %14)
  store i32* null, i32** @file_addr, align 8
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i64, i64* @fd, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* @fd, align 8
  %21 = call i32 @close(i64 %20)
  store i64 0, i64* @fd, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @msg_send_resp(i32, %struct.msg_hdr*, i32) #1

declare dso_local i32 @munmap(i32*, i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
