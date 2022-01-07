; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_client_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"closing...\00", align 1
@CMD_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@file_addr = common dso_local global i32 0, align 4
@bytes = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @client_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg_hdr, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @fflush(i32* null)
  %7 = call i32 @memset(%struct.msg_hdr* %3, i32 0, i32 8)
  %8 = load i32, i32* @CMD_CLOSE, align 4
  %9 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %3, i32 0, i32 0
  store i32 8, i32* %10, align 4
  %11 = load i32, i32* %2, align 4
  %12 = bitcast %struct.msg_hdr* %3 to i8*
  %13 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rsend(i32 %11, i8* %12, i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %30

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @CMD_CLOSE, align 4
  %24 = call i32 @msg_get_resp(i32 %22, %struct.msg_hdr* %3, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %27, %20
  %31 = load i32, i32* @file_addr, align 4
  %32 = load i32, i32* @bytes, align 4
  %33 = call i32 @munmap(i32 %31, i32 %32)
  %34 = load i32, i32* @fd, align 4
  %35 = call i32 @close(i32 %34)
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @memset(%struct.msg_hdr*, i32, i32) #1

declare dso_local i32 @rsend(i32, i8*, i32, i32) #1

declare dso_local i32 @msg_get_resp(i32, %struct.msg_hdr*, i32) #1

declare dso_local i32 @munmap(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
