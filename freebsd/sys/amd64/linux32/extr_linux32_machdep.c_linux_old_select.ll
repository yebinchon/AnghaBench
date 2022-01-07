; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_old_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_machdep.c_linux_old_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.linux_old_select_args = type { i32 }
%struct.l_old_select_argv = type { i32, i32, i32, i32, i32 }
%struct.linux_select_args = type { i8*, i8*, i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_old_select(%struct.thread* %0, %struct.linux_old_select_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.linux_old_select_args*, align 8
  %6 = alloca %struct.l_old_select_argv, align 4
  %7 = alloca %struct.linux_select_args, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.linux_old_select_args* %1, %struct.linux_old_select_args** %5, align 8
  %9 = load %struct.linux_old_select_args*, %struct.linux_old_select_args** %5, align 8
  %10 = getelementptr inbounds %struct.linux_old_select_args, %struct.linux_old_select_args* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @copyin(i32 %11, %struct.l_old_select_argv* %6, i32 20)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.l_old_select_argv, %struct.l_old_select_argv* %6, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.linux_select_args, %struct.linux_select_args* %7, i32 0, i32 4
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.l_old_select_argv, %struct.l_old_select_argv* %6, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @PTRIN(i32 %22)
  %24 = getelementptr inbounds %struct.linux_select_args, %struct.linux_select_args* %7, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.l_old_select_argv, %struct.l_old_select_argv* %6, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @PTRIN(i32 %26)
  %28 = getelementptr inbounds %struct.linux_select_args, %struct.linux_select_args* %7, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.l_old_select_argv, %struct.l_old_select_argv* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @PTRIN(i32 %30)
  %32 = getelementptr inbounds %struct.linux_select_args, %struct.linux_select_args* %7, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.l_old_select_argv, %struct.l_old_select_argv* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @PTRIN(i32 %34)
  %36 = getelementptr inbounds %struct.linux_select_args, %struct.linux_select_args* %7, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = call i32 @linux_select(%struct.thread* %37, %struct.linux_select_args* %7)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %17, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @copyin(i32, %struct.l_old_select_argv*, i32) #1

declare dso_local i8* @PTRIN(i32) #1

declare dso_local i32 @linux_select(%struct.thread*, %struct.linux_select_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
