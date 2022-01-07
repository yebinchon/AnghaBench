; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf__utf32_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf__utf32_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32* }

@svn_utf__utf32_to_utf8.endiancheck = internal constant i32 -1513374630, align 4
@SVN_UTF__UNKNOWN_LENGTH = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_utf__utf32_to_utf8(%struct.TYPE_8__** %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i32* @svn_utf__utf32_to_utf8.endiancheck to i8*), i64 3), align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 90
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = icmp ne i32 %29, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SVN_UTF__UNKNOWN_LENGTH, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %6
  %40 = load i32*, i32** %8, align 8
  store i32* %40, i32** %18, align 8
  br label %41

41:                                               ; preds = %46, %39
  %42 = load i32*, i32** %18, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %18, align 8
  %44 = load i32, i32* %42, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %41

47:                                               ; preds = %41
  %48 = load i32*, i32** %18, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %47, %6
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @svn_membuf__create(%struct.TYPE_9__* %20, i32 %62, i32* %63)
  store i32 0, i32* %19, align 4
  br label %65

65:                                               ; preds = %79, %58
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SWAP_LONG(i32 %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %21, align 4
  %78 = call i32 @membuf_insert_ucs4(%struct.TYPE_9__* %20, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %19, align 4
  br label %65

82:                                               ; preds = %65
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %8, align 8
  br label %85

85:                                               ; preds = %82, %55
  %86 = load i32, i32* %9, align 4
  %87 = mul nsw i32 %86, 2
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @svn_membuf__create(%struct.TYPE_9__* %16, i32 %87, i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @svn_utf__encode_ucs4_string(%struct.TYPE_9__* %16, i32* %90, i32 %91, i32* %15)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** %11, align 8
  %95 = call %struct.TYPE_8__* @apr_palloc(i32* %94, i32 16)
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %104 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %104, align 8
  %105 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %105
}

declare dso_local i32 @svn_membuf__create(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @SWAP_LONG(i32) #1

declare dso_local i32 @membuf_insert_ucs4(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_utf__encode_ucs4_string(%struct.TYPE_9__*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
