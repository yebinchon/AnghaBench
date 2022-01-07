; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/missing/extr_snprintf.c_pcap_vsnprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/missing/extr_snprintf.c_pcap_vsnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i64, i8*, i8*, i8*, i32, i32, i64 }

@sn_append_char = common dso_local global i32 0, align 4
@sn_reserve = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcap_vsnprintf(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.state, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @sn_append_char, align 4
  %27 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @sn_reserve, align 4
  %29 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @xyzprintf(%struct.state* %10, i8* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  store i8 0, i8* %34, align 1
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %49

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %42 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %40, %37
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @xyzprintf(%struct.state*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
