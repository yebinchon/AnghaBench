; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_recvbuff.c_create_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_recvbuff.c_create_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer_shortfall = common dso_local global i32 0, align 4
@free_recv_list = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@free_recvbufs = common dso_local global i32 0, align 4
@total_recvbufs = common dso_local global i32 0, align 4
@lowater_adds = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @create_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_buffers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @buffer_shortfall, align 4
  %8 = add nsw i32 %6, %7
  store i32 %8, i32* %5, align 4
  store i32 0, i32* @buffer_shortfall, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32* @eallocarray(i32 %9, i32 4)
  store i32* %10, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i32, i32* @free_recv_list, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @link, align 4
  %19 = call i32 @LINK_SLIST(i32 %16, i32* %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %3, align 8
  %22 = load i32, i32* @free_recvbufs, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @free_recvbufs, align 4
  %24 = load i32, i32* @total_recvbufs, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @total_recvbufs, align 4
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load i32, i32* @lowater_adds, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @lowater_adds, align 4
  ret void
}

declare dso_local i32* @eallocarray(i32, i32) #1

declare dso_local i32 @LINK_SLIST(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
