; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_print_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_print_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_state_peer = type { i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"[%u + %u](+%u)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[%u + %u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.pfsync_state_peer*)* @print_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_seq(i32* %0, %struct.pfsync_state_peer* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.pfsync_state_peer*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.pfsync_state_peer* %1, %struct.pfsync_state_peer** %4, align 8
  %5 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %6 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %12 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @ntohl(i64 %13)
  %15 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %16 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @ntohl(i64 %17)
  %19 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %20 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @ntohl(i64 %21)
  %23 = sub nsw i64 %18, %22
  %24 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %25 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @ntohl(i64 %26)
  %28 = inttoptr i64 %27 to i32*
  %29 = call i32 @ND_PRINT(i32* %28)
  br label %47

30:                                               ; preds = %2
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %33 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ntohl(i64 %34)
  %36 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %37 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @ntohl(i64 %38)
  %40 = load %struct.pfsync_state_peer*, %struct.pfsync_state_peer** %4, align 8
  %41 = getelementptr inbounds %struct.pfsync_state_peer, %struct.pfsync_state_peer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @ntohl(i64 %42)
  %44 = sub nsw i64 %39, %43
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @ND_PRINT(i32* %45)
  br label %47

47:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
