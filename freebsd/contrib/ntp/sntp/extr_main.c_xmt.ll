; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_xmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_xmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, %struct.dns_ctx* }
%struct.dns_ctx = type { i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.pkt = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"xmt: gettimeofday() failed: %m\00", align 1
@JAN_1970 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"xmt: %lx.%6.6u %s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmt(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dns_ctx*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.pkt, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load %struct.dns_ctx*, %struct.dns_ctx** %17, align 8
  store %struct.dns_ctx* %18, %struct.dns_ctx** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32* %23, i32** %6, align 8
  %24 = call i64 @gettimeofday(%struct.timeval* %7, i32* null)
  %25 = icmp ne i64 0, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = call i32 @msyslog(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %1
  %31 = load i64, i64* @JAN_1970, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %31
  store i64 %34, i64* %32, align 8
  %35 = load %struct.dns_ctx*, %struct.dns_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dns_ctx*, %struct.dns_ctx** %4, align 8
  %39 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @generate_pkt(%struct.pkt* %8, %struct.timeval* %7, i32 %37, i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @sendpkt(i32 %42, i32* %43, %struct.pkt* %8, i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %30
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @min(i32 4, i64 %51)
  %53 = call i32 @memcpy(i32* %50, %struct.pkt* %8, i32 %52)
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @JAN_1970, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.dns_ctx*, %struct.dns_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @stoa(i32* %69)
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @TRACE(i32 2, i8* %72)
  br label %80

74:                                               ; preds = %30
  %75 = load %struct.dns_ctx*, %struct.dns_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.dns_ctx, %struct.dns_ctx* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @dec_pending_ntp(i32 %77, i32* %78)
  br label %80

80:                                               ; preds = %74, %48
  ret void
}

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @msyslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @generate_pkt(%struct.pkt*, %struct.timeval*, i32, i32) #1

declare dso_local i32 @sendpkt(i32, i32*, %struct.pkt*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.pkt*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i32 @dec_pending_ntp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
