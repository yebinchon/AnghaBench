; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_find_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exec.c_find_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biltins = type { i32 }
%struct.varent = type { i8** }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"where: / in command makes no sense\0A\00", align 1
@aliases = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%S is aliased to \00", align 1
@bfunc = common dso_local global %struct.biltins* null, align 8
@nbfunc = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"%S is a shell built-in\0A\00", align 1
@STRpath = common dso_local global i32 0, align 4
@havhash = common dso_local global i64 0, align 8
@STRslash = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@STRdot = common dso_local global i32 0, align 4
@xhash = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%S/\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%S\0A\00", align 1
@STRautorehash = common dso_local global i32 0, align 4
@hashdebug = common dso_local global i32 0, align 4
@nt_bfunc = common dso_local global %struct.biltins* null, align 8
@nt_nbfunc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_cmd(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.varent*, align 8
  %7 = alloca %struct.biltins*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @short2str(i8* %19)
  %21 = call i64 @any(i32 %20, i8 signext 47)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i8* @CGETS(i32 13, i32 7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @xprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %3, align 4
  br label %181

27:                                               ; preds = %18, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = call %struct.varent* @adrof1(i8* %31, i32* @aliases)
  %33 = icmp ne %struct.varent* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call %struct.varent* @adrof1(i8* %35, i32* @aliases)
  store %struct.varent* %36, %struct.varent** %6, align 8
  %37 = icmp ne %struct.varent* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = call i8* @CGETS(i32 13, i32 8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @xprintf(i8* %39, i8* %40)
  %42 = load %struct.varent*, %struct.varent** %6, align 8
  %43 = getelementptr inbounds %struct.varent, %struct.varent* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.varent*, %struct.varent** %6, align 8
  %48 = getelementptr inbounds %struct.varent, %struct.varent* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = call i32 @blkpr(i8** %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = call i32 @xputchar(i8 signext 10)
  store i32 1, i32* %14, align 4
  br label %53

53:                                               ; preds = %51, %34
  br label %54

54:                                               ; preds = %53, %30, %27
  %55 = load %struct.biltins*, %struct.biltins** @bfunc, align 8
  store %struct.biltins* %55, %struct.biltins** %7, align 8
  br label %56

56:                                               ; preds = %81, %54
  %57 = load %struct.biltins*, %struct.biltins** %7, align 8
  %58 = load %struct.biltins*, %struct.biltins** @bfunc, align 8
  %59 = load i64, i64* @nbfunc, align 8
  %60 = getelementptr inbounds %struct.biltins, %struct.biltins* %58, i64 %59
  %61 = icmp ult %struct.biltins* %57, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.biltins*, %struct.biltins** %7, align 8
  %65 = getelementptr inbounds %struct.biltins, %struct.biltins* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @str2short(i32 %66)
  %68 = call i64 @eq(i8* %63, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  store i32 1, i32* %14, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = call i8* @CGETS(i32 13, i32 9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @xprintf(i8* %74, i8* %75)
  br label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %3, align 4
  br label %181

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.biltins*, %struct.biltins** %7, align 8
  %83 = getelementptr inbounds %struct.biltins, %struct.biltins* %82, i32 1
  store %struct.biltins* %83, %struct.biltins** %7, align 8
  br label %56

84:                                               ; preds = %56
  %85 = load i32, i32* @STRpath, align 4
  %86 = call %struct.varent* @adrof(i32 %85)
  store %struct.varent* %86, %struct.varent** %6, align 8
  %87 = icmp eq %struct.varent* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %3, align 4
  br label %181

90:                                               ; preds = %84
  %91 = load i64, i64* @havhash, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @hashname(i8* %94)
  br label %97

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %93
  %98 = phi i32 [ %95, %93 ], [ 0, %96 ]
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* @STRslash, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = call i8* @Strspl(i32 %99, i8* %100)
  store i8* %101, i8** %9, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* @xfree, align 4
  %104 = call i32 @cleanup_push(i8* %102, i32 %103)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %175, %97
  %106 = load %struct.varent*, %struct.varent** %6, align 8
  %107 = getelementptr inbounds %struct.varent, %struct.varent* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  store i8** %108, i8*** %8, align 8
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %157, %105
  %110 = load i8**, i8*** %8, align 8
  %111 = icmp ne i8** %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i8**, i8*** %8, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br label %116

116:                                              ; preds = %112, %109
  %117 = phi i1 [ false, %109 ], [ %115, %112 ]
  br i1 %117, label %118, label %162

118:                                              ; preds = %116
  %119 = load i64, i64* @havhash, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %118
  %122 = load i8**, i8*** %8, align 8
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* @STRdot, align 4
  %125 = call i64 @eq(i8* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @hash(i32 %128, i32 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* @xhash, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @bit(i32 %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %127
  br label %157

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %121, %118
  %138 = load i8**, i8*** %8, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = call i32 @executable(i8* %139, i8* %140, i32 0)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %137
  store i32 1, i32* %14, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load i8**, i8*** %8, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %149)
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %151)
  br label %155

153:                                              ; preds = %144
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %3, align 4
  br label %181

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %137
  br label %157

157:                                              ; preds = %156, %135
  %158 = load i8**, i8*** %8, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 1
  store i8** %159, i8*** %8, align 8
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  br label %109

162:                                              ; preds = %116
  %163 = load i32, i32* %5, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* @STRautorehash, align 4
  %167 = call %struct.varent* @adrof(i32 %166)
  %168 = icmp ne %struct.varent* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %169
  %173 = load i64, i64* @havhash, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 @dohash(i32* null, i32* null)
  store i32 1, i32* %11, align 4
  br label %105

177:                                              ; preds = %172, %169, %165, %162
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 @cleanup_until(i8* %178)
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %177, %153, %88, %77, %23
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i64 @any(i32, i8 signext) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i32 @xprintf(i8*, i8*) #1

declare dso_local i8* @CGETS(i32, i32, i8*) #1

declare dso_local %struct.varent* @adrof1(i8*, i32*) #1

declare dso_local i32 @blkpr(i8**) #1

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i64 @eq(i8*, i32) #1

declare dso_local i32 @str2short(i32) #1

declare dso_local %struct.varent* @adrof(i32) #1

declare dso_local i32 @hashname(i8*) #1

declare dso_local i8* @Strspl(i32, i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @hash(i32, i32) #1

declare dso_local i32 @bit(i32, i32) #1

declare dso_local i32 @executable(i8*, i8*, i32) #1

declare dso_local i32 @dohash(i32*, i32*) #1

declare dso_local i32 @cleanup_until(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
