; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline__print_xml_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline__print_xml_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { i8*, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@svn_xml_protect_pcdata = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"inherited_property\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_cmdline__print_xml_prop(%struct.TYPE_13__** %0, i8* %1, %struct.TYPE_14__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_13__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %12, align 8
  %15 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = icmp eq %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = call %struct.TYPE_13__* @svn_stringbuf_create_empty(i32* %19)
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %21, align 8
  br label %22

22:                                               ; preds = %18, %5
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @svn_xml_is_xml_safe(i8* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @svn_xml_escape_cdata_string(%struct.TYPE_13__** %13, %struct.TYPE_14__* %32, i32* %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %11, align 8
  br label %46

38:                                               ; preds = %22
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call %struct.TYPE_14__* @svn_base64_encode_string2(%struct.TYPE_14__* %39, i32 %40, i32* %41)
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %14, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %38, %31
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* @svn_xml_protect_pcdata, align 4
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* @SVN_VA_NULL, align 4
  %60 = call i32 (%struct.TYPE_13__**, i32*, i32, i8*, i8*, i8*, i8*, ...) @svn_xml_make_open_tag(%struct.TYPE_13__** %50, i32* %51, i32 %52, i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %58, i32 %59)
  br label %74

61:                                               ; preds = %46
  %62 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* @svn_xml_protect_pcdata, align 4
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @SVN_VA_NULL, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 (%struct.TYPE_13__**, i32*, i32, i8*, i8*, i8*, i8*, ...) @svn_xml_make_open_tag(%struct.TYPE_13__** %62, i32* %63, i32 %64, i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %69, i8* %72)
  br label %74

74:                                               ; preds = %61, %49
  %75 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @svn_stringbuf_appendcstr(%struct.TYPE_13__* %76, i8* %77)
  %79 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %85 = call i32 @svn_xml_make_close_tag(%struct.TYPE_13__** %79, i32* %80, i8* %84)
  ret void
}

declare dso_local %struct.TYPE_13__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i64 @svn_xml_is_xml_safe(i8*, i32) #1

declare dso_local i32 @svn_xml_escape_cdata_string(%struct.TYPE_13__**, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_base64_encode_string2(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @svn_xml_make_open_tag(%struct.TYPE_13__**, i32*, i32, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @svn_stringbuf_appendcstr(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @svn_xml_make_close_tag(%struct.TYPE_13__**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
