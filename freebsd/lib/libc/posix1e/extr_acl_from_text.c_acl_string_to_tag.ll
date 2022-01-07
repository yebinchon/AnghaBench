; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text.c_acl_string_to_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text.c_acl_string_to_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@ACL_USER_OBJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@ACL_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@ACL_OTHER = common dso_local global i32 0, align 4
@ACL_USER = common dso_local global i32 0, align 4
@ACL_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @acl_string_to_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_string_to_tag(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @ACL_USER_OBJ, align 4
  store i32 %19, i32* %3, align 4
  br label %72

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @ACL_GROUP_OBJ, align 4
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @ACL_MASK, align 4
  store i32 %39, i32* %3, align 4
  br label %72

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @ACL_OTHER, align 4
  store i32 %49, i32* %3, align 4
  br label %72

50:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %72

51:                                               ; preds = %2
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* @ACL_USER, align 4
  store i32 %60, i32* %3, align 4
  br label %72

61:                                               ; preds = %55
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @ACL_GROUP, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %59, %50, %48, %38, %28, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
