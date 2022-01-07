; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_reset_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_request.c_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_entry = type { i32, i32 (...)* }
%struct.req_pkt = type { i32, i32 }
%struct.reset_flags = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"reset_stats: err_nitems > 1\00", align 1
@INFO_ERR_FMT = common dso_local global i32 0, align 4
@RESET_ALLFLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"reset_stats: reset leaves %#lx\00", align 1
@reset_entries = common dso_local global %struct.reset_entry* null, align 8
@INFO_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.req_pkt*)* @reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_stats(i32* %0, i32* %1, %struct.req_pkt* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.req_pkt*, align 8
  %7 = alloca %struct.reset_flags*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.reset_entry*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.req_pkt* %2, %struct.req_pkt** %6, align 8
  %10 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %11 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @INFO_NITEMS(i32 %12)
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = call i32 (i32, i8*, ...) @msyslog(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %21 = load i32, i32* @INFO_ERR_FMT, align 4
  %22 = call i32 @req_ack(i32* %18, i32* %19, %struct.req_pkt* %20, i32 %21)
  br label %77

23:                                               ; preds = %3
  %24 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %25 = getelementptr inbounds %struct.req_pkt, %struct.req_pkt* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to %struct.reset_flags*
  store %struct.reset_flags* %26, %struct.reset_flags** %7, align 8
  %27 = load %struct.reset_flags*, %struct.reset_flags** %7, align 8
  %28 = getelementptr inbounds %struct.reset_flags, %struct.reset_flags* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RESET_ALLFLAGS, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %23
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @RESET_ALLFLAGS, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = call i32 (i32, i8*, ...) @msyslog(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %46 = load i32, i32* @INFO_ERR_FMT, align 4
  %47 = call i32 @req_ack(i32* %43, i32* %44, %struct.req_pkt* %45, i32 %46)
  br label %77

48:                                               ; preds = %23
  %49 = load %struct.reset_entry*, %struct.reset_entry** @reset_entries, align 8
  store %struct.reset_entry* %49, %struct.reset_entry** %9, align 8
  br label %50

50:                                               ; preds = %68, %48
  %51 = load %struct.reset_entry*, %struct.reset_entry** %9, align 8
  %52 = getelementptr inbounds %struct.reset_entry, %struct.reset_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.reset_entry*, %struct.reset_entry** %9, align 8
  %58 = getelementptr inbounds %struct.reset_entry, %struct.reset_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.reset_entry*, %struct.reset_entry** %9, align 8
  %64 = getelementptr inbounds %struct.reset_entry, %struct.reset_entry* %63, i32 0, i32 1
  %65 = load i32 (...)*, i32 (...)** %64, align 8
  %66 = call i32 (...) %65()
  br label %67

67:                                               ; preds = %62, %55
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.reset_entry*, %struct.reset_entry** %9, align 8
  %70 = getelementptr inbounds %struct.reset_entry, %struct.reset_entry* %69, i32 1
  store %struct.reset_entry* %70, %struct.reset_entry** %9, align 8
  br label %50

71:                                               ; preds = %50
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.req_pkt*, %struct.req_pkt** %6, align 8
  %75 = load i32, i32* @INFO_OKAY, align 4
  %76 = call i32 @req_ack(i32* %72, i32* %73, %struct.req_pkt* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %36, %15
  ret void
}

declare dso_local i32 @INFO_NITEMS(i32) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

declare dso_local i32 @req_ack(i32*, i32*, %struct.req_pkt*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
