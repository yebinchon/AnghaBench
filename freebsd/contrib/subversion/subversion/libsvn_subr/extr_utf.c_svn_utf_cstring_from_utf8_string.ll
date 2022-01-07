; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_cstring_from_utf8_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_cstring_from_utf8_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i8* }

@SVN_UTF_UTON_XLATE_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_utf_cstring_from_utf8_string(i8** %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @get_uton_xlate_handle_node(%struct.TYPE_9__** %7, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @check_utf8(i32 %20, i32 %23, i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %17
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @convert_to_stringbuf(%struct.TYPE_9__* %29, i32 %32, i32 %35, %struct.TYPE_10__** %9, i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %28
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %4, align 8
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %40, %28
  br label %46

46:                                               ; preds = %45, %17
  br label %69

47:                                               ; preds = %3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i32* @check_non_ascii(i32 %50, i32 %53, i32* %54)
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %47
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @apr_pstrmemdup(i32* %59, i32 %62, i32 %65)
  %67 = load i8**, i8*** %4, align 8
  store i8* %66, i8** %67, align 8
  br label %68

68:                                               ; preds = %58, %47
  br label %69

69:                                               ; preds = %68, %46
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = load i32, i32* @SVN_UTF_UTON_XLATE_HANDLE, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @put_xlate_handle_node(%struct.TYPE_9__* %71, i32 %72, i32* %73)
  %75 = call i32* @svn_error_compose_create(i32* %70, i32 %74)
  store i32* %75, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  ret i32* %76
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_uton_xlate_handle_node(%struct.TYPE_9__**, i32*) #1

declare dso_local i32* @check_utf8(i32, i32, i32*) #1

declare dso_local i32* @convert_to_stringbuf(%struct.TYPE_9__*, i32, i32, %struct.TYPE_10__**, i32*) #1

declare dso_local i32* @check_non_ascii(i32, i32, i32*) #1

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @put_xlate_handle_node(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
