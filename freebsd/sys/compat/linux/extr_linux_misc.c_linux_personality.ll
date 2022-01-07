; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_personality.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_personality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.proc* }
%struct.proc = type { i32 }
%struct.linux_personality_args = type { i32 }
%struct.linux_pemuldata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_personality(%struct.thread* %0, %struct.linux_personality_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_personality_args*, align 8
  %5 = alloca %struct.linux_pemuldata*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_personality_args* %1, %struct.linux_personality_args** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %6, align 8
  %11 = load %struct.proc*, %struct.proc** %6, align 8
  %12 = call i32 @PROC_LOCK(%struct.proc* %11)
  %13 = load %struct.proc*, %struct.proc** %6, align 8
  %14 = call %struct.linux_pemuldata* @pem_find(%struct.proc* %13)
  store %struct.linux_pemuldata* %14, %struct.linux_pemuldata** %5, align 8
  %15 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %5, align 8
  %16 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.linux_personality_args*, %struct.linux_personality_args** %4, align 8
  %19 = getelementptr inbounds %struct.linux_personality_args, %struct.linux_personality_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.linux_personality_args*, %struct.linux_personality_args** %4, align 8
  %24 = getelementptr inbounds %struct.linux_personality_args, %struct.linux_personality_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.linux_pemuldata*, %struct.linux_pemuldata** %5, align 8
  %27 = getelementptr inbounds %struct.linux_pemuldata, %struct.linux_pemuldata* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.proc*, %struct.proc** %6, align 8
  %30 = call i32 @PROC_UNLOCK(%struct.proc* %29)
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  ret i32 0
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.linux_pemuldata* @pem_find(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
