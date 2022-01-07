; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_unparsestring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_unparsestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@_toebcdic = common dso_local global i32* null, align 8
@_toascii = common dso_local global i32* null, align 8
@CHAR = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @unparsestring(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @MB_LEN_MAX, align 4
  %14 = call i32 @max(i32 4, i32 %13)
  %15 = mul nsw i32 %12, %14
  %16 = call i8* @xmalloc(i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  store i8 %25, i8* %26, align 1
  br label %28

28:                                               ; preds = %22, %2
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %134, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %137

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %7, align 1
  %43 = load i8, i8* %7, align 1
  %44 = call i64 @Iscntrl(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %35
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %6, align 8
  store i8 94, i8* %47, align 1
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = call signext i8 @CTL_ESC(i8 signext 127)
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 63, i8* %55, align 1
  br label %71

57:                                               ; preds = %46
  %58 = load i32*, i32** @_toebcdic, align 8
  %59 = load i32*, i32** @_toascii, align 8
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 64
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %58, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  store i8 %68, i8* %69, align 1
  br label %71

71:                                               ; preds = %57, %54
  br label %133

72:                                               ; preds = %35
  %73 = load i8, i8* %7, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 94
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 92
  br i1 %79, label %80, label %86

80:                                               ; preds = %76, %72
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  store i8 92, i8* %81, align 1
  %83 = load i8, i8* %7, align 1
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  store i8 %83, i8* %84, align 1
  br label %132

86:                                               ; preds = %76
  %87 = load i8, i8* %7, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = load i8, i8* %7, align 1
  %92 = call i64 @Isprint(i8 signext %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load i8, i8* %7, align 1
  %96 = call i32 @Isspace(i8 signext %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94, %86
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %7, align 1
  %101 = call i32 @one_wctomb(i8* %99, i8 signext %100)
  %102 = load i8*, i8** %6, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %6, align 8
  br label %131

105:                                              ; preds = %94, %90
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %6, align 8
  store i8 92, i8* %106, align 1
  %108 = load i8, i8* %7, align 1
  %109 = sext i8 %108 to i32
  %110 = ashr i32 %109, 6
  %111 = and i32 %110, 7
  %112 = add nsw i32 %111, 48
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  store i8 %113, i8* %114, align 1
  %116 = load i8, i8* %7, align 1
  %117 = sext i8 %116 to i32
  %118 = ashr i32 %117, 3
  %119 = and i32 %118, 7
  %120 = add nsw i32 %119, 48
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  store i8 %121, i8* %122, align 1
  %124 = load i8, i8* %7, align 1
  %125 = sext i8 %124 to i32
  %126 = and i32 %125, 7
  %127 = add nsw i32 %126, 48
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  store i8 %128, i8* %129, align 1
  br label %131

131:                                              ; preds = %105, %98
  br label %132

132:                                              ; preds = %131, %80
  br label %133

133:                                              ; preds = %132, %71
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %29

137:                                              ; preds = %29
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %137
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %6, align 8
  store i8 %152, i8* %153, align 1
  br label %155

155:                                              ; preds = %149, %143, %137
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %6, align 8
  store i8 0, i8* %156, align 1
  %158 = load i8*, i8** %5, align 8
  ret i8* %158
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @Iscntrl(i8 signext) #1

declare dso_local signext i8 @CTL_ESC(i8 signext) #1

declare dso_local i64 @Isprint(i8 signext) #1

declare dso_local i32 @Isspace(i8 signext) #1

declare dso_local i32 @one_wctomb(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
