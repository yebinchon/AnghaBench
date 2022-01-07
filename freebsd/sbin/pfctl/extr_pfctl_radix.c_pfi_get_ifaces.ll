; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfi_get_ifaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfi_get_ifaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_kif = type { i32 }
%struct.pfioc_iface = type { i32, i32, %struct.pfi_kif*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCIGETIFACES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfi_get_ifaces(i8* %0, %struct.pfi_kif* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pfi_kif*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pfioc_iface, align 8
  store i8* %0, i8** %5, align 8
  store %struct.pfi_kif* %1, %struct.pfi_kif** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.pfi_kif*, %struct.pfi_kif** %6, align 8
  %21 = icmp eq %struct.pfi_kif* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11, %3
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %54

24:                                               ; preds = %19, %15
  %25 = call i32 @bzero(%struct.pfioc_iface* %8, i32 24)
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %8, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strlcpy(i32 %30, i8* %31, i32 4)
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %54

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.pfi_kif*, %struct.pfi_kif** %6, align 8
  %40 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %8, i32 0, i32 2
  store %struct.pfi_kif* %39, %struct.pfi_kif** %40, align 8
  %41 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %8, i32 0, i32 0
  store i32 4, i32* %41, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @dev, align 4
  %46 = load i32, i32* @DIOCIGETIFACES, align 4
  %47 = call i64 @ioctl(i32 %45, i32 %46, %struct.pfioc_iface* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %54

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.pfioc_iface, %struct.pfioc_iface* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %49, %35, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @bzero(%struct.pfioc_iface*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
