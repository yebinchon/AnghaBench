; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_checksum.c_validate_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_checksum.c_validate_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_checksum_md5 = common dso_local global i64 0, align 8
@svn_checksum_fnv1a_32x4 = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_BAD_CHECKSUM_KIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @validate_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @validate_kind(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @svn_checksum_md5, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @svn_checksum_fnv1a_32x4, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %12, i32** %2, align 8
  br label %16

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @SVN_ERR_BAD_CHECKSUM_KIND, align 4
  %15 = call i32* @svn_error_create(i32 %14, i32* null, i32* null)
  store i32* %15, i32** %2, align 8
  br label %16

16:                                               ; preds = %13, %11
  %17 = load i32*, i32** %2, align 8
  ret i32* %17
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
