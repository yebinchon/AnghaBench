; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_string_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_string_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }

@SVN_UTF_NTOU_XLATE_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_utf_string_to_utf8(%struct.TYPE_16__** %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__**, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__** %0, %struct.TYPE_16__*** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @get_ntou_xlate_handle_node(%struct.TYPE_14__** %8, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32* @convert_to_stringbuf(%struct.TYPE_14__* %18, i32 %21, i32 %24, %struct.TYPE_15__** %7, i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %17
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @check_utf8(i32 %32, i32 %35, i32* %36)
  store i32* %37, i32** %9, align 8
  br label %38

38:                                               ; preds = %29, %17
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = call %struct.TYPE_16__* @svn_stringbuf__morph_into_string(%struct.TYPE_15__* %42)
  %44 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %44, align 8
  br label %45

45:                                               ; preds = %41, %38
  br label %63

46:                                               ; preds = %3
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @check_non_ascii(i32 %49, i32 %52, i32* %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call %struct.TYPE_16__* @svn_string_dup(%struct.TYPE_16__* %58, i32* %59)
  %61 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %4, align 8
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %61, align 8
  br label %62

62:                                               ; preds = %57, %46
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = load i32, i32* @SVN_UTF_NTOU_XLATE_HANDLE, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @put_xlate_handle_node(%struct.TYPE_14__* %65, i32 %66, i32* %67)
  %69 = call i32* @svn_error_compose_create(i32* %64, i32 %68)
  ret i32* %69
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_ntou_xlate_handle_node(%struct.TYPE_14__**, i32*) #1

declare dso_local i32* @convert_to_stringbuf(%struct.TYPE_14__*, i32, i32, %struct.TYPE_15__**, i32*) #1

declare dso_local i32* @check_utf8(i32, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_stringbuf__morph_into_string(%struct.TYPE_15__*) #1

declare dso_local i32* @check_non_ascii(i32, i32, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_string_dup(%struct.TYPE_16__*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @put_xlate_handle_node(%struct.TYPE_14__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
