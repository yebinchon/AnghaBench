; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dosetenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_dosetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32 }

@ERR_NAME = common dso_local global i32 0, align 4
@ERR_VARBEGIN = common dso_local global i32 0, align 4
@ERR_VARALNUM = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i8* null, align 8
@G_APPEND = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@STRKPATH = common dso_local global i8* null, align 8
@AsciiOnly = common dso_local global i32 0, align 4
@NLSMapsAreInited = common dso_local global i64 0, align 8
@MapsAreInited = common dso_local global i64 0, align 8
@STRNOREBIND = common dso_local global i8* null, align 8
@NoNLSRebind = common dso_local global i32 0, align 4
@STRKTERM = common dso_local global i8* null, align 8
@STRterm = common dso_local global i32 0, align 4
@VAR_READWRITE = common dso_local global i32 0, align 4
@noediting = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@editing = common dso_local global i32 0, align 4
@STRedit = common dso_local global i32 0, align 4
@GotTermCaps = common dso_local global i64 0, align 8
@STRKHOME = common dso_local global i8* null, align 8
@STRhome = common dso_local global i32 0, align 4
@STRKSHLVL = common dso_local global i8* null, align 8
@STRshlvl = common dso_local global i32 0, align 4
@STRKUSER = common dso_local global i8* null, align 8
@STRuser = common dso_local global i32 0, align 4
@STRKGROUP = common dso_local global i8* null, align 8
@STRgroup = common dso_local global i32 0, align 4
@CHECK_MBYTEVAR = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@LC_COLLATE = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4
@MB_CUR_MAX = common dso_local global i32 0, align 4
@STRCOLUMNS = common dso_local global i8* null, align 8
@STRLANG = common dso_local global i8* null, align 8
@STRLINES = common dso_local global i8* null, align 8
@STRLSCOLORS = common dso_local global i8* null, align 8
@STRLS_COLORS = common dso_local global i8* null, align 8
@STRNLSPATH = common dso_local global i8* null, align 8
@STRSYSTYPE = common dso_local global i8* null, align 8
@STRTERMCAP = common dso_local global i8* null, align 8
@STRtcshlang = common dso_local global i8* null, align 8
@dont_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dosetenv(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %9 = load %struct.command*, %struct.command** %4, align 8
  %10 = call i32 @USE(%struct.command* %9)
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %3, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8**, i8*** %3, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 -1
  store i8** %17, i8*** %3, align 8
  %18 = call i32 @doprintenv(i8** %17, i32 0)
  br label %217

19:                                               ; preds = %2
  %20 = load i8**, i8*** %3, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %3, align 8
  %22 = load i8*, i8** %20, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @letter(i8 signext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ERR_NAME, align 4
  %30 = load i32, i32* @ERR_VARBEGIN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @stderror(i32 %31)
  br label %33

33:                                               ; preds = %28, %19
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @alnum(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ true, %37 ], [ %46, %42 ]
  br i1 %48, label %34, label %49

49:                                               ; preds = %47
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @ERR_NAME, align 4
  %56 = load i32, i32* @ERR_VARALNUM, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @stderror(i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i8**, i8*** %3, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %3, align 8
  %62 = load i8*, i8** %60, align 8
  store i8* %62, i8** %6, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i8*, i8** @STRNULL, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* @G_APPEND, align 4
  %69 = call i8* @globone(i8* %67, i32 %68)
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* @xfree, align 4
  %72 = call i32 @cleanup_push(i8* %70, i32 %71)
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @tsetenv(i8* %73, i8* %74)
  %76 = load i8*, i8** %5, align 8
  %77 = load i8*, i8** @STRKPATH, align 8
  %78 = call i64 @eq(i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %66
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @importpath(i8* %81)
  %83 = call i32 @dohash(i32* null, i32* null)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @cleanup_until(i8* %84)
  br label %217

86:                                               ; preds = %66
  %87 = load i8*, i8** %5, align 8
  %88 = call i64 @islocale_var(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  store i32 0, i32* @AsciiOnly, align 4
  store i64 0, i64* @NLSMapsAreInited, align 8
  %91 = call i32 (...) @ed_Init()
  %92 = load i64, i64* @MapsAreInited, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i64, i64* @NLSMapsAreInited, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = call i32 (...) @ed_InitNLSMaps()
  br label %99

99:                                               ; preds = %97, %94, %90
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @cleanup_until(i8* %100)
  br label %217

102:                                              ; preds = %86
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** @STRNOREBIND, align 8
  %105 = call i64 @eq(i8* %103, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  store i32 1, i32* @NoNLSRebind, align 4
  store i64 0, i64* @MapsAreInited, align 8
  store i64 0, i64* @NLSMapsAreInited, align 8
  %108 = call i32 (...) @ed_InitMaps()
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @cleanup_until(i8* %109)
  br label %217

111:                                              ; preds = %102
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** @STRKTERM, align 8
  %114 = call i64 @eq(i8* %112, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %111
  %117 = load i32, i32* @STRterm, align 4
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @quote(i8* %118)
  %120 = load i32, i32* @VAR_READWRITE, align 4
  %121 = call i32 @setv(i32 %117, i32 %119, i32 %120)
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @cleanup_ignore(i8* %122)
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @cleanup_until(i8* %124)
  %126 = load i8*, i8** %6, align 8
  %127 = call i8* @short2str(i8* %126)
  store i8* %127, i8** %7, align 8
  %128 = load i64, i64* @noediting, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %116
  %131 = load i8*, i8** %7, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i8*, i8** %7, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  store i32 1, i32* @editing, align 4
  store i64 0, i64* @noediting, align 8
  %139 = load i32, i32* @STRedit, align 4
  %140 = call i32 @setNS(i32 %139)
  br label %141

141:                                              ; preds = %138, %134, %130, %116
  store i64 0, i64* @GotTermCaps, align 8
  %142 = call i32 (...) @ed_Init()
  br label %217

143:                                              ; preds = %111
  %144 = load i8*, i8** %5, align 8
  %145 = load i8*, i8** @STRKHOME, align 8
  %146 = call i64 @eq(i8* %144, i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %143
  %149 = load i8*, i8** %6, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = call i8* @dcanon(i8* %149, i8* %150)
  store i8* %151, i8** %8, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 @cleanup_ignore(i8* %152)
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @cleanup_until(i8* %154)
  %156 = load i8*, i8** %8, align 8
  %157 = load i32, i32* @xfree, align 4
  %158 = call i32 @cleanup_push(i8* %156, i32 %157)
  %159 = load i32, i32* @STRhome, align 4
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @quote(i8* %160)
  %162 = load i32, i32* @VAR_READWRITE, align 4
  %163 = call i32 @setv(i32 %159, i32 %161, i32 %162)
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 @cleanup_ignore(i8* %164)
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @cleanup_until(i8* %166)
  %168 = call i32 (...) @dtilde()
  br label %217

169:                                              ; preds = %143
  %170 = load i8*, i8** %5, align 8
  %171 = load i8*, i8** @STRKSHLVL, align 8
  %172 = call i64 @eq(i8* %170, i8* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = load i32, i32* @STRshlvl, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = call i32 @quote(i8* %176)
  %178 = load i32, i32* @VAR_READWRITE, align 4
  %179 = call i32 @setv(i32 %175, i32 %177, i32 %178)
  %180 = load i8*, i8** %6, align 8
  %181 = call i32 @cleanup_ignore(i8* %180)
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @cleanup_until(i8* %182)
  br label %217

184:                                              ; preds = %169
  %185 = load i8*, i8** %5, align 8
  %186 = load i8*, i8** @STRKUSER, align 8
  %187 = call i64 @eq(i8* %185, i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = load i32, i32* @STRuser, align 4
  %191 = load i8*, i8** %6, align 8
  %192 = call i32 @quote(i8* %191)
  %193 = load i32, i32* @VAR_READWRITE, align 4
  %194 = call i32 @setv(i32 %190, i32 %192, i32 %193)
  %195 = load i8*, i8** %6, align 8
  %196 = call i32 @cleanup_ignore(i8* %195)
  %197 = load i8*, i8** %6, align 8
  %198 = call i32 @cleanup_until(i8* %197)
  br label %217

199:                                              ; preds = %184
  %200 = load i8*, i8** %5, align 8
  %201 = load i8*, i8** @STRKGROUP, align 8
  %202 = call i64 @eq(i8* %200, i8* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load i32, i32* @STRgroup, align 4
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @quote(i8* %206)
  %208 = load i32, i32* @VAR_READWRITE, align 4
  %209 = call i32 @setv(i32 %205, i32 %207, i32 %208)
  %210 = load i8*, i8** %6, align 8
  %211 = call i32 @cleanup_ignore(i8* %210)
  %212 = load i8*, i8** %6, align 8
  %213 = call i32 @cleanup_until(i8* %212)
  br label %217

214:                                              ; preds = %199
  %215 = load i8*, i8** %6, align 8
  %216 = call i32 @cleanup_until(i8* %215)
  br label %217

217:                                              ; preds = %214, %204, %189, %174, %148, %141, %107, %99, %80, %15
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i32 @doprintenv(i8**, i32) #1

declare dso_local i32 @letter(i8 signext) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i64 @alnum(i8 signext) #1

declare dso_local i8* @globone(i8*, i32) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @tsetenv(i8*, i8*) #1

declare dso_local i64 @eq(i8*, i8*) #1

declare dso_local i32 @importpath(i8*) #1

declare dso_local i32 @dohash(i32*, i32*) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i64 @islocale_var(i8*) #1

declare dso_local i32 @ed_Init(...) #1

declare dso_local i32 @ed_InitNLSMaps(...) #1

declare dso_local i32 @ed_InitMaps(...) #1

declare dso_local i32 @setv(i32, i32, i32) #1

declare dso_local i32 @quote(i8*) #1

declare dso_local i32 @cleanup_ignore(i8*) #1

declare dso_local i8* @short2str(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @setNS(i32) #1

declare dso_local i8* @dcanon(i8*, i8*) #1

declare dso_local i32 @dtilde(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
