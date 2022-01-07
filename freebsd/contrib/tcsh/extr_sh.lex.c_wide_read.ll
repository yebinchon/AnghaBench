; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_wide_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_wide_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@MB_LEN_MAX = common dso_local global i64 0, align 8
@INVALID_BYTE = common dso_local global i8 0, align 1
@errno = common dso_local global i32 0, align 4
@L_INCR = common dso_local global i32 0, align 4
@fclens = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wide_read(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* @BUFSIZE, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %166

28:                                               ; preds = %4
  %29 = load i64, i64* %8, align 8
  %30 = udiv i64 %22, 1
  %31 = icmp ule i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @USE(i32 %34)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  br label %36

36:                                               ; preds = %147, %28
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %14, align 8
  %43 = sub i64 %41, %42
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i64 [ %43, %40 ], [ 1, %44 ]
  store i64 %46, i64* %18, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %18, align 8
  %49 = add i64 %47, %48
  %50 = udiv i64 %22, 1
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %149

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i8, i8* %24, i64 %55
  %57 = load i64, i64* %18, align 8
  %58 = call i64 @xread(i32 %54, i8* %56, i64 %57)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i64, i64* %13, align 8
  %63 = icmp ule i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %149

65:                                               ; preds = %61, %53
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %14, align 8
  store i64 0, i64* %17, align 8
  br label %69

69:                                               ; preds = %117, %65
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi i1 [ false, %69 ], [ %75, %73 ]
  br i1 %77, label %78, label %126

78:                                               ; preds = %76
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i64, i64* %17, align 8
  %83 = getelementptr inbounds i8, i8* %24, i64 %82
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %17, align 8
  %86 = sub i64 %84, %85
  %87 = call i32 @normal_mbtowc(i8* %81, i8* %83, i64 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %19, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %113

90:                                               ; preds = %78
  %91 = call i32 (...) @reset_mbtowc()
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %17, align 8
  %94 = sub i64 %92, %93
  %95 = load i64, i64* @MB_LEN_MAX, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i64, i64* %13, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %126

101:                                              ; preds = %97, %90
  %102 = load i64, i64* %17, align 8
  %103 = getelementptr inbounds i8, i8* %24, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @INVALID_BYTE, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %105, %107
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %7, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 %109, i8* %112, align 1
  br label %113

113:                                              ; preds = %101, %78
  %114 = load i32, i32* %19, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, i32* %19, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %17, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %8, align 8
  br label %69

126:                                              ; preds = %100, %76
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* %14, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i64, i64* %17, align 8
  %132 = getelementptr inbounds i8, i8* %24, i64 %131
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %17, align 8
  %135 = sub i64 %133, %134
  %136 = call i32 @memmove(i8* %24, i8* %132, i64 %135)
  br label %137

137:                                              ; preds = %130, %126
  %138 = load i64, i64* %17, align 8
  %139 = load i64, i64* %14, align 8
  %140 = sub i64 %139, %138
  store i64 %140, i64* %14, align 8
  br label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %14, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i64, i64* %8, align 8
  %146 = icmp ugt i64 %145, 0
  br label %147

147:                                              ; preds = %144, %141
  %148 = phi i1 [ false, %141 ], [ %146, %144 ]
  br i1 %148, label %36, label %149

149:                                              ; preds = %147, %64, %52
  %150 = load i32, i32* @errno, align 4
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i64, i64* %14, align 8
  %153 = trunc i64 %152 to i32
  %154 = sub nsw i32 0, %153
  %155 = load i32, i32* @L_INCR, align 4
  %156 = call i32 @lseek(i32 %151, i32 %154, i32 %155)
  %157 = load i32, i32* %15, align 4
  store i32 %157, i32* @errno, align 4
  %158 = load i64, i64* %12, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = load i64, i64* %12, align 8
  br label %164

162:                                              ; preds = %149
  %163 = load i64, i64* %13, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i64 [ %161, %160 ], [ %163, %162 ]
  store i64 %165, i64* %5, align 8
  store i32 1, i32* %16, align 4
  br label %166

166:                                              ; preds = %164, %27
  %167 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i64, i64* %5, align 8
  ret i64 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @USE(i32) #2

declare dso_local i64 @xread(i32, i8*, i64) #2

declare dso_local i32 @normal_mbtowc(i8*, i8*, i64) #2

declare dso_local i32 @reset_mbtowc(...) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i32 @lseek(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
