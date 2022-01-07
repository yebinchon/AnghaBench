; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_smbios.c_smbios_find_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_smbios.c_smbios_find_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32* }

@smbios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @smbios_find_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @smbios_find_struct(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 2), align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %48

9:                                                ; preds = %1
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 2), align 8
  store i32* %10, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %44, %9
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 2), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 0), align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = icmp ult i32* %12, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @smbios, i32 0, i32 1), align 8
  %21 = icmp ult i64 %19, %20
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i1 [ false, %11 ], [ %21, %18 ]
  br i1 %23, label %24, label %47

24:                                               ; preds = %22
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @SMBIOS_GET8(i32* %25, i32 0)
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  store i32* %30, i32** %2, align 8
  br label %48

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = call i32* @SMBIOS_GETSTR(i32* %32)
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %38, %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @SMBIOS_GET16(i32* %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  br label %34

41:                                               ; preds = %34
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %4, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %11

47:                                               ; preds = %22
  store i32* null, i32** %2, align 8
  br label %48

48:                                               ; preds = %47, %29, %8
  %49 = load i32*, i32** %2, align 8
  ret i32* %49
}

declare dso_local i32 @SMBIOS_GET8(i32*, i32) #1

declare dso_local i32* @SMBIOS_GETSTR(i32*) #1

declare dso_local i64 @SMBIOS_GET16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
