; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_header_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_header_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgp = type { i32 }

@BGP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0A\09%s Message (%u), length: %u\00", align 1
@bgp_msg_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\0A\09  no Message %u decoder\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0A\09  \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[|BGP]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @bgp_header_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgp_header_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bgp, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BGP_SIZE, align 4
  %13 = call i32 @ND_TCHECK2(i32 %11, i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @BGP_SIZE, align 4
  %16 = call i32 @memcpy(%struct.bgp* %8, i32* %14, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @bgp_msg_values, align 4
  %19 = getelementptr inbounds %struct.bgp, %struct.bgp* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tok2str(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.bgp, %struct.bgp* %8, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32*
  %27 = call i32 @ND_PRINT(i32* %26)
  %28 = getelementptr inbounds %struct.bgp, %struct.bgp* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %51 [
    i32 130, label %30
    i32 128, label %35
    i32 131, label %40
    i32 132, label %45
    i32 129, label %46
  ]

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @bgp_open_print(i32* %31, i32* %32, i32 %33)
  br label %66

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @bgp_update_print(i32* %36, i32* %37, i32 %38)
  br label %66

40:                                               ; preds = %3
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @bgp_notification_print(i32* %41, i32* %42, i32 %43)
  br label %66

45:                                               ; preds = %3
  br label %66

46:                                               ; preds = %3
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @bgp_route_refresh_print(i32* %47, i32* %48, i32 %49)
  br label %66

51:                                               ; preds = %3
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ND_TCHECK2(i32 %53, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds %struct.bgp, %struct.bgp* %8, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32 @ND_PRINT(i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @print_unknown_data(i32* %62, i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %51, %46, %45, %40, %35, %30
  store i32 1, i32* %4, align 4
  br label %70

67:                                               ; No predecessors!
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.4 to i32*))
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(%struct.bgp*, i32*, i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @bgp_open_print(i32*, i32*, i32) #1

declare dso_local i32 @bgp_update_print(i32*, i32*, i32) #1

declare dso_local i32 @bgp_notification_print(i32*, i32*, i32) #1

declare dso_local i32 @bgp_route_refresh_print(i32*, i32*, i32) #1

declare dso_local i32 @print_unknown_data(i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
