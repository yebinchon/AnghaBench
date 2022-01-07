; ModuleID = '/home/carl/AnghaBench/freebsd/stand/mips/beri/boot2/extr_boot2.c_boot_fromdram.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/mips/beri/boot2/extr_boot2.c_boot_fromdram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@DRAM_KERNEL_ADDR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"Invalid %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@beri_argc = common dso_local global i32 0, align 4
@beri_argv = common dso_local global i32 0, align 4
@beri_envv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @boot_fromdram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @boot_fromdram() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i8*, i8** @DRAM_KERNEL_ADDR, align 8
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @IS_ELF(i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %22

13:                                               ; preds = %0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load i32, i32* @beri_argc, align 4
  %19 = load i32, i32* @beri_argv, align 4
  %20 = load i32, i32* @beri_envv, align 4
  %21 = call i32 @boot(i8* %17, i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @IS_ELF(i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @boot(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
