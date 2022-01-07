; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i64, i8*, i32, i32, i32, i32, i64, i64 }

@ports = common dso_local global %struct.dos_ttystate* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Port:\09COM%ld (%sactive)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Addr:\090x%03x (irq %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"16550:\09%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Speed:\09%d baud\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Errs:\09framing %d parity %d overflow %d\0A\0A\00", align 1
@NCNT = common dso_local global i32 0, align 4
@cntnames = common dso_local global i64* null, align 8
@cnts = common dso_local global i8** null, align 8
@intrcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dos_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dos_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dos_ttystate*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  store %struct.dos_ttystate* %6, %struct.dos_ttystate** %5, align 8
  br label %7

7:                                                ; preds = %61, %2
  %8 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %9 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %10 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %9, i64 4
  %11 = icmp ult %struct.dos_ttystate* %8, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %7
  %13 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %14 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %61

18:                                               ; preds = %12
  %19 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %20 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %21 = ptrtoint %struct.dos_ttystate* %19 to i64
  %22 = ptrtoint %struct.dos_ttystate* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 48
  %25 = add nsw i64 %24, 1
  %26 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %27 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %25, i8* %31)
  %33 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %34 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %37 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %35, i8* %38)
  %40 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %41 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %46 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %45)
  %47 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %48 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %52 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %55 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %58 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %18, %17
  %62 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %63 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %62, i32 1
  store %struct.dos_ttystate* %63, %struct.dos_ttystate** %5, align 8
  br label %7

64:                                               ; preds = %7
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
