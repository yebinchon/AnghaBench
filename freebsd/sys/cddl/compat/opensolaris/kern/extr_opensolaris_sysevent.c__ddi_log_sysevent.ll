; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_sysevent.c__ddi_log_sysevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_sysevent.c__ddi_log_sysevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDI_SLEEP = common dso_local global i32 0, align 4
@SE_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_ddi_log_sysevent(i8* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @DDI_SLEEP, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @SE_SLEEP, align 4
  %44 = call i32* @sysevent_alloc(i8* %40, i8* %41, i8* %42, i32 %43)
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i32*, i32** %13, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @sysevent_attach_attributes(i32* %49, i32* %50)
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @SE_SLEEP, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @log_sysevent(i32* %52, i32 %53, i32* %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @sysevent_detach_attributes(i32* %56)
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @sysevent_free(i32* %58)
  %60 = load i32, i32* %14, align 4
  ret i32 %60
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @sysevent_alloc(i8*, i8*, i8*, i32) #1

declare dso_local i32 @sysevent_attach_attributes(i32*, i32*) #1

declare dso_local i32 @log_sysevent(i32*, i32, i32*) #1

declare dso_local i32 @sysevent_detach_attributes(i32*) #1

declare dso_local i32 @sysevent_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
