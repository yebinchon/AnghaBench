; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_svn_xml_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_xml.c_svn_xml_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@SVN_ERR_XML_MALFORMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Malformed XML: %s at line %ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_xml_parse(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @XML_Parse(i32 %15, i8* %16, i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = call i32 @svn_xml_free_parser(%struct.TYPE_4__* %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %5, align 8
  br label %53

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @XML_GetCurrentLineNumber(i32 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* @SVN_ERR_XML_MALFORMED, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @XML_GetErrorCode(i32 %43)
  %45 = call i32 @XML_ErrorString(i32 %44)
  %46 = load i64, i64* %12, align 8
  %47 = call i32* @svn_error_createf(i32 %39, i32* null, i32 %40, i32 %45, i64 %46)
  store i32* %47, i32** %10, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = call i32 @svn_xml_free_parser(%struct.TYPE_4__* %48)
  %50 = load i32*, i32** %10, align 8
  store i32* %50, i32** %5, align 8
  br label %53

51:                                               ; preds = %31
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %5, align 8
  br label %53

53:                                               ; preds = %51, %34, %25
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i32 @XML_Parse(i32, i8*, i32, i32) #1

declare dso_local i32 @svn_xml_free_parser(%struct.TYPE_4__*) #1

declare dso_local i64 @XML_GetCurrentLineNumber(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @XML_ErrorString(i32) #1

declare dso_local i32 @XML_GetErrorCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
