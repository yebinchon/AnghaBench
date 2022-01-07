; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_getelfclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_create.c_getelfclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@ELFCLASSNONE = common dso_local global i32 0, align 4
@ELF_C_READ = common dso_local global i32 0, align 4
@EI_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getelfclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getelfclass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @ELFCLASSNONE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @ELF_C_READ, align 4
  %9 = call i32* @elf_begin(i32 %7, i32 %8, i32* null)
  store i32* %9, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @gelf_getehdr(i32* %13, %struct.TYPE_3__* %3)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @EI_CLASS, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %17, %16, %11
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @elf_end(i32* %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32* @elf_begin(i32, i32, i32*) #1

declare dso_local i32* @gelf_getehdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @elf_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
