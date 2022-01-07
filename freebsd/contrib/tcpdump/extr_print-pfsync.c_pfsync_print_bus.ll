; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_pfsync_print_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-pfsync.c_pfsync_print_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_bus = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\0A\09creatorid: %08x age: %.2u:%.2u:%.2u status: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @pfsync_print_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfsync_print_bus(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pfsync_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.pfsync_bus*
  store %struct.pfsync_bus* %11, %struct.pfsync_bus** %5, align 8
  %12 = load %struct.pfsync_bus*, %struct.pfsync_bus** %5, align 8
  %13 = getelementptr inbounds %struct.pfsync_bus, %struct.pfsync_bus* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohl(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = srem i32 %16, 60
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 60
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 60
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 60
  store i32 %23, i32* %6, align 4
  %24 = load %struct.pfsync_bus*, %struct.pfsync_bus** %5, align 8
  %25 = getelementptr inbounds %struct.pfsync_bus, %struct.pfsync_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %29 [
    i32 128, label %27
    i32 129, label %28
  ]

27:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %30

28:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %30

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %30

30:                                               ; preds = %29, %28, %27
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.pfsync_bus*, %struct.pfsync_bus** %5, align 8
  %33 = getelementptr inbounds %struct.pfsync_bus, %struct.pfsync_bus* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @htonl(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = call i32 @ND_PRINT(i32* %40)
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
