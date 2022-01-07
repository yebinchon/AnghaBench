; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_pfsync_print_clr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_pfsync_print_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_clr = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"\0A\09creatorid: %08x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" interface: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @pfsync_print_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_print_clr(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pfsync_clr*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.pfsync_clr*
  store %struct.pfsync_clr* %7, %struct.pfsync_clr** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load %struct.pfsync_clr*, %struct.pfsync_clr** %5, align 8
  %10 = getelementptr inbounds %struct.pfsync_clr, %struct.pfsync_clr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @htonl(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  %15 = call i32 @ND_PRINT(i32* %14)
  %16 = load %struct.pfsync_clr*, %struct.pfsync_clr** %5, align 8
  %17 = getelementptr inbounds %struct.pfsync_clr, %struct.pfsync_clr* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.pfsync_clr*, %struct.pfsync_clr** %5, align 8
  %26 = getelementptr inbounds %struct.pfsync_clr, %struct.pfsync_clr* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = call i32 @ND_PRINT(i32* %28)
  br label %30

30:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
