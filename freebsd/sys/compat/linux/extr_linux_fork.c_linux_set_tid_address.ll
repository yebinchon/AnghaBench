; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_fork.c_linux_set_tid_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_fork.c_linux_set_tid_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.linux_set_tid_address_args = type { i32 }
%struct.linux_emuldata = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"set_tid_address: emuldata not found.\0A\00", align 1
@set_tid_address = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"tidptr(%d) %p, returns %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_set_tid_address(%struct.thread* %0, %struct.linux_set_tid_address_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_set_tid_address_args*, align 8
  %5 = alloca %struct.linux_emuldata*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_set_tid_address_args* %1, %struct.linux_set_tid_address_args** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = call %struct.linux_emuldata* @em_find(%struct.thread* %6)
  store %struct.linux_emuldata* %7, %struct.linux_emuldata** %5, align 8
  %8 = load %struct.linux_emuldata*, %struct.linux_emuldata** %5, align 8
  %9 = icmp ne %struct.linux_emuldata* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.linux_set_tid_address_args*, %struct.linux_set_tid_address_args** %4, align 8
  %13 = getelementptr inbounds %struct.linux_set_tid_address_args, %struct.linux_set_tid_address_args* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.linux_emuldata*, %struct.linux_emuldata** %5, align 8
  %16 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.linux_emuldata*, %struct.linux_emuldata** %5, align 8
  %18 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.thread*, %struct.thread** %3, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @set_tid_address, align 4
  %25 = load %struct.linux_emuldata*, %struct.linux_emuldata** %5, align 8
  %26 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.linux_set_tid_address_args*, %struct.linux_set_tid_address_args** %4, align 8
  %29 = getelementptr inbounds %struct.linux_set_tid_address_args, %struct.linux_set_tid_address_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.thread*, %struct.thread** %3, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LINUX_CTR3(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30, i32 %35)
  ret i32 0
}

declare dso_local %struct.linux_emuldata* @em_find(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LINUX_CTR3(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
