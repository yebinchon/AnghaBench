; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atm.c_sig_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atm.c_sig_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROTO_POS = common dso_local global i64 0, align 8
@Q2931 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Q.2931\00", align 1
@MSG_TYPE_POS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c":%s \00", align 1
@msgtype2str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"msgtype#%d\00", align 1
@CALL_REF_POS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"CALL_REF:0x%06x\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SSCOP, proto %d \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*)* @sig_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sig_print(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* @PROTO_POS, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @ND_TCHECK(i64 %9)
  %11 = load i64*, i64** %4, align 8
  %12 = load i64, i64* @PROTO_POS, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @Q2931, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str to i32*))
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* @MSG_TYPE_POS, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ND_TCHECK(i64 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @msgtype2str, align 4
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* @MSG_TYPE_POS, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @tok2str(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = call i32 @ND_PRINT(i32* %33)
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* @CALL_REF_POS, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = call i32 @EXTRACT_24BITS(i64* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i32*
  %43 = call i32 @ND_PRINT(i32* %42)
  br label %52

44:                                               ; preds = %2
  %45 = load i32*, i32** %3, align 8
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* @PROTO_POS, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32 @ND_PRINT(i32* %50)
  br label %52

52:                                               ; preds = %44, %17
  br label %59

53:                                               ; No predecessors!
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @tstr, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @ND_PRINT(i32* %57)
  br label %59

59:                                               ; preds = %53, %52
  ret void
}

declare dso_local i32 @ND_TCHECK(i64) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @EXTRACT_24BITS(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
