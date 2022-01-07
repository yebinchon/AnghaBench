; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c__rtld_addr_phdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c__rtld_addr_phdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dl_phdr_info = type { i32 }

@rtld_bind_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No shared object contains address\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rtld_addr_phdr(i8* %0, %struct.dl_phdr_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dl_phdr_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dl_phdr_info* %1, %struct.dl_phdr_info** %5, align 8
  %8 = load i32, i32* @rtld_bind_lock, align 4
  %9 = call i32 @rlock_acquire(i32 %8, i32* %7)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @obj_from_addr(i8* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 @_rtld_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @rtld_bind_lock, align 4
  %17 = call i32 @lock_release(i32 %16, i32* %7)
  store i32 0, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.dl_phdr_info*, %struct.dl_phdr_info** %5, align 8
  %21 = call i32 @rtld_fill_dl_phdr_info(i32* %19, %struct.dl_phdr_info* %20)
  %22 = load i32, i32* @rtld_bind_lock, align 4
  %23 = call i32 @lock_release(i32 %22, i32* %7)
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @rlock_acquire(i32, i32*) #1

declare dso_local i32* @obj_from_addr(i8*) #1

declare dso_local i32 @_rtld_error(i8*) #1

declare dso_local i32 @lock_release(i32, i32*) #1

declare dso_local i32 @rtld_fill_dl_phdr_info(i32*, %struct.dl_phdr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
