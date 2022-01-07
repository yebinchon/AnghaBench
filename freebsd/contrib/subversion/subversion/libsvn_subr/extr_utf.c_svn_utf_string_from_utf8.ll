; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_string_from_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf_string_from_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@SVN_UTF_UTON_XLATE_HANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_utf_string_from_utf8(%struct.TYPE_12__** %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @get_uton_xlate_handle_node(%struct.TYPE_11__** %7, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @check_utf8(i32 %20, i32 %23, i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %17
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @convert_to_stringbuf(%struct.TYPE_11__* %29, i32 %32, i32 %35, i32** %9, i32* %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %28
  %41 = load i32*, i32** %9, align 8
  %42 = call %struct.TYPE_12__* @svn_stringbuf__morph_into_string(i32* %41)
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %43, align 8
  br label %44

44:                                               ; preds = %40, %28
  br label %45

45:                                               ; preds = %44, %17
  br label %63

46:                                               ; preds = %3
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @check_non_ascii(i32 %49, i32 %52, i32* %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call %struct.TYPE_12__* @svn_string_dup(%struct.TYPE_12__* %58, i32* %59)
  %61 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %61, align 8
  br label %62

62:                                               ; preds = %57, %46
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = load i32, i32* @SVN_UTF_UTON_XLATE_HANDLE, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @put_xlate_handle_node(%struct.TYPE_11__* %65, i32 %66, i32* %67)
  %69 = call i32* @svn_error_compose_create(i32* %64, i32 %68)
  store i32* %69, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_uton_xlate_handle_node(%struct.TYPE_11__**, i32*) #1

declare dso_local i32* @check_utf8(i32, i32, i32*) #1

declare dso_local i32* @convert_to_stringbuf(%struct.TYPE_11__*, i32, i32, i32**, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_stringbuf__morph_into_string(i32*) #1

declare dso_local i32* @check_non_ascii(i32, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_string_dup(%struct.TYPE_12__*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @put_xlate_handle_node(%struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
