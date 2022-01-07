; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_recvfrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_recvfrom_args = type { i64, i32, i32, i32, i64, i64 }
%struct.msghdr = type { i32, i64, i32, i32*, %struct.iovec*, i8* }
%struct.iovec = type { i32, i8* }

@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_recvfrom(%struct.thread* %0, %struct.freebsd32_recvfrom_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_recvfrom_args*, align 8
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.iovec, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_recvfrom_args* %1, %struct.freebsd32_recvfrom_args** %5, align 8
  %9 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %10 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %15 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @PTRIN(i64 %16)
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  %19 = call i32 @copyin(i8* %17, i64* %18, i32 8)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %13
  br label %27

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %29 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @PTRIN(i64 %30)
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 4
  store %struct.iovec* %7, %struct.iovec** %33, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %36 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @PTRIN(i64 %37)
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %41 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %46 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %51 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @UIO_USERSPACE, align 4
  %54 = call i32 @kern_recvit(%struct.thread* %49, i32 %52, %struct.msghdr* %6, i32 %53, i32* null)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %27
  %58 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %59 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  %64 = load %struct.freebsd32_recvfrom_args*, %struct.freebsd32_recvfrom_args** %5, align 8
  %65 = getelementptr inbounds %struct.freebsd32_recvfrom_args, %struct.freebsd32_recvfrom_args* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @PTRIN(i64 %66)
  %68 = call i32 @copyout(i64* %63, i8* %67, i32 8)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %62, %57, %27
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @copyin(i8*, i64*, i32) #1

declare dso_local i8* @PTRIN(i64) #1

declare dso_local i32 @kern_recvit(%struct.thread*, i32, %struct.msghdr*, i32, i32*) #1

declare dso_local i32 @copyout(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
