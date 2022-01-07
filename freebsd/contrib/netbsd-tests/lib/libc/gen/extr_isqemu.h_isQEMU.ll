; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_isqemu.h_isQEMU.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_isqemu.h_isQEMU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"machdep.cpu_brand\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"QEMU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @isQEMU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isQEMU() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1024 x i8], align 16
  %3 = alloca i64, align 8
  store i64 1024, i64* %3, align 8
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %5 = call i32 @sysctlbyname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %4, i64* %3, i32* null, i32 0)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i64, i64* @errno, align 8
  %9 = load i64, i64* @ENOENT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %20

12:                                               ; preds = %7
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  %14 = call i32 @err(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %0
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %17 = call i32* @strstr(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
