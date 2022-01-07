; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c_serial_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c_serial_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@serial_logfp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial_write(%struct.serial* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.serial*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.serial* %0, %struct.serial** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** @serial_logfp, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %26, %10
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load i32*, i32** @serial_logfp, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = call i32 @serial_logchar(i32* %16, i8 signext 119, i8 signext %24, i32 0)
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load i32*, i32** @serial_logfp, align 8
  %31 = call i32 @gdb_flush(i32* %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.serial*, %struct.serial** %4, align 8
  %34 = getelementptr inbounds %struct.serial, %struct.serial* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.serial*, i8*, i32)**
  %38 = load i32 (%struct.serial*, i8*, i32)*, i32 (%struct.serial*, i8*, i32)** %37, align 8
  %39 = load %struct.serial*, %struct.serial** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 %38(%struct.serial* %39, i8* %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @serial_logchar(i32*, i8 signext, i8 signext, i32) #1

declare dso_local i32 @gdb_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
