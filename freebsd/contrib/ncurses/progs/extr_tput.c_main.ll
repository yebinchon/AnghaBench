; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tput.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tput.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@prg_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ST:V\00", align 1
@FALSE = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@is_reset = common dso_local global i64 0, align 8
@is_init = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"No value for $TERM and no -T specified\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"unknown terminal \22%s\22\00", align 1
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @TRUE, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @_nc_rootname(i8* %23)
  store i8* %24, i8** @prg_name, align 8
  %25 = call i32 @check_aliases(i8* %24)
  %26 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %47, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 @getopt(i32 %28, i8** %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %30, i32* %9, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %45 [
    i32 83, label %34
    i32 84, label %36
    i32 86, label %40
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %8, align 4
  br label %47

36:                                               ; preds = %32
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @use_env(i32 %37)
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** %6, align 8
  br label %47

40:                                               ; preds = %32
  %41 = call i32 (...) @curses_version()
  %42 = call i32 @puts(i32 %41)
  %43 = load i32, i32* @EXIT_SUCCESS, align 4
  %44 = call i32 @ExitProgram(i32 %43)
  br label %45

45:                                               ; preds = %32, %40
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %36, %34
  br label %27

48:                                               ; preds = %27
  %49 = load i64, i64* @is_reset, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* @is_init, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51, %48
  %55 = load i64, i64* @optind, align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* @optind, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i64, i64* @optind, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  %66 = load i64, i64* @optind, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66
  store i8** %68, i8*** %5, align 8
  br label %69

69:                                               ; preds = %60, %54
  %70 = load i8*, i8** @prg_name, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %70, i8** %72, align 8
  br label %82

73:                                               ; preds = %51
  %74 = load i64, i64* @optind, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %4, align 4
  %79 = load i64, i64* @optind, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 %79
  store i8** %81, i8*** %5, align 8
  br label %82

82:                                               ; preds = %73, %69
  %83 = load i8*, i8** %6, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85, %82
  %91 = call i32 (i32, i8*, ...) @quit(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @STDOUT_FILENO, align 4
  %95 = call i64 @setupterm(i8* %93, i32 %94, i32* %7)
  %96 = load i64, i64* @OK, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 (i32, i8*, ...) @quit(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %98, %92
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = icmp sle i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i64, i64* @is_reset, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* @is_init, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 (...) @usage()
  br label %118

118:                                              ; preds = %116, %113, %110, %107
  %119 = load i32, i32* %4, align 4
  %120 = load i8**, i8*** %5, align 8
  %121 = call i64 @tput(i32 %119, i8** %120)
  %122 = trunc i64 %121 to i32
  %123 = call i32 @ExitProgram(i32 %122)
  br label %124

124:                                              ; preds = %118, %104
  br label %125

125:                                              ; preds = %189, %124
  %126 = trunc i64 %18 to i32
  %127 = load i32, i32* @stdin, align 4
  %128 = call i64 @fgets(i8* %20, i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %190

130:                                              ; preds = %125
  store i32 0, i32* %14, align 4
  store i8* %20, i8** %15, align 8
  br label %131

131:                                              ; preds = %168, %130
  %132 = load i8*, i8** %15, align 8
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %131
  %136 = load i8*, i8** %15, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i32 @UChar(i8 signext %137)
  %139 = call i64 @isspace(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i8*, i8** %15, align 8
  store i8 0, i8* %142, align 1
  br label %167

143:                                              ; preds = %135
  %144 = load i8*, i8** %15, align 8
  %145 = icmp eq i8* %144, %20
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %15, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 -1
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %146, %143
  %153 = load i8*, i8** %15, align 8
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %156
  store i8* %153, i8** %157, align 8
  %158 = load i32, i32* %14, align 4
  %159 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 0
  %160 = call i64 @SIZEOF(i8** %159)
  %161 = trunc i64 %160 to i32
  %162 = sub nsw i32 %161, 1
  %163 = icmp sge i32 %158, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  br label %171

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165, %146
  br label %167

167:                                              ; preds = %166, %141
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** %15, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %15, align 8
  br label %131

171:                                              ; preds = %164, %131
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %173
  store i8* null, i8** %174, align 8
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %171
  %178 = load i32, i32* %14, align 4
  %179 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 0
  %180 = call i64 @tput(i32 %178, i8** %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i32, i32* %12, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 4, i32* %12, align 4
  br label %186

186:                                              ; preds = %185, %182
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %189

189:                                              ; preds = %186, %177, %171
  br label %125

190:                                              ; preds = %125
  %191 = load i32, i32* %12, align 4
  %192 = call i32 @ExitProgram(i32 %191)
  %193 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_aliases(i8*) #2

declare dso_local i8* @_nc_rootname(i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @use_env(i32) #2

declare dso_local i32 @puts(i32) #2

declare dso_local i32 @curses_version(...) #2

declare dso_local i32 @ExitProgram(i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @quit(i32, i8*, ...) #2

declare dso_local i64 @setupterm(i8*, i32, i32*) #2

declare dso_local i64 @tput(i32, i8**) #2

declare dso_local i64 @fgets(i8*, i32, i32) #2

declare dso_local i64 @isspace(i32) #2

declare dso_local i32 @UChar(i8 signext) #2

declare dso_local i64 @SIZEOF(i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
