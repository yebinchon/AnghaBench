; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_prison_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mib.c_linux_prison_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prison = type { i32 }
%struct.vfsoptlist = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@JAIL_SYS_INHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @linux_prison_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_prison_create(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.prison*, align 8
  %7 = alloca %struct.vfsoptlist*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.prison*
  store %struct.prison* %10, %struct.prison** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.vfsoptlist*
  store %struct.vfsoptlist* %12, %struct.vfsoptlist** %7, align 8
  %13 = load %struct.vfsoptlist*, %struct.vfsoptlist** %7, align 8
  %14 = call i64 @vfs_copyopt(%struct.vfsoptlist* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8, i32 4)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @JAIL_SYS_INHERIT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %24

21:                                               ; preds = %16, %2
  %22 = load %struct.prison*, %struct.prison** %6, align 8
  %23 = call i32 @linux_alloc_prison(%struct.prison* %22, i32* null)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @vfs_copyopt(%struct.vfsoptlist*, i8*, i32*, i32) #1

declare dso_local i32 @linux_alloc_prison(%struct.prison*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
