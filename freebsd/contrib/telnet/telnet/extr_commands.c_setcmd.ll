; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_setcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_setcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.setlist = type { i8*, i8*, i64*, i32 (i8*)* }
%struct.togglelist = type { i32*, i8*, i32 (i32)* }

@.str = private unnamed_addr constant [46 x i8] c"Format is 'set Name Value'\0A'set ?' for help.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@Setlist = common dso_local global %struct.setlist* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%-15s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"display help information\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"'%s': unknown argument ('set ?' for help).\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"'%s': ambiguous argument ('set ?' for help).\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Format is 'set togglename [on|off]'\0A'set ?' for help.\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s %s.\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Will\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Won't\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%s set to \22%s\22.\0A\00", align 1
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"%s character is '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @setcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setcmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.setlist*, align 8
  %8 = alloca %struct.togglelist*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %215

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @isprefix(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @isprefix(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %25, %19
  %32 = load %struct.setlist*, %struct.setlist** @Setlist, align 8
  store %struct.setlist* %32, %struct.setlist** %7, align 8
  br label %33

33:                                               ; preds = %46, %31
  %34 = load %struct.setlist*, %struct.setlist** %7, align 8
  %35 = getelementptr inbounds %struct.setlist, %struct.setlist* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.setlist*, %struct.setlist** %7, align 8
  %40 = getelementptr inbounds %struct.setlist, %struct.setlist* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.setlist*, %struct.setlist** %7, align 8
  %43 = getelementptr inbounds %struct.setlist, %struct.setlist* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %41, i8* %44)
  br label %46

46:                                               ; preds = %38
  %47 = load %struct.setlist*, %struct.setlist** %7, align 8
  %48 = getelementptr inbounds %struct.setlist, %struct.setlist* %47, i32 1
  store %struct.setlist* %48, %struct.setlist** %7, align 8
  br label %33

49:                                               ; preds = %33
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 @settogglehelp(i32 1)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %215

53:                                               ; preds = %25, %16
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call %struct.setlist* @getset(i8* %56)
  store %struct.setlist* %57, %struct.setlist** %7, align 8
  %58 = load %struct.setlist*, %struct.setlist** %7, align 8
  %59 = icmp eq %struct.setlist* %58, null
  br i1 %59, label %60, label %145

60:                                               ; preds = %53
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call %struct.togglelist* @GETTOGGLE(i8* %63)
  store %struct.togglelist* %64, %struct.togglelist** %8, align 8
  %65 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %66 = icmp eq %struct.togglelist* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @stderr, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 1
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %71)
  store i32 0, i32* %3, align 4
  br label %215

73:                                               ; preds = %60
  %74 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %75 = bitcast %struct.togglelist* %74 to i8*
  %76 = call i64 @Ambiguous(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %82)
  store i32 0, i32* %3, align 4
  br label %215

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %87 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %134

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %93, %90
  %100 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %101 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  store i32 1, i32* %102, align 4
  br label %116

103:                                              ; preds = %93
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 2
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %111 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  store i32 0, i32* %112, align 4
  br label %115

113:                                              ; preds = %103
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %215

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %99
  %117 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %118 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %133

121:                                              ; preds = %116
  %122 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %123 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %129 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %130 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %128, i8* %131)
  br label %133

133:                                              ; preds = %121, %116
  br label %134

134:                                              ; preds = %133, %85
  %135 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %136 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %135, i32 0, i32 2
  %137 = load i32 (i32)*, i32 (i32)** %136, align 8
  %138 = icmp ne i32 (i32)* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %141 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %140, i32 0, i32 2
  %142 = load i32 (i32)*, i32 (i32)** %141, align 8
  %143 = call i32 %142(i32 1)
  br label %144

144:                                              ; preds = %139, %134
  br label %213

145:                                              ; preds = %53
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 3
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %215

150:                                              ; preds = %145
  %151 = load %struct.setlist*, %struct.setlist** %7, align 8
  %152 = bitcast %struct.setlist* %151 to i8*
  %153 = call i64 @Ambiguous(i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @stderr, align 4
  %157 = load i8**, i8*** %5, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %159)
  store i32 0, i32* %3, align 4
  br label %215

161:                                              ; preds = %150
  %162 = load %struct.setlist*, %struct.setlist** %7, align 8
  %163 = getelementptr inbounds %struct.setlist, %struct.setlist* %162, i32 0, i32 3
  %164 = load i32 (i8*)*, i32 (i8*)** %163, align 8
  %165 = icmp ne i32 (i8*)* %164, null
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = load %struct.setlist*, %struct.setlist** %7, align 8
  %168 = getelementptr inbounds %struct.setlist, %struct.setlist* %167, i32 0, i32 3
  %169 = load i32 (i8*)*, i32 (i8*)** %168, align 8
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 2
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 %169(i8* %172)
  %174 = load %struct.setlist*, %struct.setlist** %7, align 8
  %175 = getelementptr inbounds %struct.setlist, %struct.setlist* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.setlist*, %struct.setlist** %7, align 8
  %178 = getelementptr inbounds %struct.setlist, %struct.setlist* %177, i32 0, i32 2
  %179 = load i64*, i64** %178, align 8
  %180 = bitcast i64* %179 to i8*
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %176, i8* %180)
  br label %210

182:                                              ; preds = %161
  %183 = load i8**, i8*** %5, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %182
  %189 = load i8**, i8*** %5, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 2
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @special(i8* %191)
  store i32 %192, i32* %6, align 4
  br label %195

193:                                              ; preds = %182
  %194 = load i32, i32* @_POSIX_VDISABLE, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %193, %188
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct.setlist*, %struct.setlist** %7, align 8
  %199 = getelementptr inbounds %struct.setlist, %struct.setlist* %198, i32 0, i32 2
  %200 = load i64*, i64** %199, align 8
  store i64 %197, i64* %200, align 8
  %201 = load %struct.setlist*, %struct.setlist** %7, align 8
  %202 = getelementptr inbounds %struct.setlist, %struct.setlist* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.setlist*, %struct.setlist** %7, align 8
  %205 = getelementptr inbounds %struct.setlist, %struct.setlist* %204, i32 0, i32 2
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* %206, align 8
  %208 = call i8* @control(i64 %207)
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %203, i8* %208)
  br label %210

210:                                              ; preds = %195, %166
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212, %144
  %214 = call i32 (...) @slc_check()
  store i32 1, i32* %3, align 4
  br label %215

215:                                              ; preds = %213, %155, %148, %113, %78, %67, %49, %14
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprefix(i8*, i8*) #1

declare dso_local i32 @settogglehelp(i32) #1

declare dso_local %struct.setlist* @getset(i8*) #1

declare dso_local %struct.togglelist* @GETTOGGLE(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @Ambiguous(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @special(i8*) #1

declare dso_local i8* @control(i64) #1

declare dso_local i32 @slc_check(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
