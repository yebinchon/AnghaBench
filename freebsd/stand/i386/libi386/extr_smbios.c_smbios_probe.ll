; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_smbios.c_smbios_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_smbios.c_smbios_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i32*, i8*, i8* }

@smbios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SMBIOS_START = common dso_local global i64 0, align 8
@SMBIOS_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @smbios_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbios_probe(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 0), align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %80

9:                                                ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 0), align 8
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  br label %17

14:                                               ; preds = %9
  %15 = load i64, i64* @SMBIOS_START, align 8
  %16 = call i32* @PTOV(i64 %15)
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi i32* [ %13, %12 ], [ %16, %14 ]
  %19 = load i32, i32* @SMBIOS_LENGTH, align 4
  %20 = call i32* @smbios_sigsearch(i32* %18, i32 %19)
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %80

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @SMBIOS_GET16(i32* %25, i32 22)
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 9), align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @SMBIOS_GET32(i32* %27, i32 24)
  store i64 %28, i64* %5, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @SMBIOS_GET16(i32* %29, i32 28)
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 8), align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @SMBIOS_GET8(i32* %31, i32 30)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 1), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 1), align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %24
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 1), align 4
  %38 = ashr i32 %37, 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 2), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 1), align 4
  %40 = and i32 %39, 15
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 3), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 2), align 8
  %42 = icmp sgt i32 %41, 9
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 3), align 4
  %45 = icmp sgt i32 %44, 9
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %36
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 1), align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 1), align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32*, i32** %3, align 8
  %53 = call i8* @SMBIOS_GET8(i32* %52, i32 6)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 2), align 8
  %55 = load i32*, i32** %3, align 8
  %56 = call i8* @SMBIOS_GET8(i32* %55, i32 7)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 3), align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 2), align 8
  %60 = shl i32 %59, 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 3), align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 1), align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32* @PTOV(i64 %63)
  store i32* %64, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 7), align 8
  %65 = call i32* @smbios_find_struct(i32 0)
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @smbios_getstring(i32* %69, i32 4)
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 6), align 8
  br label %71

71:                                               ; preds = %68, %58
  %72 = call i32* @smbios_find_struct(i32 1)
  store i32* %72, i32** %4, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32*, i32** %4, align 8
  %77 = call i8* @smbios_getstring(i32* %76, i32 4)
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 5), align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i8* @smbios_getstring(i32* %78, i32 5)
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 4), align 8
  br label %80

80:                                               ; preds = %8, %23, %75, %71
  ret void
}

declare dso_local i32* @smbios_sigsearch(i32*, i32) #1

declare dso_local i32* @PTOV(i64) #1

declare dso_local i8* @SMBIOS_GET16(i32*, i32) #1

declare dso_local i64 @SMBIOS_GET32(i32*, i32) #1

declare dso_local i8* @SMBIOS_GET8(i32*, i32) #1

declare dso_local i32* @smbios_find_struct(i32) #1

declare dso_local i8* @smbios_getstring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
