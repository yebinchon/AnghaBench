; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_get_opthdr_from_block_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_sf-pcapng.c_get_opthdr_from_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option_header = type { i8*, i8* }
%struct.TYPE_3__ = type { i64 }
%struct.block_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.option_header* (%struct.TYPE_3__*, %struct.block_cursor*, i8*)* @get_opthdr_from_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.option_header* @get_opthdr_from_block_data(%struct.TYPE_3__* %0, %struct.block_cursor* %1, i8* %2) #0 {
  %4 = alloca %struct.option_header*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.block_cursor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.option_header*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.block_cursor* %1, %struct.block_cursor** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.block_cursor*, %struct.block_cursor** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call %struct.option_header* @get_from_block_data(%struct.block_cursor* %9, i32 16, i8* %10)
  store %struct.option_header* %11, %struct.option_header** %8, align 8
  %12 = load %struct.option_header*, %struct.option_header** %8, align 8
  %13 = icmp eq %struct.option_header* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.option_header* null, %struct.option_header** %4, align 8
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.option_header*, %struct.option_header** %8, align 8
  %22 = getelementptr inbounds %struct.option_header, %struct.option_header* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @SWAPSHORT(i8* %23)
  %25 = load %struct.option_header*, %struct.option_header** %8, align 8
  %26 = getelementptr inbounds %struct.option_header, %struct.option_header* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.option_header*, %struct.option_header** %8, align 8
  %28 = getelementptr inbounds %struct.option_header, %struct.option_header* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @SWAPSHORT(i8* %29)
  %31 = load %struct.option_header*, %struct.option_header** %8, align 8
  %32 = getelementptr inbounds %struct.option_header, %struct.option_header* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %20, %15
  %34 = load %struct.option_header*, %struct.option_header** %8, align 8
  store %struct.option_header* %34, %struct.option_header** %4, align 8
  br label %35

35:                                               ; preds = %33, %14
  %36 = load %struct.option_header*, %struct.option_header** %4, align 8
  ret %struct.option_header* %36
}

declare dso_local %struct.option_header* @get_from_block_data(%struct.block_cursor*, i32, i8*) #1

declare dso_local i8* @SWAPSHORT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
