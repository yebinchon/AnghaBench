; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i32, i64, i64 }
%struct.serial = type { i64 }

@ports = common dso_local global %struct.dos_ttystate* null, align 8
@com_data = common dso_local global i64 0, align 8
@RAWHZ = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SERIAL_ERROR = common dso_local global i32 0, align 4
@CNT_TX = common dso_local global i64 0, align 8
@cnts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serial*, i8*, i32)* @dos_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_write(%struct.serial* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.serial*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dos_ttystate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %13 = load %struct.serial*, %struct.serial** %5, align 8
  %14 = getelementptr inbounds %struct.serial, %struct.serial* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %12, i64 %15
  store %struct.dos_ttystate* %16, %struct.dos_ttystate** %8, align 8
  %17 = load %struct.dos_ttystate*, %struct.dos_ttystate** %8, align 8
  %18 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %17, i32 0, i32 2
  %19 = load volatile i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 16, i32 1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %75, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %11, align 4
  %36 = load %struct.dos_ttystate*, %struct.dos_ttystate** %8, align 8
  %37 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %36, i32 0, i32 0
  store volatile i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %52, %34
  %39 = load i32, i32* %11, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  %42 = load %struct.dos_ttystate*, %struct.dos_ttystate** %8, align 8
  %43 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %42, i32 0, i32 1
  %44 = load volatile i64, i64* %43, align 8
  %45 = load i64, i64* @com_data, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  %49 = load i8, i8* %47, align 1
  %50 = sext i8 %49 to i32
  %51 = call i32 @outportb(i64 %46, i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  br label %38

57:                                               ; preds = %38
  %58 = call i64 (...) @rawclock()
  %59 = load i64, i64* @RAWHZ, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %74, %57
  %62 = load %struct.dos_ttystate*, %struct.dos_ttystate** %8, align 8
  %63 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %62, i32 0, i32 0
  %64 = load volatile i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = call i64 (...) @rawclock()
  %68 = load i64, i64* %10, align 8
  %69 = sub nsw i64 %67, %68
  %70 = icmp sge i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  store i32 %72, i32* @errno, align 4
  %73 = load i32, i32* @SERIAL_ERROR, align 4
  store i32 %73, i32* %4, align 4
  br label %77

74:                                               ; preds = %66
  br label %61

75:                                               ; preds = %61
  br label %23

76:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @outportb(i64, i32) #1

declare dso_local i64 @rawclock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
