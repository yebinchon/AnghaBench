; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_deleg.c_zfs_deleg_verify_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/common/zfs/extr_zfs_deleg.c_zfs_deleg_verify_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_deleg_verify_nvlist(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @nvlist_next_nvpair(i32* %12, i32* null)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %68

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %62, %17
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @nvpair_name(i32* %19)
  %21 = call i64 @zfs_validate_who(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %68

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @nvpair_name(i32* %26)
  %28 = call i32 @nvlist_lookup_nvlist(i32* %25, i32 %27, i32** %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ENOENT, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %68

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %62

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @nvlist_next_nvpair(i32* %42, i32* null)
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %68

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %56, %47
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @nvpair_name(i32* %49)
  %51 = call i32 @zfs_valid_permission_name(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  br label %68

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = call i32* @nvlist_next_nvpair(i32* %57, i32* %58)
  store i32* %59, i32** %5, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %48, label %61

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i32*, i32** %3, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32* @nvlist_next_nvpair(i32* %63, i32* %64)
  store i32* %65, i32** %4, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %18, label %67

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %54, %46, %35, %23, %16, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @zfs_validate_who(i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @zfs_valid_permission_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
