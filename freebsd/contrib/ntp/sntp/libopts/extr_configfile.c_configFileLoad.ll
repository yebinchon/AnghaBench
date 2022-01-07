; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_configFileLoad.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_configfile.c_configFileLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@option_load_mode = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@OPTION_LOAD_COOKED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @configFileLoad(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32, i32* @option_load_mode, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @PROT_READ, align 4
  %12 = load i32, i32* @MAP_PRIVATE, align 4
  %13 = call i8* @text_mmap(i8* %10, i32 %11, i32 %12, i32* %4)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @TEXT_MMAP_FAILED_ADDR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* @OPTION_LOAD_COOKED, align 4
  store i32 %19, i32* @option_load_mode, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = call i32* @optionLoadNested(i8* %20, i8* %21, i32 %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %8, align 4
  %29 = call i32 @text_munmap(i32* %4)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* @errno, align 4
  br label %33

31:                                               ; preds = %18
  %32 = call i32 @text_munmap(i32* %4)
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* @option_load_mode, align 4
  %35 = load i32*, i32** %5, align 8
  store i32* %35, i32** %2, align 8
  br label %36

36:                                               ; preds = %33, %17
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i8* @text_mmap(i8*, i32, i32, i32*) #1

declare dso_local i64 @TEXT_MMAP_FAILED_ADDR(i8*) #1

declare dso_local i32* @optionLoadNested(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @text_munmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
