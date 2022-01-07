; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_ubik_reply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_ubik_reply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_header = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c" ubik reply %s\00", align 1
@ubik_req = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"op#%d\00", align 1
@RX_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c" vote no\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" dbversion\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c" vote yes until\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" errcode\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" [|ubik]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @ubik_reply_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubik_reply_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_header*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %56

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.rx_header*
  store %struct.rx_header* %15, %struct.rx_header** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @ubik_req, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @tok2str(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @ND_PRINT(i32* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 8
  store i32* %24, i32** %6, align 8
  %25 = load %struct.rx_header*, %struct.rx_header** %9, align 8
  %26 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RX_PACKET_TYPE_DATA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %13
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %39 [
    i32 10000, label %32
    i32 20004, label %35
  ]

32:                                               ; preds = %30
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.2 to i32*))
  br label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @ND_PRINT(i32* bitcast ([11 x i8]* @.str.3 to i32*))
  %38 = call i32 (...) @UBIK_VERSIONOUT()
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %35, %32
  br label %52

41:                                               ; preds = %13
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %47 [
    i32 10000, label %43
  ]

43:                                               ; preds = %41
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @ND_PRINT(i32* bitcast ([16 x i8]* @.str.4 to i32*))
  %46 = call i32 (...) @DATEOUT()
  br label %51

47:                                               ; preds = %41
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.5 to i32*))
  %50 = call i32 (...) @INTOUT()
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %40
  br label %56

53:                                               ; No predecessors!
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.6 to i32*))
  br label %56

56:                                               ; preds = %53, %52, %12
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @UBIK_VERSIONOUT(...) #1

declare dso_local i32 @DATEOUT(...) #1

declare dso_local i32 @INTOUT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
