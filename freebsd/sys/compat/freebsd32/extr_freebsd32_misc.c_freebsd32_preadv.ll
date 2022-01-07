; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_preadv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_preadv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_preadv_args = type { i32, i32, i32, i32 }
%struct.uio = type { i32 }

@off_t = common dso_local global i32 0, align 4
@M_IOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_preadv(%struct.thread* %0, %struct.freebsd32_preadv_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_preadv_args*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_preadv_args* %1, %struct.freebsd32_preadv_args** %5, align 8
  %8 = load %struct.freebsd32_preadv_args*, %struct.freebsd32_preadv_args** %5, align 8
  %9 = getelementptr inbounds %struct.freebsd32_preadv_args, %struct.freebsd32_preadv_args* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.freebsd32_preadv_args*, %struct.freebsd32_preadv_args** %5, align 8
  %12 = getelementptr inbounds %struct.freebsd32_preadv_args, %struct.freebsd32_preadv_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @freebsd32_copyinuio(i32 %10, i32 %13, %struct.uio** %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.thread*, %struct.thread** %4, align 8
  %21 = load %struct.freebsd32_preadv_args*, %struct.freebsd32_preadv_args** %5, align 8
  %22 = getelementptr inbounds %struct.freebsd32_preadv_args, %struct.freebsd32_preadv_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.uio*, %struct.uio** %6, align 8
  %25 = load i32, i32* @off_t, align 4
  %26 = load %struct.freebsd32_preadv_args*, %struct.freebsd32_preadv_args** %5, align 8
  %27 = getelementptr inbounds %struct.freebsd32_preadv_args, %struct.freebsd32_preadv_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PAIR32TO64(i32 %25, i32 %28)
  %30 = call i32 @kern_preadv(%struct.thread* %20, i32 %23, %struct.uio* %24, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.uio*, %struct.uio** %6, align 8
  %32 = load i32, i32* @M_IOV, align 4
  %33 = call i32 @free(%struct.uio* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %19, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @freebsd32_copyinuio(i32, i32, %struct.uio**) #1

declare dso_local i32 @kern_preadv(%struct.thread*, i32, %struct.uio*, i32) #1

declare dso_local i32 @PAIR32TO64(i32, i32) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
