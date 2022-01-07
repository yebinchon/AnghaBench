; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parserep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parserep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunrpc_msg = type { i32 }

@SUNRPC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@sunrpc_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ar_stat %d\00", align 1
@nfserr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.sunrpc_msg*, i32)* @parserep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parserep(i32* %0, %struct.sunrpc_msg* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sunrpc_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.sunrpc_msg* %1, %struct.sunrpc_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sunrpc_msg*, %struct.sunrpc_msg** %6, align 8
  %12 = getelementptr inbounds %struct.sunrpc_msg, %struct.sunrpc_msg* %11, i32 0, i32 0
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ND_TCHECK(i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = call i32 @EXTRACT_32BITS(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %58

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 11
  %29 = udiv i64 %28, 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 %29
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ND_TCHECK(i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @EXTRACT_32BITS(i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @SUNRPC_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %25
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @sunrpc_str, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @tok2str(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @ND_PRINT(i32* %47)
  store i32 1, i32* @nfserr, align 4
  store i32* null, i32** %4, align 8
  br label %58

49:                                               ; preds = %25
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ND_TCHECK2(i32 %51, i32 4)
  %53 = load i32*, i32** %8, align 8
  %54 = bitcast i32* %53 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %4, align 8
  br label %58

57:                                               ; No predecessors!
  store i32* null, i32** %4, align 8
  br label %58

58:                                               ; preds = %57, %49, %41, %24
  %59 = load i32*, i32** %4, align 8
  ret i32* %59
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
