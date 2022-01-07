; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efinet.c_efinet_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { %struct.netif* }
%struct.netif = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 (%struct.TYPE_4__*, i32, i64, i8*, i32*, i32*, i32*)*, i64 (%struct.TYPE_4__*, i32*, i8**)* }

@EFI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iodesc*, i8*, i64)* @efinet_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efinet_put(%struct.iodesc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iodesc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.netif*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.iodesc* %0, %struct.iodesc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %13 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %12, i32 0, i32 0
  %14 = load %struct.netif*, %struct.netif** %13, align 8
  store %struct.netif* %14, %struct.netif** %8, align 8
  %15 = load %struct.netif*, %struct.netif** %8, align 8
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %59

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64 (%struct.TYPE_4__*, i32, i64, i8*, i32*, i32*, i32*)*, i64 (%struct.TYPE_4__*, i32, i64, i8*, i32*, i32*, i32*)** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 %24(%struct.TYPE_4__* %25, i32 0, i64 %26, i8* %27, i32* null, i32* null, i32* null)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @EFI_SUCCESS, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %59

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %47, %33
  store i8* null, i8** %11, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64 (%struct.TYPE_4__*, i32*, i8**)*, i64 (%struct.TYPE_4__*, i32*, i8**)** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = call i64 %37(%struct.TYPE_4__* %38, i32* null, i8** %11)
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @EFI_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  %46 = icmp eq i8* %45, null
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %34, label %49

49:                                               ; preds = %47
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* @EFI_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ %54, %53 ], [ -1, %55 ]
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %32, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
