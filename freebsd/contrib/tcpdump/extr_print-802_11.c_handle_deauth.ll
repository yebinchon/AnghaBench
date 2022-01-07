; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_deauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_handle_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.mgmt_body_t = type { i64 }

@IEEE802_11_REASON_LEN = common dso_local global i64 0, align 8
@NUM_REASONS = common dso_local global i64 0, align 8
@reason_text = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" (%s): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32*, i64)* @handle_deauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_deauth(%struct.TYPE_5__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mgmt_body_t, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %11, align 8
  %12 = call i32 @memset(%struct.mgmt_body_t* %10, i32 0, i32 8)
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* @IEEE802_11_REASON_LEN, align 8
  %16 = call i32 @ND_TTEST2(i32 %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @IEEE802_11_REASON_LEN, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %59

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @EXTRACT_LE_16BITS(i32* %25)
  %27 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %10, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NUM_REASONS, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i8**, i8*** @reason_text, align 8
  %34 = getelementptr inbounds %struct.mgmt_body_t, %struct.mgmt_body_t* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i8* [ %37, %32 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %38 ]
  store i8* %40, i8** %11, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = bitcast i8* %47 to %struct.TYPE_5__*
  %49 = call i32 @ND_PRINT(%struct.TYPE_5__* %48)
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @etheraddr_string(%struct.TYPE_5__* %52, i32* %53)
  %55 = load i8*, i8** %11, align 8
  %56 = bitcast i8* %55 to %struct.TYPE_5__*
  %57 = call i32 @ND_PRINT(%struct.TYPE_5__* %56)
  br label %58

58:                                               ; preds = %50, %45
  store i32 1, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %23, %18
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.mgmt_body_t*, i32, i32) #1

declare dso_local i32 @ND_TTEST2(i32, i64) #1

declare dso_local i64 @EXTRACT_LE_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @etheraddr_string(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
