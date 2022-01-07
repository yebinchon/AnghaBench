; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rip.c_rip_entry_print_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-rip.c_rip_entry_print_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rip_netinfo = type { i32, i32, i32, i32, i32, i32 }

@BSD_AFNUM_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"\0A\09 AFI %s, \00", align 1
@bsd_af_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\0A\09  \00", align 1
@RIP_ROUTELEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"\0A\09  AFI 0, %s, metric: %u\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0A\09  %s, metric: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.rip_netinfo*)* @rip_entry_print_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rip_entry_print_v1(i32* %0, %struct.rip_netinfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rip_netinfo*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.rip_netinfo* %1, %struct.rip_netinfo** %4, align 8
  %6 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %7 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %6, i32 0, i32 2
  %8 = call i64 @EXTRACT_16BITS(i32* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @BSD_AFNUM_INET, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @bsd_af_values, align 4
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @tok2str(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  %22 = call i32 @ND_PRINT(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %25 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %24, i32 0, i32 2
  %26 = load i32, i32* @RIP_ROUTELEN, align 4
  %27 = call i32 @print_unknown_data(i32* %23, i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  br label %74

28:                                               ; preds = %12, %2
  %29 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %30 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %29, i32 0, i32 5
  %31 = call i64 @EXTRACT_16BITS(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %35 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %34, i32 0, i32 4
  %36 = call i64 @EXTRACT_32BITS(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %40 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %39, i32 0, i32 3
  %41 = call i64 @EXTRACT_32BITS(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %33, %28
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %46 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %45, i32 0, i32 2
  %47 = load i32, i32* @RIP_ROUTELEN, align 4
  %48 = call i32 @print_unknown_data(i32* %44, i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %74

49:                                               ; preds = %38
  %50 = load i64, i64* %5, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %56 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %55, i32 0, i32 1
  %57 = call i32 @ipaddr_string(i32* %54, i32* %56)
  %58 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %59 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %58, i32 0, i32 0
  %60 = call i64 @EXTRACT_32BITS(i32* %59)
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @ND_PRINT(i32* %61)
  br label %74

63:                                               ; preds = %49
  %64 = load i32*, i32** %3, align 8
  %65 = load i32*, i32** %3, align 8
  %66 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %67 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %66, i32 0, i32 1
  %68 = call i32 @ipaddr_string(i32* %65, i32* %67)
  %69 = load %struct.rip_netinfo*, %struct.rip_netinfo** %4, align 8
  %70 = getelementptr inbounds %struct.rip_netinfo, %struct.rip_netinfo* %69, i32 0, i32 0
  %71 = call i64 @EXTRACT_32BITS(i32* %70)
  %72 = inttoptr i64 %71 to i32*
  %73 = call i32 @ND_PRINT(i32* %72)
  br label %74

74:                                               ; preds = %63, %52, %43, %15
  ret void
}

declare dso_local i64 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i64) #1

declare dso_local i32 @print_unknown_data(i32*, i32*, i8*, i32) #1

declare dso_local i64 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @ipaddr_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
