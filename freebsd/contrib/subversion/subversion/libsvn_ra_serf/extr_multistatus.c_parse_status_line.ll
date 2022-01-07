; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_multistatus.c_parse_status_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_multistatus.c_parse_status_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@SVN_ERR_RA_DAV_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Malformed DAV:status '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i8*, i32*, i32*)* @parse_status_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_status_line(i32* %0, i8** %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call %struct.TYPE_4__* @svn_stringbuf_create(i8* %16, i32* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %15, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %20 = call i32 @svn_stringbuf_strip_whitespace(%struct.TYPE_4__* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i8* @apr_strtok(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14)
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = call i8* @apr_strtok(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14)
  store i8* %28, i8** %13, align 8
  br label %29

29:                                               ; preds = %27, %5
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** %9, align 8
  %36 = call i32* @svn_error_createf(i32 %33, i32* null, i32 %34, i8* %35)
  store i32* %36, i32** %6, align 8
  br label %56

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i32* @svn_cstring_atoi(i32* %38, i8* %39)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @SVN_ERR_RA_DAV_MALFORMED_DATA, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8*, i8** %9, align 8
  %48 = call i32* @svn_error_createf(i32 %44, i32* %45, i32 %46, i8* %47)
  store i32* %48, i32** %6, align 8
  br label %56

49:                                               ; preds = %37
  %50 = call i8* @apr_strtok(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14)
  store i8* %50, i8** %13, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i8* @apr_pstrdup(i32* %51, i8* %52)
  %54 = load i8**, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %55, i32** %6, align 8
  br label %56

56:                                               ; preds = %49, %43, %32
  %57 = load i32*, i32** %6, align 8
  ret i32* %57
}

declare dso_local %struct.TYPE_4__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @svn_stringbuf_strip_whitespace(%struct.TYPE_4__*) #1

declare dso_local i8* @apr_strtok(i32*, i8*, i8**) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_cstring_atoi(i32*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
