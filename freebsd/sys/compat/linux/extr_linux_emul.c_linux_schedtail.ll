; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_linux_schedtail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_emul.c_linux_schedtail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { i32 }
%struct.linux_emuldata = type { i32*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"linux_schedtail: thread emuldata not found.\0A\00", align 1
@schedtail = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"thread(%d) %p stored %d error %d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"thread(%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_schedtail(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.linux_emuldata*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 1
  %9 = load %struct.proc*, %struct.proc** %8, align 8
  store %struct.proc* %9, %struct.proc** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %2, align 8
  %11 = call %struct.linux_emuldata* @em_find(%struct.thread* %10)
  store %struct.linux_emuldata* %11, %struct.linux_emuldata** %3, align 8
  %12 = load %struct.linux_emuldata*, %struct.linux_emuldata** %3, align 8
  %13 = icmp ne %struct.linux_emuldata* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.linux_emuldata*, %struct.linux_emuldata** %3, align 8
  %17 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load %struct.linux_emuldata*, %struct.linux_emuldata** %3, align 8
  %23 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %22, i32 0, i32 1
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @copyout(i32* %23, i32* %24, i32 4)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @schedtail, align 4
  %27 = load %struct.thread*, %struct.thread** %2, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.linux_emuldata*, %struct.linux_emuldata** %3, align 8
  %32 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @LINUX_CTR4(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32* %30, i32 %33, i32 %34)
  br label %42

36:                                               ; preds = %1
  %37 = load i32, i32* @schedtail, align 4
  %38 = load %struct.linux_emuldata*, %struct.linux_emuldata** %3, align 8
  %39 = getelementptr inbounds %struct.linux_emuldata, %struct.linux_emuldata* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @LINUX_CTR1(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %21
  ret void
}

declare dso_local %struct.linux_emuldata* @em_find(%struct.thread*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

declare dso_local i32 @LINUX_CTR4(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @LINUX_CTR1(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
