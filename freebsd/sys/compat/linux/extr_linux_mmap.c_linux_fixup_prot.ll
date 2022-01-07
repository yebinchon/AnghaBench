; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mmap.c_linux_fixup_prot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_mmap.c_linux_fixup_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_pemuldata = type { i32 }

@SV_ILP32 = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@LINUX_READ_IMPLIES_EXEC = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32*)* @linux_fixup_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_fixup_prot(%struct.thread* %0, i32* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.linux_pemuldata*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SV_ILP32, align 4
  %10 = call i64 @SV_PROC_FLAG(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PROT_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.thread*, %struct.thread** %3, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.linux_pemuldata* @pem_find(i32 %21)
  store %struct.linux_pemuldata* %22, %struct.linux_pemuldata** %5, align 8
  %23 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %5, align 8
  %24 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LINUX_READ_IMPLIES_EXEC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i32, i32* @PROT_EXEC, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %18
  br label %35

35:                                               ; preds = %34, %12, %2
  ret void
}

declare dso_local i64 @SV_PROC_FLAG(i32, i32) #1

declare dso_local %struct.linux_pemuldata* @pem_find(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
