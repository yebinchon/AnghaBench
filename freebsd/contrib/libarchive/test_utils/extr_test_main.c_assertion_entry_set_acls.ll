; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_entry_set_acls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_entry_set_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_test_acl_t = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"type=%#010x, \00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"permset=%#010x, tag=%d, qual=%d name=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_entry_set_acls(i8* %0, i32 %1, %struct.archive_entry* %2, %struct.archive_test_acl_t* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca %struct.archive_test_acl_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store %struct.archive_test_acl_t* %3, %struct.archive_test_acl_t** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @assertion_count(i8* %14, i32 %15)
  store i32 0, i32* %13, align 4
  %17 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %18 = call i32 @archive_entry_acl_clear(%struct.archive_entry* %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %94, %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %19
  %24 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %25 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %25, i64 %27
  %29 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %31, i64 %33
  %35 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %37, i64 %39
  %41 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %43, i64 %45
  %47 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %49, i64 %51
  %53 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @archive_entry_acl_add_entry(%struct.archive_entry* %24, i32 %30, i32 %36, i32 %42, i32 %48, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %23
  store i32 1, i32* %13, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %61, i64 %63
  %65 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %67, i64 %69
  %71 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %73, i64 %75
  %77 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %79, i64 %81
  %83 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %85, i64 %87
  %89 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @failure_start(i8* %59, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %72, i32 %78, i32 %84, i32 %90)
  %92 = call i32 @failure_finish(i32* null)
  br label %93

93:                                               ; preds = %58, %23
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %19

97:                                               ; preds = %19
  %98 = load i32, i32* %13, align 4
  ret i32 %98
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32 @archive_entry_acl_clear(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_acl_add_entry(%struct.archive_entry*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @failure_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
