; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c___sputc.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c___sputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_data = type { i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*)* @__sputc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sputc(i8 signext %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sp_data*, align 8
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.sp_data*
  store %struct.sp_data* %7, %struct.sp_data** %5, align 8
  %8 = load %struct.sp_data*, %struct.sp_data** %5, align 8
  %9 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.sp_data*, %struct.sp_data** %5, align 8
  %12 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i8, i8* %3, align 1
  %17 = load %struct.sp_data*, %struct.sp_data** %5, align 8
  %18 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.sp_data*, %struct.sp_data** %5, align 8
  %21 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 %16, i8* %24, align 1
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.sp_data*, %struct.sp_data** %5, align 8
  %27 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.sp_data*, %struct.sp_data** %5, align 8
  %30 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 0, i8* %32, align 1
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
