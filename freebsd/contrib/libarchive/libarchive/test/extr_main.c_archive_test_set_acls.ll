; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_archive_test_set_acls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_archive_test_set_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_test_acl_t = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"type=%#010x, permset=%#010x, tag=%d, qual=%d name=%s\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_test_set_acls(%struct.archive_entry* %0, %struct.archive_test_acl_t* %1, i32 %2) #0 {
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive_test_acl_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %4, align 8
  store %struct.archive_test_acl_t* %1, %struct.archive_test_acl_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %9 = call i32 @archive_entry_acl_clear(%struct.archive_entry* %8)
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %80, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %10
  %15 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %15, i64 %17
  %19 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %21, i64 %23
  %25 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %27, i64 %29
  %31 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %33, i64 %35
  %37 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %39, i64 %41
  %43 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @failure(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %26, i32 %32, i32 %38, i32 %44)
  %46 = load i32, i32* @ARCHIVE_OK, align 4
  %47 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %48 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %48, i64 %50
  %52 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %54, i64 %56
  %58 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %60, i64 %62
  %64 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %66, i64 %68
  %70 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %72, i64 %74
  %76 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @archive_entry_acl_add_entry(%struct.archive_entry* %47, i32 %53, i32 %59, i32 %65, i32 %71, i32 %77)
  %79 = call i32 @assertEqualInt(i32 %46, i32 %78)
  br label %80

80:                                               ; preds = %14
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %10

83:                                               ; preds = %10
  ret void
}

declare dso_local i32 @archive_entry_acl_clear(%struct.archive_entry*) #1

declare dso_local i32 @failure(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_acl_add_entry(%struct.archive_entry*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
