; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_check_unique_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_authz_parse.c_check_unique_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i8, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@SVN_ERR_AUTHZ_INVALID_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Section [%s] describes the same rule as section [%s]\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, %struct.TYPE_15__*, i8*)* @check_unique_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_unique_rule(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = call i32 @svn_stringbuf_setempty(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_13__* %17, i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_13__* %22, i8 signext 10)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %57, %3
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %24
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i64 %35
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %11, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 4
  %41 = sext i8 %40 to i32
  %42 = add nsw i32 64, %41
  %43 = trunc i32 %42 to i8
  %44 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_13__* %37, i8 signext %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_13__* %45, i32 %49, i32 %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = call i32 @svn_stringbuf_appendbyte(%struct.TYPE_13__* %55, i8 signext 10)
  br label %57

57:                                               ; preds = %30
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %24

60:                                               ; preds = %24
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @apr_hash_get(i32 %63, i32 %66, i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = load i32, i32* @SVN_ERR_AUTHZ_INVALID_CONFIG, align 4
  %75 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32* @svn_error_createf(i32 %74, i32* null, i32 %75, i8* %76, i8* %77)
  store i32* %78, i32** %4, align 8
  br label %103

79:                                               ; preds = %60
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @apr_pstrmemdup(i32 %85, i32 %88, i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @apr_pstrdup(i32 %98, i8* %99)
  %101 = call i32 @apr_hash_set(i32 %82, i32 %92, i32 %95, i32 %100)
  %102 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %102, i32** %4, align 8
  br label %103

103:                                              ; preds = %79, %73
  %104 = load i32*, i32** %4, align 8
  ret i32* %104
}

declare dso_local i32 @svn_stringbuf_setempty(%struct.TYPE_13__*) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_stringbuf_appendbyte(%struct.TYPE_13__*, i8 signext) #1

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @apr_hash_get(i32, i32, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @apr_hash_set(i32, i32, i32, i32) #1

declare dso_local i32 @apr_pstrmemdup(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
