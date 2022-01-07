; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_msg_recv_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rcopy.c_msg_recv_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"invalid version %d or length %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.msg_hdr*)* @msg_recv_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_recv_hdr(i32 %0, %struct.msg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msg_hdr*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.msg_hdr* %1, %struct.msg_hdr** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.msg_hdr*, %struct.msg_hdr** %5, align 8
  %9 = bitcast %struct.msg_hdr* %8 to i8*
  %10 = call i32 @_recv(i32 %7, i8* %9, i32 8)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.msg_hdr*, %struct.msg_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load %struct.msg_hdr*, %struct.msg_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %15
  %27 = load %struct.msg_hdr*, %struct.msg_hdr** %5, align 8
  %28 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.msg_hdr*, %struct.msg_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.msg_hdr, %struct.msg_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  store i32 -1, i32* %3, align 4
  br label %35

34:                                               ; preds = %20
  store i32 8, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %26, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @_recv(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
