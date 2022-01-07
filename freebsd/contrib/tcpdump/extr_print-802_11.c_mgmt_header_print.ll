; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_mgmt_header_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_mgmt_header_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_header_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"BSSID:%s DA:%s SA:%s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @mgmt_header_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgmt_header_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mgmt_header_t*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = bitcast i32* %6 to %struct.mgmt_header_t*
  store %struct.mgmt_header_t* %7, %struct.mgmt_header_t** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.mgmt_header_t*, %struct.mgmt_header_t** %5, align 8
  %11 = getelementptr inbounds %struct.mgmt_header_t, %struct.mgmt_header_t* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @etheraddr_string(i32* %9, i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.mgmt_header_t*, %struct.mgmt_header_t** %5, align 8
  %16 = getelementptr inbounds %struct.mgmt_header_t, %struct.mgmt_header_t* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @etheraddr_string(i32* %14, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.mgmt_header_t*, %struct.mgmt_header_t** %5, align 8
  %21 = getelementptr inbounds %struct.mgmt_header_t, %struct.mgmt_header_t* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @etheraddr_string(i32* %19, i32 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  %26 = call i32 @ND_PRINT(i32* %25)
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @etheraddr_string(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
