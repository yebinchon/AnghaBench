; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_props_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_props_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @props_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @props_reduce(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @nvlist_next_nvpair(i32* %13, i32* null)
  store i32* %14, i32** %5, align 8
  br label %15

15:                                               ; preds = %41, %12
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @nvpair_name(i32* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @nvlist_next_nvpair(i32* %21, i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @nvlist_lookup_nvpair(i32* %24, i8* %25, i32** %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %18
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @propval_equals(i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %18
  br label %41

34:                                               ; preds = %28
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @nvlist_remove_nvpair(i32* %35, i32* %36)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @nvlist_remove_nvpair(i32* %38, i32* %39)
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i32*, i32** %6, align 8
  store i32* %42, i32** %5, align 8
  br label %15

43:                                               ; preds = %11, %15
  ret void
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i8*, i32**) #1

declare dso_local i32 @propval_equals(i32*, i32*) #1

declare dso_local i32 @nvlist_remove_nvpair(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
