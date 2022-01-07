; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igmp.c_print_mresp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-igmp.c_print_mresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr_query = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c" [invalid len %d]\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"mresp %lu: %s to %s reply-to %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" with-ttl %d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @print_mresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mresp(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tr_query*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 8
  %10 = bitcast i32* %9 to %struct.tr_query*
  store %struct.tr_query* %10, %struct.tr_query** %7, align 8
  %11 = load %struct.tr_query*, %struct.tr_query** %7, align 8
  %12 = bitcast %struct.tr_query* %11 to { i64, i64 }*
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 4
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %16 = load i64, i64* %15, align 4
  %17 = call i32 @ND_TCHECK(i64 %14, i64 %16)
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 24
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @ND_PRINT(i32* %25)
  br label %70

27:                                               ; preds = %3
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.tr_query*, %struct.tr_query** %7, align 8
  %30 = getelementptr inbounds %struct.tr_query, %struct.tr_query* %29, i32 0, i32 0
  %31 = call i32 @EXTRACT_32BITS(i32* %30)
  %32 = call i64 @TR_GETQID(i32 %31)
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.tr_query*, %struct.tr_query** %7, align 8
  %36 = getelementptr inbounds %struct.tr_query, %struct.tr_query* %35, i32 0, i32 3
  %37 = call i32 @ipaddr_string(i32* %34, i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.tr_query*, %struct.tr_query** %7, align 8
  %40 = getelementptr inbounds %struct.tr_query, %struct.tr_query* %39, i32 0, i32 2
  %41 = call i32 @ipaddr_string(i32* %38, i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.tr_query*, %struct.tr_query** %7, align 8
  %44 = getelementptr inbounds %struct.tr_query, %struct.tr_query* %43, i32 0, i32 1
  %45 = call i32 @ipaddr_string(i32* %42, i32* %44)
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @ND_PRINT(i32* %47)
  %49 = load %struct.tr_query*, %struct.tr_query** %7, align 8
  %50 = getelementptr inbounds %struct.tr_query, %struct.tr_query* %49, i32 0, i32 1
  %51 = call i32 @EXTRACT_32BITS(i32* %50)
  %52 = call i64 @IN_CLASSD(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %27
  %55 = load i32*, i32** %4, align 8
  %56 = load %struct.tr_query*, %struct.tr_query** %7, align 8
  %57 = getelementptr inbounds %struct.tr_query, %struct.tr_query* %56, i32 0, i32 0
  %58 = call i32 @EXTRACT_32BITS(i32* %57)
  %59 = call i32 @TR_GETTTL(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @ND_PRINT(i32* %61)
  br label %63

63:                                               ; preds = %54, %27
  br label %70

64:                                               ; No predecessors!
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @tstr, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i32*
  %69 = call i32 @ND_PRINT(i32* %68)
  br label %70

70:                                               ; preds = %64, %63, %21
  ret void
}

declare dso_local i32 @ND_TCHECK(i64, i64) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i64 @TR_GETQID(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

declare dso_local i64 @IN_CLASSD(i32) #1

declare dso_local i32 @TR_GETTTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
