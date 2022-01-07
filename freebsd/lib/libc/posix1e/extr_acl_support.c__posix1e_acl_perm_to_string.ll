; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__posix1e_acl_perm_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_support.c__posix1e_acl_perm_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_POSIX1E_ACL_STRING_PERM_MAXSIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ACL_PERM_BITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACL_READ = common dso_local global i32 0, align 4
@ACL_STRING_PERM_READ = common dso_local global i8 0, align 1
@ACL_STRING_PERM_NONE = common dso_local global i8 0, align 1
@ACL_WRITE = common dso_local global i32 0, align 4
@ACL_STRING_PERM_WRITE = common dso_local global i8 0, align 1
@ACL_EXECUTE = common dso_local global i32 0, align 4
@ACL_STRING_PERM_EXEC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_posix1e_acl_perm_to_string(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 8
  %10 = add nsw i64 %9, 1
  %11 = icmp slt i64 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %64

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ACL_PERM_BITS, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ACL_PERM_BITS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %64

22:                                               ; preds = %14
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  store i8 0, i8* %24, align 1
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ACL_READ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i8, i8* @ACL_STRING_PERM_READ, align 1
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 %30, i8* %32, align 1
  br label %37

33:                                               ; preds = %22
  %34 = load i8, i8* @ACL_STRING_PERM_NONE, align 1
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 %34, i8* %36, align 1
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ACL_WRITE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8, i8* @ACL_STRING_PERM_WRITE, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 %43, i8* %45, align 1
  br label %50

46:                                               ; preds = %37
  %47 = load i8, i8* @ACL_STRING_PERM_NONE, align 1
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %47, i8* %49, align 1
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ACL_EXECUTE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8, i8* @ACL_STRING_PERM_EXEC, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 %56, i8* %58, align 1
  br label %63

59:                                               ; preds = %50
  %60 = load i8, i8* @ACL_STRING_PERM_NONE, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  store i8 %60, i8* %62, align 1
  br label %63

63:                                               ; preds = %59, %55
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %20, %12
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
