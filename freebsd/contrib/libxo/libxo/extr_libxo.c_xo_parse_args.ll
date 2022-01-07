; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_parse_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xo_parse_args.libxo_opt = internal global [8 x i8] c"--libxo\00", align 1
@xo_program = common dso_local global i8* null, align 8
@xo_parse_args.gnu_ext = internal constant [6 x i8] c".test\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"missing libxo option\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@XO_HAS_LIBXO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown libxo option: '%s'\00", align 1
@XOF_COLOR_ALLOWED = common dso_local global i32 0, align 4
@XOF_COLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xo_parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @xo_program, align 8
  %14 = load i8*, i8** @xo_program, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  store i8* %20, i8** @xo_program, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load i8*, i8** @xo_program, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp uge i64 %28, 6
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  %33 = sub i64 %32, 6
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @xo_streq(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @xo_parse_args.gnu_ext, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %39, %30
  br label %42

42:                                               ; preds = %41, %25
  %43 = call i32* @xo_default(i32* null)
  store i32* %43, i32** %10, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %166, %42
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %169

48:                                               ; preds = %44
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  %56 = load i8**, i8*** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @xo_parse_args.libxo_opt, i64 0, i64 0), i32 7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %55, %48
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %72, i8** %76, align 8
  br label %77

77:                                               ; preds = %67, %63
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %166

80:                                               ; preds = %55
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %80
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = call i32 (i8*, ...) @xo_warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %187

103:                                              ; preds = %92
  %104 = load i32*, i32** %10, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i64 @xo_set_options(i32* %104, i8* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 -1, i32* %3, align 4
  br label %187

109:                                              ; preds = %103
  br label %165

110:                                              ; preds = %80
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 58
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i32*, i32** %10, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @xo_set_options(i32* %116, i8* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 -1, i32* %3, align 4
  br label %187

121:                                              ; preds = %115
  br label %164

122:                                              ; preds = %110
  %123 = load i8*, i8** %6, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 61
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i32*, i32** %10, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  %131 = call i64 @xo_set_options(i32* %128, i8* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 -1, i32* %3, align 4
  br label %187

134:                                              ; preds = %127
  br label %163

135:                                              ; preds = %122
  %136 = load i8*, i8** %6, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 45
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load i8*, i8** %6, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  store i8* %142, i8** %6, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = call i64 @xo_streq(i8* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* @XO_HAS_LIBXO, align 4
  %148 = call i32 @exit(i32 %147) #3
  unreachable

149:                                              ; preds = %140
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i8*, ...) @xo_warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %154)
  store i32 -1, i32* %3, align 4
  br label %187

156:                                              ; preds = %135
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (i8*, ...) @xo_warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %161)
  store i32 -1, i32* %3, align 4
  br label %187

163:                                              ; preds = %134
  br label %164

164:                                              ; preds = %163, %121
  br label %165

165:                                              ; preds = %164, %109
  br label %166

166:                                              ; preds = %165, %77
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %44

169:                                              ; preds = %44
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* @XOF_COLOR_ALLOWED, align 4
  %172 = call i64 @XOF_ISSET(i32* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = call i64 @isatty(i32 1)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32*, i32** %10, align 8
  %179 = load i32, i32* @XOF_COLOR, align 4
  %180 = call i32 @XOF_SET(i32* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %174, %169
  %182 = load i8**, i8*** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  store i8* null, i8** %185, align 8
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %181, %156, %149, %133, %120, %108, %101
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @xo_streq(i8*, i8*) #1

declare dso_local i32* @xo_default(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @xo_warnx(i8*, ...) #1

declare dso_local i64 @xo_set_options(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @XOF_ISSET(i32*, i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @XOF_SET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
