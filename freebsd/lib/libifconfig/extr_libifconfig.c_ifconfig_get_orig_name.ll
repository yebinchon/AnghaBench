; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_get_orig_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig.c_ifconfig_get_orig_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_LINK = common dso_local global i32 0, align 4
@NETLINK_GENERIC = common dso_local global i32 0, align 4
@IFMIB_IFDATA = common dso_local global i32 0, align 4
@IFDATA_DRIVERNAME = common dso_local global i32 0, align 4
@OTHER = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_get_orig_name(%struct.TYPE_5__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @if_nametoindex(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %53

16:                                               ; preds = %3
  %17 = load i32, i32* @CTL_NET, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* @PF_LINK, align 4
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @NETLINK_GENERIC, align 4
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @IFMIB_IFDATA, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 3
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 4
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* @IFDATA_DRIVERNAME, align 4
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 5
  store i32 %27, i32* %28, align 4
  store i64 0, i64* %8, align 8
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %30 = call i64 @sysctl(i32* %29, i32 6, i8* null, i64* %8, i32 0, i32 0)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %16
  br label %53

33:                                               ; preds = %16
  %34 = load i64, i64* %8, align 8
  %35 = call i8* @malloc(i64 %34)
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %53

41:                                               ; preds = %33
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @sysctl(i32* %42, i32 6, i8* %44, i64* %8, i32 0, i32 0)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i8**, i8*** %7, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i8**, i8*** %7, align 8
  store i8* null, i8** %51, align 8
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %69

53:                                               ; preds = %47, %40, %32, %15
  %54 = load i32, i32* @OTHER, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load i64, i64* @errno, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @errno, align 8
  br label %64

62:                                               ; preds = %53
  %63 = load i64, i64* @ENOENT, align 8
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i64 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  store i32 -1, i32* %4, align 4
  br label %69

69:                                               ; preds = %64, %52
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @if_nametoindex(i8*) #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
