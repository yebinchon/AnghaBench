; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_minherit.c_makemap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/sys/extr_t_minherit.c_makemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @makemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @makemap(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @page, align 4
  %7 = load i32, i32* @PROT_READ, align 4
  %8 = load i32, i32* @PROT_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MAP_SHARED, align 4
  %11 = load i32, i32* @MAP_ANON, align 4
  %12 = or i32 %10, %11
  %13 = call i8* @mmap(i32* null, i32 %6, i32 %9, i32 %12, i32 -1, i32 0)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** @MAP_FAILED, align 8
  %16 = icmp ne i8* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ATF_REQUIRE(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @page, align 4
  %22 = call i32 @memset(i8* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 666
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @page, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @minherit(i8* %26, i32 %27, i32 %28)
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ATF_REQUIRE(i32 %31)
  br label %41

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @page, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @minherit(i8* %34, i32 %35, i32 %36)
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i32 @ATF_REQUIRE(i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @minherit(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
