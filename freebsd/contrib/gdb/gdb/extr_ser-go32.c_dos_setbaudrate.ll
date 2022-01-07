; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_setbaudrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_setbaudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i32 }
%struct.serial = type { i64 }

@ports = common dso_local global %struct.dos_ttystate* null, align 8
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%d: impossible baudrate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@com_cfcr = common dso_local global i32 0, align 4
@CFCR_DLAB = common dso_local global i8 0, align 1
@com_dlbl = common dso_local global i32 0, align 4
@com_dlbh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*, i32)* @dos_setbaudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_setbaudrate(%struct.serial* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serial*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dos_ttystate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.serial* %0, %struct.serial** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %10 = load %struct.serial*, %struct.serial** %4, align 8
  %11 = getelementptr inbounds %struct.serial, %struct.serial* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %9, i64 %12
  store %struct.dos_ttystate* %13, %struct.dos_ttystate** %6, align 8
  %14 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %15 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dos_baudconv(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @gdb_stderr, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @fprintf_unfiltered(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %59

29:                                               ; preds = %19
  %30 = call i32 (...) @disable()
  %31 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %32 = load i32, i32* @com_cfcr, align 4
  %33 = call zeroext i8 @inb(%struct.dos_ttystate* %31, i32 %32)
  store i8 %33, i8* %8, align 1
  %34 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %35 = load i32, i32* @com_cfcr, align 4
  %36 = load i8, i8* @CFCR_DLAB, align 1
  %37 = call i32 @outb(%struct.dos_ttystate* %34, i32 %35, i8 zeroext %36)
  %38 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %39 = load i32, i32* @com_dlbl, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = call i32 @outb(%struct.dos_ttystate* %38, i32 %39, i8 zeroext %42)
  %44 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %45 = load i32, i32* @com_dlbh, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 8
  %48 = trunc i32 %47 to i8
  %49 = call i32 @outb(%struct.dos_ttystate* %44, i32 %45, i8 zeroext %48)
  %50 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %51 = load i32, i32* @com_cfcr, align 4
  %52 = load i8, i8* %8, align 1
  %53 = call i32 @outb(%struct.dos_ttystate* %50, i32 %51, i8 zeroext %52)
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.dos_ttystate*, %struct.dos_ttystate** %6, align 8
  %56 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = call i32 (...) @enable()
  br label %58

58:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %24
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @dos_baudconv(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @disable(...) #1

declare dso_local zeroext i8 @inb(%struct.dos_ttystate*, i32) #1

declare dso_local i32 @outb(%struct.dos_ttystate*, i32, i8 zeroext) #1

declare dso_local i32 @enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
