; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_get_mgmt_src_dst_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-802_11.c_get_mgmt_src_dst_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_header_t = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32**)* @get_mgmt_src_dst_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_mgmt_src_dst_mac(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca %struct.mgmt_header_t*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32** %2, i32*** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.mgmt_header_t*
  store %struct.mgmt_header_t* %9, %struct.mgmt_header_t** %7, align 8
  %10 = load i32**, i32*** %5, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.mgmt_header_t*, %struct.mgmt_header_t** %7, align 8
  %14 = getelementptr inbounds %struct.mgmt_header_t, %struct.mgmt_header_t* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32**, i32*** %5, align 8
  store i32* %15, i32** %16, align 8
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i32**, i32*** %6, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.mgmt_header_t*, %struct.mgmt_header_t** %7, align 8
  %22 = getelementptr inbounds %struct.mgmt_header_t, %struct.mgmt_header_t* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32**, i32*** %6, align 8
  store i32* %23, i32** %24, align 8
  br label %25

25:                                               ; preds = %20, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
