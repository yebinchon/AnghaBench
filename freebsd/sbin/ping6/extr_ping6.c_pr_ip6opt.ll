; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_ip6opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_pr_ip6opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_hbh = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"nxt %u, len %u (%lu bytes)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"options truncated, showing only %u (total=%u)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"    Jumbo Payload Opt: Length %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"    Router Alert Opt: Type %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"    Received Opt %u len %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @pr_ip6opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_ip6opt(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ip6_hbh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.ip6_hbh*
  store %struct.ip6_hbh* %15, %struct.ip6_hbh** %5, align 8
  %16 = load %struct.ip6_hbh*, %struct.ip6_hbh** %5, align 8
  %17 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = mul nsw i32 %19, 8
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ip6_hbh*, %struct.ip6_hbh** %5, align 8
  %23 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip6_hbh*, %struct.ip6_hbh** %5, align 8
  %26 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i64 %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @CMSG_SPACE(i32 0)
  %33 = add i64 %31, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %2
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @CMSG_SPACE(i32 0)
  %38 = sub i64 %36, %37
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = udiv i64 %39, 8
  %41 = sub i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = load %struct.ip6_hbh*, %struct.ip6_hbh** %5, align 8
  %44 = getelementptr inbounds %struct.ip6_hbh, %struct.ip6_hbh* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %35, %2
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %76
  %49 = load i8*, i8** %3, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @inet6_opt_next(i8* %49, i64 %50, i32 %51, i32* %7, i64* %9, i8** %10)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %77

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %72 [
    i32 129, label %58
    i32 128, label %65
  ]

58:                                               ; preds = %56
  store i64 0, i64* %11, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i64 @inet6_opt_get_val(i8* %59, i64 %60, i32* %13, i32 4)
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ntohl(i32 %62)
  %64 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %76

65:                                               ; preds = %56
  store i64 0, i64* %11, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @inet6_opt_get_val(i8* %66, i64 %67, i32* %12, i32 4)
  store i64 %68, i64* %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ntohs(i32 %69)
  %71 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %76

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %9, align 8
  %75 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %65, %58
  br label %48

77:                                               ; preds = %55
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @CMSG_SPACE(i32) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

declare dso_local i32 @inet6_opt_next(i8*, i64, i32, i32*, i64*, i8**) #1

declare dso_local i64 @inet6_opt_get_val(i8*, i64, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
