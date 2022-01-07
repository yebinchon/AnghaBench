; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm.c__kvm_read_kernel_ehdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm.c__kvm_read_kernel_ehdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32* }

@EV_CURRENT = common dso_local global i32 0, align 4
@EV_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Unsupported libelf\00", align 1
@ELF_C_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ELF_K_ELF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"kernel is not an ELF file\00", align 1
@EI_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"unsupported ELF data encoding for kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @_kvm_read_kernel_ehdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_kvm_read_kernel_ehdr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load i32, i32* @EV_CURRENT, align 4
  %6 = call i64 @elf_version(i32 %5)
  %7 = load i64, i64* @EV_NONE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %10, i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ELF_C_READ, align 4
  %20 = call i32* @elf_begin(i32 %18, i32 %19, i32* null)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @elf_errmsg(i32 0)
  %29 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %24, i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %2, align 4
  br label %73

30:                                               ; preds = %15
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @elf_kind(i32* %31)
  %33 = load i64, i64* @ELF_K_ELF, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %36, i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

41:                                               ; preds = %30
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i32* @gelf_getehdr(i32* %42, %struct.TYPE_6__* %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @elf_errmsg(i32 0)
  %53 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %48, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @elf_end(i32* %54)
  store i32 -1, i32* %2, align 4
  br label %73

56:                                               ; preds = %41
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @elf_end(i32* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @EI_DATA, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %67 [
    i32 129, label %66
    i32 128, label %66
  ]

66:                                               ; preds = %56, %56
  store i32 0, i32* %2, align 4
  br label %73

67:                                               ; preds = %56
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_5__* %68, i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

73:                                               ; preds = %67, %66, %47, %35, %23, %9
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @elf_version(i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_5__*, i32, i8*, ...) #1

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i64 @elf_kind(i32*) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
