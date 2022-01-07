; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_symlinks_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/savecore/extr_savecore.c_symlinks_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"info.last\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"key.last\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"vmcore.last\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"vmcore.last.gz\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"vmcore.last.zst\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"vmcore_encrypted.last\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"vmcore_encrypted.last.gz\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"textdump.tar.last\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"textdump.tar.last.gz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @symlinks_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symlinks_remove(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @unlinkat(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @unlinkat(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @unlinkat(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @unlinkat(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @unlinkat(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @unlinkat(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @unlinkat(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @unlinkat(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @unlinkat(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @unlinkat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
