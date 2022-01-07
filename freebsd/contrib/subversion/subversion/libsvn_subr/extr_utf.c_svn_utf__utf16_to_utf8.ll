; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf__utf16_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_svn_utf__utf16_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@svn_utf__utf16_to_utf8.endiancheck = internal constant i32 42330, align 4
@SVN_UTF__UNKNOWN_LENGTH = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_utf__utf16_to_utf8(%struct.TYPE_8__** %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__, align 4
  %19 = alloca %struct.TYPE_9__, align 4
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i8, i8* getelementptr inbounds (i8, i8* bitcast (i32* @svn_utf__utf16_to_utf8.endiancheck to i8*), i64 3), align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 90
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = icmp ne i32 %30, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SVN_UTF__UNKNOWN_LENGTH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %6
  %41 = load i32*, i32** %8, align 8
  store i32* %41, i32** %21, align 8
  br label %42

42:                                               ; preds = %47, %40
  %43 = load i32*, i32** %21, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %21, align 8
  %45 = load i32, i32* %43, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %42

48:                                               ; preds = %42
  %49 = load i32*, i32** %21, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = ptrtoint i32* %49 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %48, %6
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @svn_membuf__create(%struct.TYPE_9__* %18, i32 %60, i32* %61)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %63

63:                                               ; preds = %125, %56
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %128

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SWAP_SHORT(i32 %75)
  br label %83

77:                                               ; preds = %67
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  br label %83

83:                                               ; preds = %77, %70
  %84 = phi i32 [ %76, %70 ], [ %82, %77 ]
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load i32, i32* %22, align 4
  %89 = call i64 @IS_UTF16_TRAIL_SURROGATE(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %15, align 4
  %95 = and i32 %94, 1023
  %96 = shl i32 %95, 10
  %97 = load i32, i32* %22, align 4
  %98 = and i32 %97, 1023
  %99 = or i32 %96, %98
  %100 = add nsw i32 65536, %99
  %101 = call i32 @membuf_insert_ucs4(%struct.TYPE_9__* %18, i32 %92, i32 %100)
  store i32 0, i32* %15, align 4
  br label %125

102:                                              ; preds = %87
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @membuf_insert_ucs4(%struct.TYPE_9__* %18, i32 %103, i32 %105)
  store i32 0, i32* %15, align 4
  br label %107

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %83
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* %22, align 4
  %115 = call i64 @IS_UTF16_LEAD_SURROGATE(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* %22, align 4
  store i32 %118, i32* %15, align 4
  br label %125

119:                                              ; preds = %113, %108
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %22, align 4
  %123 = call i32 @membuf_insert_ucs4(%struct.TYPE_9__* %18, i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %117, %91
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %17, align 4
  br label %63

128:                                              ; preds = %63
  %129 = load i32, i32* %16, align 4
  %130 = mul nsw i32 %129, 2
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @svn_membuf__create(%struct.TYPE_9__* %19, i32 %130, i32* %131)
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @svn_utf__encode_ucs4_string(%struct.TYPE_9__* %19, i32 %134, i32 %135, i32* %16)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load i32*, i32** %11, align 8
  %139 = call %struct.TYPE_8__* @apr_palloc(i32* %138, i32 8)
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %148 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %147, %struct.TYPE_8__** %148, align 8
  %149 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %149
}

declare dso_local i32 @svn_membuf__create(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @SWAP_SHORT(i32) #1

declare dso_local i64 @IS_UTF16_TRAIL_SURROGATE(i32) #1

declare dso_local i32 @membuf_insert_ucs4(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @IS_UTF16_LEAD_SURROGATE(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_utf__encode_ucs4_string(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
