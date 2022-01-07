; ModuleID = '/home/carl/AnghaBench/freebsd/stand/sparc64/boot1/extr_boot1.c_vsnprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/sparc64/boot1/extr_boot1.c_vsnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_data = type { i8*, i64, i64 }

@__sputc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i32)* @vsnprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsnprintf(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sp_data, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %9, i32 0, i32 0
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %9, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.sp_data, %struct.sp_data* %9, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @__sputc, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @__printf(i8* %16, i32 %17, %struct.sp_data* %9, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  ret i32 %20
}

declare dso_local i32 @__printf(i8*, i32, %struct.sp_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
