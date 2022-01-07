; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_kauth_reply_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rx.c_kauth_reply_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_header = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c" kauth\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" reply %s\00", align 1
@kauth_req = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"op#%d\00", align 1
@RX_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c" errcode\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" [|kauth]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @kauth_reply_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kauth_reply_print(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %11 = icmp sle i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %51

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.rx_header*
  store %struct.rx_header* %15, %struct.rx_header** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @is_ubik(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ubik_reply_print(i32* %22, i32* %23, i32 %24, i32 %25)
  br label %51

27:                                               ; preds = %13
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @kauth_req, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @tok2str(i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  store i32* %36, i32** %6, align 8
  %37 = load %struct.rx_header*, %struct.rx_header** %9, align 8
  %38 = getelementptr inbounds %struct.rx_header, %struct.rx_header* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RX_PACKET_TYPE_DATA, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %47

43:                                               ; preds = %27
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  %46 = call i32 (...) @INTOUT()
  br label %47

47:                                               ; preds = %43, %42
  br label %51

48:                                               ; No predecessors!
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ND_PRINT(i32* bitcast ([10 x i8]* @.str.4 to i32*))
  br label %51

51:                                               ; preds = %48, %47, %21, %12
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @is_ubik(i32) #1

declare dso_local i32 @ubik_reply_print(i32*, i32*, i32, i32) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @INTOUT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
