; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_mmap_args = type { i32, i32, i32, i32, i32, i64 }

@i386_read_exec = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@off_t = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_mmap(%struct.thread* %0, %struct.freebsd32_mmap_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.freebsd32_mmap_args*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.freebsd32_mmap_args* %1, %struct.freebsd32_mmap_args** %4, align 8
  %6 = load %struct.freebsd32_mmap_args*, %struct.freebsd32_mmap_args** %4, align 8
  %7 = getelementptr inbounds %struct.freebsd32_mmap_args, %struct.freebsd32_mmap_args* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i64, i64* @i386_read_exec, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PROT_READ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @PROT_EXEC, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %11, %2
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = load %struct.freebsd32_mmap_args*, %struct.freebsd32_mmap_args** %4, align 8
  %23 = getelementptr inbounds %struct.freebsd32_mmap_args, %struct.freebsd32_mmap_args* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.freebsd32_mmap_args*, %struct.freebsd32_mmap_args** %4, align 8
  %26 = getelementptr inbounds %struct.freebsd32_mmap_args, %struct.freebsd32_mmap_args* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.freebsd32_mmap_args*, %struct.freebsd32_mmap_args** %4, align 8
  %30 = getelementptr inbounds %struct.freebsd32_mmap_args, %struct.freebsd32_mmap_args* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.freebsd32_mmap_args*, %struct.freebsd32_mmap_args** %4, align 8
  %33 = getelementptr inbounds %struct.freebsd32_mmap_args, %struct.freebsd32_mmap_args* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @off_t, align 4
  %36 = load %struct.freebsd32_mmap_args*, %struct.freebsd32_mmap_args** %4, align 8
  %37 = getelementptr inbounds %struct.freebsd32_mmap_args, %struct.freebsd32_mmap_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PAIR32TO64(i32 %35, i32 %38)
  %40 = call i32 @kern_mmap(%struct.thread* %21, i64 %24, i32 %27, i32 %28, i32 %31, i32 %34, i32 %39)
  ret i32 %40
}

declare dso_local i32 @kern_mmap(%struct.thread*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PAIR32TO64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
