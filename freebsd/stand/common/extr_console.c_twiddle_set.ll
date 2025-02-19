; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_twiddle_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_console.c_twiddle_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_var = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid twiddle_divisor '%s'\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@EV_NOHOOK = common dso_local global i32 0, align 4
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.env_var*, i32, i8*)* @twiddle_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twiddle_set(%struct.env_var* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.env_var*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.env_var* %0, %struct.env_var** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strtoul(i8* %10, i8** %9, i32 0)
  store i64 %11, i64* %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %9, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @CMD_ERROR, align 4
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @twiddle_divisor(i32 %27)
  %29 = load %struct.env_var*, %struct.env_var** %5, align 8
  %30 = getelementptr inbounds %struct.env_var, %struct.env_var* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @EV_NOHOOK, align 4
  %34 = or i32 %32, %33
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @env_setenv(i32 %31, i32 %34, i8* %35, i32* null, i32* null)
  %37 = load i32, i32* @CMD_OK, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %25, %21
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @twiddle_divisor(i32) #1

declare dso_local i32 @env_setenv(i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
