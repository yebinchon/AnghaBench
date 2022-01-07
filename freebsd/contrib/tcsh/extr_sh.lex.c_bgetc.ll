; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_bgetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.lex.c_bgetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cantell = common dso_local global i64 0, align 8
@fseekp = common dso_local global i64 0, align 8
@fbobp = common dso_local global i64 0, align 8
@feobp = common dso_local global i64 0, align 8
@SHIN = common dso_local global i32 0, align 4
@L_SET = common dso_local global i32 0, align 4
@fbuf = common dso_local global i8** null, align 8
@BUFSIZE = common dso_local global i32 0, align 4
@CHAR_ERR = common dso_local global i8 0, align 1
@editing = common dso_local global i64 0, align 8
@intty = common dso_local global i64 0, align 8
@InputBuf = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@fclens = common dso_local global i64* null, align 8
@filec = common dso_local global i64 0, align 8
@progname = common dso_local global i32 0, align 4
@windowchg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @bgetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @bgetc() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @cantell, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %0
  %11 = load i64, i64* @fseekp, align 8
  %12 = load i64, i64* @fbobp, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i64, i64* @fseekp, align 8
  %16 = load i64, i64* @feobp, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14, %10
  %19 = load i64, i64* @fseekp, align 8
  store i64 %19, i64* @feobp, align 8
  store i64 %19, i64* @fbobp, align 8
  %20 = load i32, i32* @SHIN, align 4
  %21 = load i64, i64* @fseekp, align 8
  %22 = load i32, i32* @L_SET, align 4
  %23 = call i32 @lseek(i32 %20, i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %14
  %25 = load i64, i64* @fseekp, align 8
  %26 = load i64, i64* @feobp, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i64, i64* @feobp, align 8
  store i64 %29, i64* @fbobp, align 8
  %30 = load i32, i32* @SHIN, align 4
  %31 = load i8**, i8*** @fbuf, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @BUFSIZE, align 4
  %35 = call i32 @wide_read(i32 %30, i8* %33, i32 %34, i32 1)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i8, i8* @CHAR_ERR, align 1
  store i8 %39, i8* %1, align 1
  br label %188

40:                                               ; preds = %28
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @feobp, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* @feobp, align 8
  br label %45

45:                                               ; preds = %40, %24
  %46 = load i8**, i8*** @fbuf, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* @fseekp, align 8
  %50 = load i64, i64* @fbobp, align 8
  %51 = sub nsw i64 %49, %50
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %2, align 1
  %54 = load i64, i64* @fseekp, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @fseekp, align 8
  %56 = load i8, i8* %2, align 1
  store i8 %56, i8* %1, align 1
  br label %188

57:                                               ; preds = %0
  br label %58

58:                                               ; preds = %168, %57
  %59 = load i64, i64* @fseekp, align 8
  %60 = load i64, i64* @feobp, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %169

62:                                               ; preds = %58
  %63 = load i64, i64* @editing, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %122

65:                                               ; preds = %62
  %66 = load i64, i64* @intty, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %122

68:                                               ; preds = %65
  %69 = load i64, i64* @feobp, align 8
  store i64 %69, i64* @fseekp, align 8
  %70 = call i32 (...) @Inputl()
  store i32 %70, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %93, %68
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %121

74:                                               ; preds = %71
  %75 = load i64, i64* @feobp, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @BUFSIZE, align 4
  %78 = srem i32 %76, %77
  store i32 %78, i32* %4, align 4
  %79 = load i64, i64* @feobp, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @BUFSIZE, align 4
  %82 = sdiv i32 %80, %81
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @balloc(i32 %83)
  %85 = load i32, i32* @BUFSIZE, align 4
  %86 = load i32, i32* %4, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %74
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %74
  %94 = load i8**, i8*** @fbuf, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i64, i64* @InputBuf, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memcpy(i8* %101, i64 %108, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @feobp, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* @feobp, align 8
  br label %71

121:                                              ; preds = %71
  br label %155

122:                                              ; preds = %65, %62
  %123 = load i64, i64* @feobp, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* @BUFSIZE, align 4
  %126 = srem i32 %124, %125
  store i32 %126, i32* %4, align 4
  %127 = load i64, i64* @feobp, align 8
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* @BUFSIZE, align 4
  %130 = sdiv i32 %128, %129
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @balloc(i32 %131)
  %133 = load i32, i32* @BUFSIZE, align 4
  %134 = load i32, i32* %4, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* @SHIN, align 4
  %137 = load i8**, i8*** @fbuf, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @wide_read(i32 %136, i8* %144, i32 %145, i32 0)
  store i32 %146, i32* %3, align 4
  %147 = load i32, i32* %3, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %122
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* @feobp, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* @feobp, align 8
  br label %154

154:                                              ; preds = %149, %122
  br label %155

155:                                              ; preds = %154, %121
  %156 = load i32, i32* %3, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %3, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i32, i32* @SHIN, align 4
  %163 = load i32, i32* @errno, align 4
  %164 = call i32 @fixio(i32 %162, i32 %163)
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %168

166:                                              ; preds = %161, %155
  %167 = load i8, i8* @CHAR_ERR, align 1
  store i8 %167, i8* %1, align 1
  br label %188

168:                                              ; preds = %161, %158
  br label %58

169:                                              ; preds = %58
  %170 = load i8**, i8*** @fbuf, align 8
  %171 = load i64, i64* @fseekp, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i32, i32* @BUFSIZE, align 4
  %174 = sdiv i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %170, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i64, i64* @fseekp, align 8
  %179 = trunc i64 %178 to i32
  %180 = load i32, i32* @BUFSIZE, align 4
  %181 = srem i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %177, i64 %182
  %184 = load i8, i8* %183, align 1
  store i8 %184, i8* %2, align 1
  %185 = load i64, i64* @fseekp, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* @fseekp, align 8
  %187 = load i8, i8* %2, align 1
  store i8 %187, i8* %1, align 1
  br label %188

188:                                              ; preds = %169, %166, %45, %38
  %189 = load i8, i8* %1, align 1
  ret i8 %189
}

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @wide_read(i32, i8*, i32, i32) #1

declare dso_local i32 @Inputl(...) #1

declare dso_local i32 @balloc(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @fixio(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
