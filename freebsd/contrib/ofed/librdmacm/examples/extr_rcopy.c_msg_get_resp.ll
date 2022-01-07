; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_msg_get_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_msg_get_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hdr = type { i32, i32, i32 }

@CMD_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"invalid length %d or bad command response %x:%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.msg_hdr*, i32)* @msg_get_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_get_resp(i32 %0, %struct.msg_hdr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.msg_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.msg_hdr* %1, %struct.msg_hdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.msg_hdr*, %struct.msg_hdr** %6, align 8
  %11 = call i32 @msg_recv_hdr(i32 %9, %struct.msg_hdr* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 12
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.msg_hdr*, %struct.msg_hdr** %6, align 8
  %19 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 12
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load %struct.msg_hdr*, %struct.msg_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CMD_RESP, align 4
  %29 = or i32 %27, %28
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %23, %17
  %32 = load %struct.msg_hdr*, %struct.msg_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.msg_hdr*, %struct.msg_hdr** %6, align 8
  %36 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @CMD_RESP, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  store i32 -1, i32* %4, align 4
  br label %46

42:                                               ; preds = %23
  %43 = load %struct.msg_hdr*, %struct.msg_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %31, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @msg_recv_hdr(i32, %struct.msg_hdr*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
