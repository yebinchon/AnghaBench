; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_gmtime64_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_gmtime64_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tm* (i32, %struct.tm*)* @sldns_gmtime64_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tm* @sldns_gmtime64_r(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tm* %1, %struct.tm** %4, align 8
  %5 = load %struct.tm*, %struct.tm** %4, align 8
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @LDNS_MOD(i32 %7, i32 60)
  %9 = trunc i64 %8 to i32
  %10 = load %struct.tm*, %struct.tm** %4, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @LDNS_DIV(i32 %12, i32 60)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @LDNS_MOD(i32 %14, i32 60)
  %16 = trunc i64 %15 to i32
  %17 = load %struct.tm*, %struct.tm** %4, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @LDNS_DIV(i32 %19, i32 60)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @LDNS_MOD(i32 %21, i32 24)
  %23 = trunc i64 %22 to i32
  %24 = load %struct.tm*, %struct.tm** %4, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @LDNS_DIV(i32 %26, i32 24)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.tm*, %struct.tm** %4, align 8
  %30 = call i32 @sldns_year_and_yday_from_days_since_epoch(i32 %28, %struct.tm* %29)
  %31 = load %struct.tm*, %struct.tm** %4, align 8
  %32 = call i32 @sldns_mon_and_mday_from_year_and_yday(%struct.tm* %31)
  %33 = load %struct.tm*, %struct.tm** %4, align 8
  %34 = call i32 @sldns_wday_from_year_and_yday(%struct.tm* %33)
  %35 = load %struct.tm*, %struct.tm** %4, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1900
  store i32 %38, i32* %36, align 4
  %39 = load %struct.tm*, %struct.tm** %4, align 8
  ret %struct.tm* %39
}

declare dso_local i64 @LDNS_MOD(i32, i32) #1

declare dso_local i32 @LDNS_DIV(i32, i32) #1

declare dso_local i32 @sldns_year_and_yday_from_days_since_epoch(i32, %struct.tm*) #1

declare dso_local i32 @sldns_mon_and_mday_from_year_and_yday(%struct.tm*) #1

declare dso_local i32 @sldns_wday_from_year_and_yday(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
