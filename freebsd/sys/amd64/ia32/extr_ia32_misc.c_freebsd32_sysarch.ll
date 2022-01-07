; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_misc.c_freebsd32_sysarch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_misc.c_freebsd32_sysarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_sysarch_args = type { i64, i8* }
%struct.sysarch_args = type { i64, i8* }
%struct.i386_ldt_args = type { i32, %struct.user_segment_descriptor*, i32 }
%struct.user_segment_descriptor = type { i32 }
%struct.i386_ldt_args32 = type { i32, i64, i32 }

@I386_SET_LDT = common dso_local global i64 0, align 8
@I386_GET_LDT = common dso_local global i64 0, align 8
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_sysarch(%struct.thread* %0, %struct.freebsd32_sysarch_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_sysarch_args*, align 8
  %6 = alloca %struct.sysarch_args, align 8
  %7 = alloca %struct.i386_ldt_args, align 8
  %8 = alloca %struct.i386_ldt_args32, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_sysarch_args* %1, %struct.freebsd32_sysarch_args** %5, align 8
  %10 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %11 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I386_SET_LDT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %17 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @I386_GET_LDT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %15, %2
  %22 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %23 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @copyin(i8* %24, %struct.i386_ldt_args32* %8, i32 24)
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %60

29:                                               ; preds = %21
  %30 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %31 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.sysarch_args, %struct.sysarch_args* %6, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = bitcast %struct.i386_ldt_args* %7 to i8*
  %35 = getelementptr inbounds %struct.sysarch_args, %struct.sysarch_args* %6, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.i386_ldt_args32, %struct.i386_ldt_args32* %8, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.i386_ldt_args32, %struct.i386_ldt_args32* %8, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.user_segment_descriptor*
  %42 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 1
  store %struct.user_segment_descriptor* %41, %struct.user_segment_descriptor** %42, align 8
  %43 = getelementptr inbounds %struct.i386_ldt_args32, %struct.i386_ldt_args32* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.i386_ldt_args, %struct.i386_ldt_args* %7, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = load i32, i32* @UIO_SYSSPACE, align 4
  %48 = call i32 @sysarch_ldt(%struct.thread* %46, %struct.sysarch_args* %6, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %60

49:                                               ; preds = %15
  %50 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %51 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sysarch_args, %struct.sysarch_args* %6, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = load %struct.freebsd32_sysarch_args*, %struct.freebsd32_sysarch_args** %5, align 8
  %55 = getelementptr inbounds %struct.freebsd32_sysarch_args, %struct.freebsd32_sysarch_args* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.sysarch_args, %struct.sysarch_args* %6, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load %struct.thread*, %struct.thread** %4, align 8
  %59 = call i32 @sysarch(%struct.thread* %58, %struct.sysarch_args* %6)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %49, %29, %27
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @copyin(i8*, %struct.i386_ldt_args32*, i32) #1

declare dso_local i32 @sysarch_ldt(%struct.thread*, %struct.sysarch_args*, i32) #1

declare dso_local i32 @sysarch(%struct.thread*, %struct.sysarch_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
