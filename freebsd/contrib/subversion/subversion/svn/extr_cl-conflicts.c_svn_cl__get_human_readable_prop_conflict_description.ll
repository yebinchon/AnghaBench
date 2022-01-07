; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_svn_cl__get_human_readable_prop_conflict_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_cl-conflicts.c_svn_cl__get_human_readable_prop_conflict_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"local edit\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"local add\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"local delete\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"local obstruction\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"local %s\00", align 1
@map_conflict_reason_xml = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"incoming edit\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"incoming add\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"incoming delete\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"incoming %s\00", align 1
@map_conflict_action_xml = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"%s, %s %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_cl__get_human_readable_prop_conflict_description(i8** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @svn_client_conflict_get_local_change(i32* %9)
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 131, label %13
    i32 130, label %15
    i32 128, label %17
  ]

11:                                               ; preds = %3
  %12 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  br label %29

13:                                               ; preds = %3
  %14 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  br label %29

15:                                               ; preds = %3
  %16 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i8* %16, i8** %7, align 8
  br label %29

17:                                               ; preds = %3
  %18 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i8* %18, i8** %7, align 8
  br label %29

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %22 = load i32, i32* @map_conflict_reason_xml, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @svn_client_conflict_get_local_change(i32* %23)
  %25 = call i32 @svn_token__to_word(i32 %22, i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %20, i8* %21, i8* %27)
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %19, %17, %15, %13, %11
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @svn_client_conflict_get_incoming_change(i32* %30)
  switch i32 %31, label %38 [
    i32 132, label %32
    i32 134, label %34
    i32 133, label %36
  ]

32:                                               ; preds = %29
  %33 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i8* %33, i8** %8, align 8
  br label %48

34:                                               ; preds = %29
  %35 = call i8* @_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i8* %35, i8** %8, align 8
  br label %48

36:                                               ; preds = %29
  %37 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  store i8* %37, i8** %8, align 8
  br label %48

38:                                               ; preds = %29
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %41 = load i32, i32* @map_conflict_action_xml, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @svn_client_conflict_get_incoming_change(i32* %42)
  %44 = call i32 @svn_token__to_word(i32 %41, i32 %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %39, i8* %40, i8* %46)
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %38, %36, %34, %32
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ne i8* %52, null
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ false, %48 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @SVN_ERR_ASSERT(i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @svn_client_conflict_get_operation(i32* %62)
  %64 = call i32 @operation_str(i32 %63)
  %65 = call i8* (i32*, i8*, i8*, ...) @apr_psprintf(i32* %58, i8* %59, i8* %60, i8* %61, i32 %64)
  %66 = load i8**, i8*** %4, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %67
}

declare dso_local i32 @svn_client_conflict_get_local_change(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @svn_token__to_word(i32, i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_change(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @operation_str(i32) #1

declare dso_local i32 @svn_client_conflict_get_operation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
