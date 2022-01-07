; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_pg_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_pg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"You did not specify a page to show.\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"You specified an invalid manpath.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"chdir %s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"You specified an invalid manual file.\00", align 1
@FOCUS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.req*, i8*)* @pg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_show(%struct.req* %0, i8* %1) #0 {
  %3 = alloca %struct.req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.req* %0, %struct.req** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 47)
  store i8* %8, i8** %6, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @pg_error_badrequest(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %59

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = call i8* @mandoc_strndup(i8* %13, i32 %19)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load %struct.req*, %struct.req** %3, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @validate_manpath(%struct.req* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %12
  %28 = call i32 @pg_error_badrequest(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @free(i8* %29)
  br label %59

31:                                               ; preds = %12
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @chdir(i8* %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = call i32 (...) @pg_error_internal()
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  br label %59

41:                                               ; preds = %31
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @validate_filename(i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = call i32 @pg_error_badrequest(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %59

49:                                               ; preds = %41
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @resp_begin_html(i32 200, i32* null, i8* %50)
  %52 = load %struct.req*, %struct.req** %3, align 8
  %53 = load i32, i32* @FOCUS_NONE, align 4
  %54 = call i32 @resp_searchform(%struct.req* %52, i32 %53)
  %55 = load %struct.req*, %struct.req** %3, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @resp_show(%struct.req* %55, i8* %56)
  %58 = call i32 (...) @resp_end_html()
  br label %59

59:                                               ; preds = %49, %47, %35, %27, %10
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pg_error_badrequest(i8*) #1

declare dso_local i8* @mandoc_strndup(i8*, i32) #1

declare dso_local i32 @validate_manpath(%struct.req*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @pg_error_internal(...) #1

declare dso_local i32 @validate_filename(i8*) #1

declare dso_local i32 @resp_begin_html(i32, i32*, i8*) #1

declare dso_local i32 @resp_searchform(%struct.req*, i32) #1

declare dso_local i32 @resp_show(%struct.req*, i8*) #1

declare dso_local i32 @resp_end_html(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
