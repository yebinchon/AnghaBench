; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_create_descriptor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_create_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_DUPFD_CLOEXEC = common dso_local global i32 0, align 4
@NV_TYPE_DESCRIPTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvpair_create_descriptor(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %9 = call i32 @fcntl(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* @NV_TYPE_DESCRIPTOR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @nvpair_allocv(i8* %14, i32 %15, i32 %16, i32 4, i32 0)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = call i32 (...) @ERRNO_SAVE()
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @close(i32 %22)
  %24 = call i32 (...) @ERRNO_RESTORE()
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32*, i32** %6, align 8
  store i32* %26, i32** %3, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = load i32*, i32** %3, align 8
  ret i32* %28
}

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32* @nvpair_allocv(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ERRNO_SAVE(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ERRNO_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
