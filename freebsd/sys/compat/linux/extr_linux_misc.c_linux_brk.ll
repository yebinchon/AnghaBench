; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_brk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_misc.c_linux_brk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vmspace* }
%struct.vmspace = type { i64, i32 }
%struct.linux_brk_args = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_brk(%struct.thread* %0, %struct.linux_brk_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.linux_brk_args*, align 8
  %5 = alloca %struct.vmspace*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.linux_brk_args* %1, %struct.linux_brk_args** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.vmspace*, %struct.vmspace** %11, align 8
  store %struct.vmspace* %12, %struct.vmspace** %5, align 8
  %13 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %14 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %17 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ctob(i32 %18)
  %20 = add i64 %15, %19
  store i64 %20, i64* %7, align 8
  %21 = load %struct.linux_brk_args*, %struct.linux_brk_args** %4, align 8
  %22 = getelementptr inbounds %struct.linux_brk_args, %struct.linux_brk_args* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %26 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load %struct.thread*, %struct.thread** %3, align 8
  %31 = call i32 @kern_break(%struct.thread* %30, i64* %6)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* %35, i8** %39, align 8
  br label %47

40:                                               ; preds = %29, %2
  %41 = load i64, i64* %7, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.thread*, %struct.thread** %3, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* %42, i8** %46, align 8
  br label %47

47:                                               ; preds = %40, %33
  ret i32 0
}

declare dso_local i64 @ctob(i32) #1

declare dso_local i32 @kern_break(%struct.thread*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
