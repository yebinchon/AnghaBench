; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ether.c_sendether.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ether.c_sendether.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { i32* }
%struct.ether_header = type { i32, i32, i32 }

@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendether(%struct.iodesc* %0, i8* %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iodesc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ether_header*, align 8
  store %struct.iodesc* %0, %struct.iodesc** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.ether_header*
  %16 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %15, i64 -1
  store %struct.ether_header* %16, %struct.ether_header** %13, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add i64 %17, 12
  store i64 %18, i64* %9, align 8
  %19 = load %struct.iodesc*, %struct.iodesc** %7, align 8
  %20 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %23 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MACPY(i32* %21, i32 %24)
  %26 = load i32*, i32** %10, align 8
  %27 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %28 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MACPY(i32* %26, i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @htons(i32 %31)
  %33 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %34 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.iodesc*, %struct.iodesc** %7, align 8
  %36 = load %struct.ether_header*, %struct.ether_header** %13, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @netif_put(%struct.iodesc* %35, %struct.ether_header* %36, i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %5
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 12
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %5
  store i32 -1, i32* %6, align 4
  br label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 12
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @MACPY(i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_put(%struct.iodesc*, %struct.ether_header*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
