; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_archive_test_acl_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_archive_test_acl_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_test_acl_t = type { i32, i32, i32, i32, i8* }

@ARCHIVE_ENTRY_ACL_USER_OBJ = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_EVERYONE = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_test_acl_t*, i32, i32, i32, i32, i8*)* @archive_test_acl_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_test_acl_match(%struct.archive_test_acl_t* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_test_acl_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.archive_test_acl_t* %0, %struct.archive_test_acl_t** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %8, align 8
  %16 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %100

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %8, align 8
  %23 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %100

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %8, align 8
  %30 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %100

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER_OBJ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %100

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP_OBJ, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %100

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @ARCHIVE_ENTRY_ACL_EVERYONE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  br label %100

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @ARCHIVE_ENTRY_ACL_OTHER, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %100

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %8, align 8
  %57 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %100

61:                                               ; preds = %54
  %62 = load i8*, i8** %13, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %8, align 8
  %66 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %8, align 8
  %71 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69, %64
  store i32 1, i32* %7, align 4
  br label %100

78:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %100

79:                                               ; preds = %61
  %80 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %8, align 8
  %81 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i8*, i8** %13, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %7, align 4
  br label %100

91:                                               ; preds = %84
  store i32 0, i32* %7, align 4
  br label %100

92:                                               ; preds = %79
  %93 = load i8*, i8** %13, align 8
  %94 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %8, align 8
  %95 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strcmp(i8* %93, i8* %96)
  %98 = icmp eq i64 0, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %92, %91, %90, %78, %77, %60, %53, %48, %43, %38, %33, %26, %19
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
