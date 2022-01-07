; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_netif.c_netif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iodesc = type { %struct.netif* }
%struct.netif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@sockets = common dso_local global %struct.iodesc* null, align 8
@SOPEN_MAX = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"netboot: no interfaces left untried\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"netboot: couldn't probe %s%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netif_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iodesc*, align 8
  %6 = alloca %struct.netif*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.iodesc*, %struct.iodesc** @sockets, align 8
  store %struct.iodesc* %7, %struct.iodesc** %5, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SOPEN_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %14 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %13, i32 0, i32 0
  %15 = load %struct.netif*, %struct.netif** %14, align 8
  %16 = icmp eq %struct.netif* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %26

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %23 = getelementptr inbounds %struct.iodesc, %struct.iodesc* %22, i32 1
  store %struct.iodesc* %23, %struct.iodesc** %5, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load i32, i32* @EMFILE, align 4
  store i32 %25, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %58

26:                                               ; preds = %17
  %27 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %28 = call i32 @bzero(%struct.iodesc* %27, i32 8)
  %29 = call i32 (...) @netif_init()
  %30 = load i8*, i8** %3, align 8
  %31 = call %struct.netif* @netif_select(i8* %30)
  store %struct.netif* %31, %struct.netif** %6, align 8
  %32 = load %struct.netif*, %struct.netif** %6, align 8
  %33 = icmp ne %struct.netif* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %26
  %37 = load %struct.netif*, %struct.netif** %6, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i64 @netif_probe(%struct.netif* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.netif*, %struct.netif** %6, align 8
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.netif*, %struct.netif** %6, align 8
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %58

52:                                               ; preds = %36
  %53 = load %struct.netif*, %struct.netif** %6, align 8
  %54 = load %struct.iodesc*, %struct.iodesc** %5, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @netif_attach(%struct.netif* %53, %struct.iodesc* %54, i8* %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %41, %24
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @bzero(%struct.iodesc*, i32) #1

declare dso_local i32 @netif_init(...) #1

declare dso_local %struct.netif* @netif_select(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @netif_probe(%struct.netif*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @netif_attach(%struct.netif*, %struct.iodesc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
