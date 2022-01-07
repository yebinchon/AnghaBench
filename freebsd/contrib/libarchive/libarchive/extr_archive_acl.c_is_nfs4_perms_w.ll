; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_is_nfs4_perms_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_is_nfs4_perms_w.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @is_nfs4_perms_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_nfs4_perms_w(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** %8, align 8
  br label %10

10:                                               ; preds = %90, %3
  %11 = load i32*, i32** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ult i32* %11, %12
  br i1 %13, label %14, label %91

14:                                               ; preds = %10
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* %15, align 4
  switch i32 %17, label %89 [
    i32 114, label %18
    i32 119, label %23
    i32 120, label %28
    i32 112, label %33
    i32 68, label %38
    i32 100, label %43
    i32 97, label %48
    i32 65, label %53
    i32 82, label %58
    i32 87, label %63
    i32 99, label %68
    i32 67, label %73
    i32 111, label %78
    i32 115, label %83
    i32 45, label %88
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ_DATA, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  br label %90

23:                                               ; preds = %14
  %24 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_DATA, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %90

28:                                               ; preds = %14
  %29 = load i32, i32* @ARCHIVE_ENTRY_ACL_EXECUTE, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %90

33:                                               ; preds = %14
  %34 = load i32, i32* @ARCHIVE_ENTRY_ACL_APPEND_DATA, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %90

38:                                               ; preds = %14
  %39 = load i32, i32* @ARCHIVE_ENTRY_ACL_DELETE_CHILD, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %90

43:                                               ; preds = %14
  %44 = load i32, i32* @ARCHIVE_ENTRY_ACL_DELETE, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %90

48:                                               ; preds = %14
  %49 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ_ATTRIBUTES, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %90

53:                                               ; preds = %14
  %54 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_ATTRIBUTES, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %90

58:                                               ; preds = %14
  %59 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ_NAMED_ATTRS, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %90

63:                                               ; preds = %14
  %64 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_NAMED_ATTRS, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %90

68:                                               ; preds = %14
  %69 = load i32, i32* @ARCHIVE_ENTRY_ACL_READ_ACL, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %90

73:                                               ; preds = %14
  %74 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_ACL, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %90

78:                                               ; preds = %14
  %79 = load i32, i32* @ARCHIVE_ENTRY_ACL_WRITE_OWNER, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %90

83:                                               ; preds = %14
  %84 = load i32, i32* @ARCHIVE_ENTRY_ACL_SYNCHRONIZE, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %90

88:                                               ; preds = %14
  br label %90

89:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %92

90:                                               ; preds = %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18
  br label %10

91:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %89
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
