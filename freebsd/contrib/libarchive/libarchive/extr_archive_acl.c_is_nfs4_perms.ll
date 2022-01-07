; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_is_nfs4_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_is_nfs4_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCHIVE_ENTRY_ACL_READ_DATA = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_WRITE_DATA = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_EXECUTE = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_APPEND_DATA = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_DELETE_CHILD = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_DELETE = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_READ_ACL = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_WRITE_ACL = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_WRITE_OWNER = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_SYNCHRONIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @is_nfs4_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_nfs4_perms(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  br label %10

10:                                               ; preds = %91, %3
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ult i8* %11, %12
  br i1 %13, label %14, label %92

14:                                               ; preds = %10
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %8, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %90 [
    i32 114, label %19
    i32 119, label %24
    i32 120, label %29
    i32 112, label %34
    i32 68, label %39
    i32 100, label %44
    i32 97, label %49
    i32 65, label %54
    i32 82, label %59
    i32 87, label %64
    i32 99, label %69
    i32 67, label %74
    i32 111, label %79
    i32 115, label %84
    i32 45, label %89
  ]

19:                                               ; preds = %14
  %20 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ_DATA, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %91

24:                                               ; preds = %14
  %25 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_DATA, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %91

29:                                               ; preds = %14
  %30 = load i32, i32* @ARCHIVE_ENTRY_ACL_EXECUTE, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %91

34:                                               ; preds = %14
  %35 = load i32, i32* @ARCHIVE_ENTRY_ACL_APPEND_DATA, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %91

39:                                               ; preds = %14
  %40 = load i32, i32* @ARCHIVE_ENTRY_ACL_DELETE_CHILD, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %91

44:                                               ; preds = %14
  %45 = load i32, i32* @ARCHIVE_ENTRY_ACL_DELETE, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %91

49:                                               ; preds = %14
  %50 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ_ATTRIBUTES, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %91

54:                                               ; preds = %14
  %55 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_ATTRIBUTES, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %91

59:                                               ; preds = %14
  %60 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ_NAMED_ATTRS, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %91

64:                                               ; preds = %14
  %65 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_NAMED_ATTRS, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %91

69:                                               ; preds = %14
  %70 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ_ACL, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %91

74:                                               ; preds = %14
  %75 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_ACL, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %91

79:                                               ; preds = %14
  %80 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_OWNER, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %91

84:                                               ; preds = %14
  %85 = load i32, i32* @ARCHIVE_ENTRY_ACL_SYNCHRONIZE, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 4
  br label %91

89:                                               ; preds = %14
  br label %91

90:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %93

91:                                               ; preds = %89, %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %29, %24, %19
  br label %10

92:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %90
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
