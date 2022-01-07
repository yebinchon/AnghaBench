; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text_nfs4.c_parse_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_from_text_nfs4.c_parse_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"owner@\00", align 1
@ACL_USER_OBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"group@\00", align 1
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"everyone@\00", align 1
@ACL_EVERYONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@ACL_USER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@ACL_GROUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"malformed ACL: invalid \22tag\22 field\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @parse_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tag(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ACL_USER_OBJ, align 4
  %19 = call i32 @acl_set_tag_type(i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %27 = call i32 @acl_set_tag_type(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ACL_EVERYONE, align 4
  %35 = call i32 @acl_set_tag_type(i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  store i32 1, i32* %37, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ACL_USER, align 4
  %48 = call i32 @acl_set_tag_type(i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %41
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ACL_GROUP, align 4
  %60 = call i32 @acl_set_tag_type(i32 %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %53
  %62 = call i32 @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %57, %45, %32, %24, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @acl_set_tag_type(i32, i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
