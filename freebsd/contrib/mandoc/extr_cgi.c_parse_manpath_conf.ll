; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_parse_manpath_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_cgi.c_parse_manpath_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req = type { i8**, i32 }

@.str = private unnamed_addr constant [13 x i8] c"manpath.conf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s/manpath.conf\00", align 1
@MAN_DIR = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"%s/manpath.conf contains unsafe path \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s/manpath.conf contains path with slash \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s/manpath.conf is empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.req*)* @parse_manpath_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_manpath_conf(%struct.req* %0) #0 {
  %2 = alloca %struct.req*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.req* %0, %struct.req** %2, align 8
  %7 = call i32* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @MAN_DIR, align 4
  %11 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = call i32 (...) @pg_error_internal()
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  %14 = call i32 @exit(i32 %13) #3
  unreachable

15:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %70, %15
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @getline(i8** %4, i64* %5, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %81

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %29, %20
  %36 = load %struct.req*, %struct.req** %2, align 8
  %37 = getelementptr inbounds %struct.req, %struct.req* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.req*, %struct.req** %2, align 8
  %40 = getelementptr inbounds %struct.req, %struct.req* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i8** @mandoc_realloc(i8** %38, i32 %45)
  %47 = load %struct.req*, %struct.req** %2, align 8
  %48 = getelementptr inbounds %struct.req, %struct.req* %47, i32 0, i32 0
  store i8** %46, i8*** %48, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @validate_urifrag(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %35
  %53 = load i32, i32* @MAN_DIR, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %53, i8* %54)
  %56 = call i32 (...) @pg_error_internal()
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = call i32 @exit(i32 %57) #3
  unreachable

59:                                               ; preds = %35
  %60 = load i8*, i8** %4, align 8
  %61 = call i32* @strchr(i8* %60, i8 signext 47)
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32, i32* @MAN_DIR, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %64, i8* %65)
  %67 = call i32 (...) @pg_error_internal()
  %68 = load i32, i32* @EXIT_FAILURE, align 4
  %69 = call i32 @exit(i32 %68) #3
  unreachable

70:                                               ; preds = %59
  %71 = load i8*, i8** %4, align 8
  %72 = load %struct.req*, %struct.req** %2, align 8
  %73 = getelementptr inbounds %struct.req, %struct.req* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load %struct.req*, %struct.req** %2, align 8
  %76 = getelementptr inbounds %struct.req, %struct.req* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8*, i8** %74, i64 %79
  store i8* %71, i8** %80, align 8
  store i8* null, i8** %4, align 8
  store i64 0, i64* %5, align 8
  br label %16

81:                                               ; preds = %16
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load %struct.req*, %struct.req** %2, align 8
  %85 = getelementptr inbounds %struct.req, %struct.req* %84, i32 0, i32 0
  %86 = load i8**, i8*** %85, align 8
  %87 = icmp eq i8** %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32, i32* @MAN_DIR, align 4
  %90 = call i32 (i8*, i32, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  %91 = call i32 (...) @pg_error_internal()
  %92 = load i32, i32* @EXIT_FAILURE, align 4
  %93 = call i32 @exit(i32 %92) #3
  unreachable

94:                                               ; preds = %81
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @pg_error_internal(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i8** @mandoc_realloc(i8**, i32) #1

declare dso_local i32 @validate_urifrag(i8*) #1

declare dso_local i32 @warnx(i8*, i32, ...) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
